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
       // console.log(res);
        $("#dni").val(res.dni),
        $("#apellido").val(res.apellido),
        $("#nombre").val(res.nombre),
        $("#celular").val(res.telefono),
        $("#direccion").val(res.Direccion),

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
        $("#region").val(res.region),
        $("#provincia").val(res.provincia),
        $("#distrito").val(res.distrito),
        $("#sexo").val(res.Sexo),
        $("#btn-actualizar").attr("data-id", res.id),
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
		
        <td width="10"><a style='color:white' class="btn btn-success" id="btn-editar" data-toggle="modal" data-target="#form-editar"  data-editar=${id}>Editar</a></td>
        <td width="10"><button  class="btn btn-danger"  id="btn-eliminar"  data-eliminar="${id}">Eliminar</button></td>			
		<td width="10"><a style='color:white' class='btn btn-secondary' href='.../../../generate-pdf/pdf-datos.php?id=${id}'   id='btn-pdf' " >PDF</a></td>`);
        $('#form-editar').modal('hide');


    })

})