/*

$(document).ready(function(){
    //pagination();
})  
function pagination(){

    $('#pagination-container').pagination({
         pageSize: 5,
        dataSource: function(done){
            $.ajax({
                url: '../../ajax/paginacion.php',
                method: 'POST',
                dataType: 'JSON',
            }).done(function(data){
                if(data.res=="No"){  //<--ese NO duda
                    var result=[]; 
                 }else{
                     let total=parseInt(data[0]['Total']) + 1;
                     var result=[]; 
                     for (var i = 1; i < total; i++) {
                        result.push(i);
                     }
                }
                done(result);
            })
        },
        callback: function(data, pagination){
            if(pagination.totalNumber>0){
                obtenerCursos(pagination.pageNumber);
            }else{
                // $('#table-syllabus tbody').html(`<tr><td colspan="100%" align='center'>SIN REGISTROS</td></tr>`);
            }
        },header: function (currentPage, totalPage, totalNumber) {
            return "<div class='pagination-header'>Total:&nbsp;<p class='mdl-typography--body-2 m-0 p-1 main-content rounded border'>" +
                totalNumber +
                "</p></div>";
        },
    })
}
function obtenerCursos(pag){
    $.ajax({
        url:'../../ajax/paginacionLista.php',
        method:'POST',
        data:{txtpag:pag},      
    }).done(function(res){

    })

    
}


*/