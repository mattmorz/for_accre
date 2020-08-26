
var STORED_FILES = [];
var STORED_IMG = [];
var FORM_DATA_SCANNED = [];
var SAVED_IMG = [];
var controlNums = [];
var SELECTED_FILES = [];
feather.replace();

var table2 = $('#myTable').DataTable({
    serverSide: true,
    processing: true,
    //dom: 'trip',
    lengthMenu: [[10, 25, 50, -1], [10, 25, 50, "All"]],
    order: [[ 6, "desc" ]],
    ajax: {
        url: '/getFiles',
        type: "GET"
    },
    rowCallback: function( row, data ) {
      
    },
    columnDefs: [
        {
          'targets': 0,
          'searchable': false,
          'orderable': false,
          'render': function (data, type, row){
              var file_id = "'"+row.id+"'";
              var id = "" + row.id; 
              if(controlNums.indexOf(id) != -1){
              return  '<div class="form-check">'+
                      '<input type="checkbox" class="form-check-input updateMe" onclick="updateMeF(this,'+file_id+');" name="checkboxname" checked> '+
                      '</div>';
              }else{
                return  '<div class="form-check">'+
                        '<input type="checkbox" class="form-check-input updateMe" onclick="updateMeF(this,'+file_id+');" name="checkboxname">'+
                        '</div>';
              }
          },
          'visible': $('#isAllowed').val() === 'True' ? true : false
      },
      {
        'targets': 1,
        'render': function (data, type, row){
            var file_name = row.file_name;
            var lnk = "/media/"+file_name+"";
            return  '<a href="'+lnk+'" title="'+file_name+'" target="_blank">'+file_name.substring(0,20)+"...</>";
        },

      },
      {
        'targets': 3,
        'render': function (data, type, row){
            var description = row.description;
            return  description.substring(0,200)+"...";
        }
      },
      {
        'targets': 4,
        'orderable': false,
        'render': function (data, type, row){
            var tags = row.tagged_items__tag__code;
            return  tags;
        }
      },{
        'targets': 5,
        'visible': $('#isAllowed').val() === 'True' ? true : false
      },
      {
        'targets':[6,7],
        'searchable': false,
        'orderable': true,
        'visible':false,
      },
    ],
    columns: [
        { "data": null},
        { "data": 'file_name'},
        { "data": 'date_created'},
        { "data": 'description', "width": '40%'},
        { "data": 'tagged_items__tag__code', "width": '20%'},
        { "data": 'uploaded_by'},
        { "data": 'uploaded_at'},
        { "data": 'id'},
    ],
});

/* START GENERATE RANDOM ID
 * this function generates random id used in file naming
*/
function makeid(length) {
    var result           = '';
    var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    var charactersLength = characters.length;
    for ( var i = 0; i < length; i++ ) {
       result += characters.charAt(Math.floor(Math.random() * charactersLength));
    }
    return result.toUpperCase();
 }
//END GENERATE RANDOM ID


// ************************ Drag and drop ***************** //
let dropArea = document.getElementById("drop-area")
// Prevent default drag behaviors
;['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
  dropArea.addEventListener(eventName, preventDefaults, false)   
  document.body.addEventListener(eventName, preventDefaults, false)
})

// Highlight drop area when item is dragged over it
;['dragenter', 'dragover'].forEach(eventName => {
  dropArea.addEventListener(eventName, highlight, false)
})

;['dragleave', 'drop'].forEach(eventName => {
  dropArea.addEventListener(eventName, unhighlight, false)
})

// Handle dropped files
dropArea.addEventListener('drop', handleDrop, false)
function preventDefaults (e) {
  e.preventDefault()
  e.stopPropagation()
}

function highlight(e) {
  dropArea.classList.add('highlight')
}

function unhighlight(e) {
  dropArea.classList.remove('active')
}

function handleDrop(e) {
  var dt = e.dataTransfer
  var files = dt.files
  handleFiles(files)
}

let uploadProgress = []
let progressBar = document.getElementById('progress-bar')

function initializeProgress(numFiles) {
  progressBar.value = 0
  uploadProgress = []

  for(let i = numFiles; i > 0; i--) {
    uploadProgress.push(0)
  }
}

function updateProgress(fileNumber, percent) {
  uploadProgress[fileNumber] = percent
  let total = uploadProgress.reduce((tot, curr) => tot + curr, 0) / uploadProgress.length
  progressBar.value = total
}

var previewFiles = [];
var filesUploadLen = 0;
var newFile = [];
function handleFiles(files) {
  var fileTypes = ['PDF','pdf'];
  var files = [...files];
  files.map(p =>
    {
        //var iid = makeid(8);    
        var origFileName = p.name.split(/\.(?=[^\.]+$)/);
        var fileExt =  origFileName[1];
        //var newFileName = iid+'_'+origFileName[0].replace(/[^A-Z0-9]+/ig, "_")+'.'+fileExt; 
        var newFileName = origFileName[0].replace(/[^A-Z0-9]+/ig, "_")+'.'+fileExt;           
        if (fileTypes.includes(fileExt)){
            var blob = new File([p],newFileName,{type: p.type,prog: 0});
            newFile.push(blob); 
        }else{
            $('#loadingStatus').text('Type of file not allowed. PDF file only.');
        }
    }
  );

  filesUploadLen = newFile.length;
  if (filesUploadLen <=10){
    console.log('newFilen',newFile);
    $('#filesToUpload').empty();
    $('#progress-bar').hide();
    $.each(newFile, function(key, value) {
        $('ul#filesToUpload').append(
            '<li class="list-group-item" data-key="'+key+'">'+value.name+'  <span class="text-muted">   '+parseFloat(value.size/1000000).toFixed(2)+'MB</span> <span id="'+key+'_loading" class="float-right"></span></li>'
        )
    })
 
    $('#bntUploadFiles').click(function(){
        console.log('newFIle lent', newFile.length);
        initializeProgress(newFile.length)
        for(var k=0;k<newFile.length;k++){
            console.log('newFIle, upload')
            uploadFile(newFile[k],k);
            if(k==newFile.length-1){
                console.log('reset');
                previewFiles = [];
                $('#fileElem').val('');
                $('#frmForm').trigger("reset");
                newFile = [];
            }
        }
    })
   
  }else{
    $('#loadingStatus').text('Upload at most 10 file at a time.');
  }

}

function previewFile(files) {
  /*  
  var ii = STORED_FILES.length + 1;
    var sorted = files.sort((a,b) => (a.order > b.order) ? 1 : ((b.order > a.order) ? -1 : 0)); 
    $.each(sorted, function(key,value){
        var idx = ii + value.order; 
        var listID = "File" + idx;
        var imgPath = value.filename;
    
        //to keep track of the files
        FORM_DATA_SCANNED.push({
            'name': listID,
            'filename' : imgPath,
        });
        SAVED_IMG.push(imgPath);
        STORED_IMG.push(imgPath);
        STORED_FILES.push({
              'name': listID,
              'filename' : imgPath,
              'order': idx-1,
              'extracted_text': null
         });
        added = true; 
    })
    */
    table2.ajax.reload();
    console.log('datatables reload');
    //console.log('Showing previewFIle now, index start ',+ii+', ends '+STORED_FILES.length);
}

function uploadFile(file, i) {
    var fffdata = new FormData();
    var token =  $('#token').data('csrf-token');
    var url = '/upload'
    var xhr = new XMLHttpRequest()
    xhr.open('POST', url, true)
    xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest')

    // Update progress (can be used to show progress indicator)
    xhr.upload.addEventListener("progress", function(e) {
        $('#progress-bar').show();
        var prog = parseFloat(e.loaded * 100.0 / e.total).toFixed(2);
        $('#'+i+'_loading').text(prog+'%');
        updateProgress(i, (e.loaded * 100.0 / e.total) || 100)
    })

    xhr.addEventListener('readystatechange', function(e) {
        if (xhr.readyState == 4 && xhr.status == 200) {
            updateProgress(i, 100) // <- Add this
            var is_response = JSON.parse(xhr.response);
            if(is_response.is_uploaded){
                table2.ajax.reload();
                previewFiles.push(is_response);
                console.log('previewFiles Length vs filesUploadLen',previewFiles.length,filesUploadLen);
                if(previewFiles.length == parseInt(filesUploadLen)){
                    console.log('show previewFiles now...');
                    previewFile(previewFiles);
                }
            }
            
        }
        else if (xhr.readyState == 4 && xhr.status != 200) {
            
        }
    })
    
    fffdata.append("order", i);	        
    fffdata.append("image", file);	            //store the blob in form data by appending
    fffdata.append("fname", file.name);           //store the filename in form data	
    fffdata.append("csrfmiddlewaretoken",token)
    xhr.send(fffdata)
}


$('#frmBulkUpdate').submit(function(e){
  e.preventDefault();
  if($('#verifyMe').is(':checked')){
      $.ajax({
        type : $(this).attr('method'),
        data: $(this).serialize()+"&controlNums=" + JSON.stringify(controlNums),
        dataType:'json',
        url : $(this).attr('action'),
        beforeSend: function(){
            $('#sPin').show();
        },
        success : function(response) {
          $('#sPin').hide();
          console.log(response.is_updated);
          table2.ajax.reload();
        },
        error: function(e){
            $('#sPin').hide();
            alert(e.statusText);
        }
    });  
  }else{
      alert('Please verify by checking Proceed.')
  }

})

$('#frmBulkdelete').submit(function(e){
  e.preventDefault();
  if( $('#id_verify_delete').is(':checked'))
  {
      $.ajax({
          type : $(this).attr('method'),
          data: $(this).serialize()+"&controlNums=" + JSON.stringify(controlNums),
          dataType:'json',
          url : $(this).attr('action'),
          beforeSend: function(){
              $('#sPin1').show(); 
          },
          success : function(response) {
              $('#sPin1').hide();
              table2.ajax.reload();
              controlNums = [];
              SELECTED_FILES = [];
              $('#docsDelete').html(controlNums.length);
              $('#toBeDeletedFiles').html('');
          },
          error: function(e){
              $('#sPin1').hide();
              if(e.status === 404){
                alert('You are not allowed to delete file.');
              }
             
          }
      });  

  }else{
      alert('Please verify by checking Proceed.')
  }

})



$('#frmRemoveTag').submit(function(e){
  e.preventDefault();
  if( $('#id_verify_delete1').is(':checked') && $('#tag') !== '')
  {
      $.ajax({
          type : $(this).attr('method'),
          data: $(this).serialize()+"&controlNums=" + JSON.stringify(controlNums),
          dataType:'json',
          url : $(this).attr('action'),
          beforeSend: function(){
              $('#sPin1').show(); 
          },
          success : function(response) {
              $('#sPin1').hide();
              table2.ajax.reload();
              $('#toBeRemoveTags').html('');
              $('#tag').html('')
          },
          error: function(e){
              $('#sPin1').hide();
              if(e.status === 404){
                alert('You are not allowed to delete file.');
              }
             
          }
      });  

  }else{
      alert('Please verify by checking Proceed.')
  }

})



function updateMeF(that,controlNum){
  var selected_file = $(that).closest('td').next().find('a').attr('title');
  //var description =  $(that).closest('td')
  if($(that).is(':checked')){
      controlNums.push(controlNum);
      SELECTED_FILES.push(selected_file);
  }else{
      var idx = controlNums.indexOf(controlNum);
      var idx1 = SELECTED_FILES.indexOf(selected_file);
      controlNums.splice(idx,1)
      SELECTED_FILES.splice(idx1,1)
  }
  console.log('controlNums',controlNums);
  console.log('SELECTED_FILES',SELECTED_FILES);
  $('#docsUpdate').html(controlNums.length);
  $('#docsDelete').html(controlNums.length);
 
  if (controlNums.length > 0){
      $('#btnBulkUpdate').attr("disabled", false);
      $('#btnBulkDelete').attr("disabled", false);
  }else{
      $('#btnBulkUpdate').attr("disabled", true);
      $('#btnBulkDelete').attr("disabled", true);
  }

  if(SELECTED_FILES.length ==1){
    //$('#description').val();
    //s$('#date_created').val();
  }

}

$(document).ready(function(){
  $('#btnBulkUpdate').attr("disabled", true);
  $('#btnBulkDelete').attr("disabled", true);
  $('#btnBulkUpdate').click(function(){

    var elm = '';
    for(var i = 0; i < SELECTED_FILES.length; i++){
      elm+='<span class="badge badge-info mr-1">'+SELECTED_FILES[i]+'</span>';
    }
    $('#toBeUpdatedFiles').html(elm);


  })
  $('#btnBulkDelete').click(function(){
    var elm = '';
    for(var i = 0; i < SELECTED_FILES.length; i++){
      elm+='<span class="badge badge-info mr-1">'+SELECTED_FILES[i]+'</span>';
    }
    $('#toBeDeletedFiles').html(elm)

  })

  $('.js-data-example-ajax').select2({
    placeholder: "Type Code or Area description",
    ajax: {
      url: '/select2/fetch_items/accreapp/taggedwhatever/tag/',
      dataType: 'json',
    }
  });

  $('#myInputTextField').keyup(function(){
    table2.search($(this).val()).draw() ;
  })

  $('#viewPDF').click(function(){
    $('#myPDF').html(' ');
  })


  $('#staticBackdrop').on('shown.bs.modal', function (e) {
    //filenames = [];
    $.ajax({
        type : 'GET',
        data: {
          'tag': table2.search()
        },
        dataType:'json',
        url : '/generate_pdf',
        beforeSend: function(){
            $('#sPin2').show(); 
        },
        success : function(response) {
            $('#sPin2').hide();
            $('#staticBackdropLabel').text(response.tag)
            var files = response.files;
            var files_length = files.length;
            for(var i=0; i<files_length; i++){
              var tags = files[i].tags.toString();
              $('#myPDF').append('<h6>'+files[i].file_name+'</h6><p>Tags: '+tags+'<embed src="/media/'+files[i].file_name+'" frameborder="0" width="100%" height="500px"></embed>');
            }
            
        },
        error: function(e){
            $('#sPin2').hide();
            if(e.status === 500){
              $('#staticBackdropLabel').text('Oooops!')
               $('#myPDF').html('<h4 class="text-danger"> Error, no file for this tag.</h4>');
            }
           
        }
    }); 
  })


  $('#staticBackdrop').on('hidden.bs.modal', function (e) {
      $('#staticBackdropLabel').text(' ');
  })

})

$(document).on('click', '.forFilter', function () {
  var tag = $(this).attr('data-tag');
  table2.search(tag.trim()).draw() ;

})

$(document).on('click', '.tagtag', function () {
  event.stopImmediatePropagation();
  $('#tag').val($(this).text());
  var file = $(this).closest('td').prevUntil('a').find('a').attr('title');
  $('#file_name').val(file);
  $('#toBeRemoveTags').html('Remove tag <span class="badge badge-success mr-1">'+$(this).text()+'</span>on <strong>'+file+'</strong>?')

})