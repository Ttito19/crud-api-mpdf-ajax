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
                            <td width="10"><a style='color:white' class="btn btn-success" id="btn-editar" data-toggle="modal" data-target="#form-editar"  data-editar="${val.id}">Editar</a></td>			
                            <td width="10"><button class="btn btn-danger"  id="btn-eliminar" data-eliminar="${val.id}" >Eliminar</button></td>	
                            <td width="10"><a style='color:white' class='btn btn-secondary' href='.../../../generate-pdf/pdf-datos.php?id=${val.id}' id='btn-pdf' " >PDF</a></td>			
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
                                <td width="10"><a  style='color:white' class="btn btn-success" id="btn-editar" data-toggle="modal" data-target="#form-editar"  data-editar="${val.id}">Editar</a></td>			
                                <td width="10"><button class="btn btn-danger"  id="btn-eliminar" data-eliminar="${val.id}" >Eliminar</button></td>	
                                <td width="10"><a style='color:white' class='btn btn-secondary' href='.../../../generate-pdf/pdf-datos.php?id=${val.id}' id='btn-pdf' " >PDF</a></td>			
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



