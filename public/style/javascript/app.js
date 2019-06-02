//REGISTRAR
//function registrar() {

//$(document).on("submit","#form",function(e){})  
    $("#btn-enviar").click(function(e){
      //  console.log("sasds")
        e.preventDefault(); // no es obligatorio ya que no hay una accion que te va a redirigir, pero su funcion es cancelar la redireccion de la pagina 
        //funciona cuando esta dentro de un formulario
        //evita la redireccion del elemento
    var enviar = $("#form").serialize();
    // console.log(enviar);

    // var dni = $("#modal-registrar #dni").val();
    // var apellido = $("#modal-registrar #apellido").val();
    // var nombre = $("#modal-registrar #nombre").val();
    // var celular = $("#modal-registrar #celular").val();
    // var direccion = $("#modal-registrar #direccion").val();
    // var departamento = $("#modal-registrar #departamento").val();
    // var provincia = $("#modal-registrar #provincia").val();
    // var distrito = $("#modal-registrar #distrito").val();
    // var sexo = $("#modal-registrar #sexo").val();

    $.ajax({
        url: '../../ajax/confirm.php',
        method: 'POST',
        data: enviar,
     //   dataType: 'json'
    }).done((res) => {
        var res2 = res;
        console.log(res2);
        //if (res2.id > 0) {
            if(res2==true){
            // console.log("bueno");
            alertify.success('Registrado Correctamente');
            window.location.replace('../../app/views/table-search.php');
      /*      $("#list").append(`
   <td width="10">${res2.id}</td>
   <td width="10">${res2.dni}</td>
   <td width="10">${res2.apellido}</td>
   <td width="10">${res2.nombre}</td>
   <td width="10">${res2.telefono}</td>
   <td width="10">${res2.Direccion}</td>
   <td width="10">${res2.idDepa}</td>
   <td width="10">${res2.idProv}</td>
   <td width="10">${res2.idDist}</td>
   <td width="10">${res2.Sexo}</td>
           
   <td width="10"><a  class="btn btn-success" id="btn-editar" data-toggle="modal" data-target="#form-editar"  data-editar=${res2.id}>Editar</a></td>			
   <td width="10"><button  class="btn btn-danger"  id="btn-eliminar"  data-eliminar="${res2.id}">Eliminar</button></td>`);
            // setTimeout(regis,2500)*/

        } else {

            alertify.error('Error al registrar');

        }


    })
})
/*
$(document).on("click", "btn-enviar", function(e) {
    e.preventDefault(); // no es obligatorio ya que no hay una accion que te va a redirigir, pero su funcion es cancelar la redireccion de la pagina 
    //funciona cuando esta dentro de un formulario
    registrar();

});

*/


//LLAMAS POR EL ID TODO LOS CAMPOS PARA PODER EDITAR  
$(document).on("click", "#btn-editar", function() {
    $('#btn-actualizar').removeData();
    var editar = $(this).data("editar");
    // console.log(editar);
    $.ajax({
        url: '../../ajax/call-id.php',
        method: 'POST',
        data: {
            "id": editar
        },
        dataType: "JSON"
    }).done(function(res) {
        console.log(res);
        $("#dni").val(res.dni)
        $("#apellido").val(res.apellido)
        $("#nombre").val(res.nombre)
        $("#celular").val(res.telefono)
        $("#direccion").val(res.Direccion)

        //  var op1=   (res.idDepa==1)?"selected":""; 
        //  var op2=   (res.idDepa==2)?"selected":""; 
        //  var op3=  (res.idDepa==3)?"selected":""; 
        //  var op4=  (res.idDepa==4)?"selected":""; 

        // $("#departamento").html(`
        //     <option value="1" ${op1} >Lima</option>
        //     <option value="2" ${op2} >Cuzco</option>
        //     <option value="3" ${op3} >Puno</option>
        //     <option value="4" `+ op4 +`>Arequipa</option>
        // `)
        $("#departamento").val(res.idDepa);
        $("#provincia").val(res.idProv)
        $("#distrito").val(res.idDist)
        $("#sexo").val(res.Sexo)
        $("#btn-actualizar").attr("data-id", res.id)
        $("#nom").html("Editar a " + res.nombre)


        //     if(res==true){

        //     res.

        //   }else{
        //     console.log("mal");

        //   }

    })
})

//ACTAULIZAR LOS DATOS
$(document).on("click", "#btn-actualizar", function() {
    // console.log($(this).data("id"));
    var id = $(this).data("id");
    var dni = $("#dni").val();
    var apellido = $("#apellido").val();
    var nombre = $("#nombre").val();
    var celular = $("#celular").val();
    var direccion = $("#direccion").val();
    var departamento = $("#region").val();
    var provincia = $("#provincia").val();
    var distrito = $("#distrito").val();
    var sexo = $("#sexo").val();
    // va
    //  console.log(id);
    var enviar = {
        id: id,
        txtdni: dni,
        txtape: apellido,
        txtnom: nombre,
        txtcel: celular,
        txtdir: direccion,
        cboregion: departamento,
        cboprovincia: provincia,
        cbodistrito: distrito,
        txtsex: sexo
    }
    $.ajax({   
        url: '../../ajax/confirm.php',
        method: 'POST',
        data: enviar
    }).done(function(res) {
        alertify.success('Actualizado Correctamente ' + `${id}`);
        $("#tr-" + id).html(`
		<td width="10">${id}</td>
		<td width="10">${dni}</td>
		<td width="10">${apellido}</td>
		<td width="10">${nombre}</td>
		<td width="10">${celular}</td>
		<td width="10">${direccion}</td>
		<td width="10">${departamento}</td>
		<td width="10">${provincia}</td>
		<td width="10">${distrito}</td>
		<td width="10">${sexo}</td>
				
		<td width="10"><a  class="btn btn-success" id="btn-editar" data-toggle="modal" data-target="#form-editar"  data-editar=${id}>Editar</a></td>			
		<td width="10"><button  class="btn btn-danger"  id="btn-eliminar"  data-eliminar="${id}">Eliminar</button></td>`);
        $('#form-editar').modal('hide');


    })

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
        method:"post",
        dataType: 'json'
    }).done(function(data) {
       // alert("asdasd");
        $('#list').html("");
        var html = "";
        var arr = $.map(data, function (el) {
            return el
        });
        arr.forEach(element => {
            html +=`<tr id='tr-${element.id}'>"+
            "<td width='10'> ${element.id} </td>"+
            "<td width='10'> ${element.dni} </td>"+
            "<td width='10'>  ${element.apellido} </td>"+
            "<td width='10'>  ${element.nombre} </td>"+
            "<td width='10'>  ${element.telefono} </td>"+
            "<td width='10'>  ${element.Direccion} </td>"+
            "<td width='10'>  ${element.idDepa} </td>"+
            "<td width='10'>  ${element.idProv} </td>"+
            "<td width='10'>  ${element.idDist} </td>"+
            "<td width='10'>  ${element.Sexo} </td>"+   
            "<td width='10'><a  class='btn btn-success' id='btn-editar' data-toggle='modal' data-target='#form-editar'  data-editar=${element.id} ">Editar</a></td>"+		
            "<td width='10'><button class='btn btn-danger'  id='btn-eliminar' data-eliminar=${element.id } " >Eliminar</button></td></tr>`;
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

//CREAR UN FUNCION BUSCAR PARA PODER INVOCARLO
function buscarr(buscar1) {

    $.ajax({
        url: '../../ajax/buscar.php',
        method: 'POST',
        data: {
            txtnom: buscar1
        },
        dataType: 'json'

    }).done(function(res) {
        console.log(res)
        $("#list").html("")

        if (res[0] == "vacio") {
            $('#list').append('<tr><td align="center"  colspan="100%">Sin Resultados</td></tr>')
        } else {
            $.each(res, function(index, val) {
                $('#list').append(`
                        <tr id="tr-${val.id}">
                            <td width="10">${val.id}</td>
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


            })
        }
    })
}

//LLAMAR A LA FUNCION LISTAR Y BUSCAR
// $(document).on("click","#btn-buscar",function(){

//     var buscar=$('#nom').val(); 
//     if(buscar==""){
//         listar();

//     }else{
//         buscarr(buscar);

//     }

//   })


$(document).ready(function() {
    $("#nom").keydown(function() {
        var buscar1 = $("#nom").val();
        //  if(buscar1.length<3){


        $.ajax({
            url: '../../ajax/buscar.php',
            method: 'POST',
            data: {
                txtnom: buscar1
            },
            dataType: 'json'

        }).done(function(res) {
            //   console.log(res)
            $("#list").html("")

            if (res[0] == "vacio") {
                $('#list').append('<tr><td align="center"  colspan="100%">Sin Resultados</td></tr>')
            } else {
                $.each(res, function(index, val) {
                    $('#list').append(`
                            <tr id="tr-${val.id}">
                                <td width="10">${val.id}</td>
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


                })
            }
        })
        //  }



    })



})




//login

$(document).on("click", "#btn-sesión", function(e) {
    e.preventDefault();
    var correo = $("#correoLogin").val();
    var clave = $("#passwordLogin").val();
    var enviar = {
        txtcorreo: correo,
        txtclave: clave
    }
    $.ajax({
        url: '../../ajax/login.php',
        method: 'POST',
        data: enviar
    }).done(function(res) {

        var result = res;
        //   console.log(result)  
        if (result == "bien") {
            document.location.replace('../../app/views/table-search.php');
        } else {
            alertify.error('Correo o Clave incorrecta');
        }



    })
})