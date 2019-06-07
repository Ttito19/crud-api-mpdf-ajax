
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
                listar(pagination.pageNumber);
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
//CREAR UN FUNCION LISTAR PARA PODER INVOCARLO

function listar(pag) {
    $.ajax({
        url: '../../ajax/listar.php',
        data:{txtpag:pag},
        method:"POST",
        dataType: 'JSON'
    }).done(function(data) {
       // alert("asdasd");
        $('#list').html("");
        var html = "";
        var arr = $.map(data, function (el) {
            return el
        });
        arr.forEach(element => {
            html +=`<tr id='tr-${element.id}'>"
            "<td width='10'> ${element.id} </td>"
            "<td width='10'> ${element.dni} </td>"
            "<td width='10'>  ${element.apellido} </td>"
            "<td width='10'>  ${element.nombre} </td>"
            "<td width='10'>  ${element.telefono} </td>"
            "<td width='10'>  ${element.Direccion} </td>"
            "<td width='10'>  ${element.idDepa} </td>"
            "<td width='10'>  ${element.idProv} </td>"
            "<td width='10'>  ${element.idDist} </td>"
            "<td width='10'>  ${element.Sexo} </td>" 
            "<td width='10'><a  style='color:white' class='btn btn-success' id='btn-editar' data-toggle='modal' data-target='#form-editar'  data-editar="${element.id}">Editar</a></td>"	
            "<td width='10'><button class='btn btn-danger'  id='btn-eliminar' data-eliminar=${element.id}">Eliminar</button></td>"	
            "<td width='10'><a style='color:white'  class='btn btn-secondary' href='.../../../generate-pdf/pdf-datos.php?id=${element.id}' id='btn-pdf'>PDF</a></td></tr>`;
            $('#list').html(html);
            //html = "";
        });
      /*  $.each(res, function(index, val) {
            $('#list').append(`
                       <tr id="tr-${val.id}">
                           <td width="10">${val.id</td>
                           <td width="10">${val.dni}</td>
                           <td width="10">${val.apellido}</td>
                           <td width="10">${val.nombre}</td>
                           <td width="10">${val.telefono}</td>
                           <td width="10">${val.Direccion}</td>
                           <td width="10">${val.idDepa}</td>
                           <td width="10">${val.idProv}</td>
                           <td width="10">${val.idDist}</td>
                           <td width="10">${val.Sexo}</td>   
                           <td width="10"><a  class="btn btn-success" id="btn-editar" data-toggle="modal" data-target="#form-editar"  data-editar="${val.id}">Editar</a></td>			
                           <td width="10"><button class="btn btn-danger"  id="btn-eliminar" data-eliminar="${val.id}" >Eliminar</button></td>			
                       </tr>
                   
       
             `);
        })*/
    })
}
//LLAMAS A LA FUNCION LISTAR
$(document).ready(function() {
    // console.log("asdfasd")
    pagination();

})
