$("#btn-enviar").click(function(e){
    e.preventDefault();// no es obligatorio ya que no hay una accion que te va a redirigir, pero su funcion es cancelar la redireccion de la pagina 
 //funciona cuando esta dentro de un formulario
    var enviar=$("#form").serialize();
    // console.log(enviar);


    $.ajax({
        url:'../../ajax/confirm.php',
        method:'POST',
        data:enviar
    }).done((res)=>{
        var res2=res;
        if(res2==true){
    // console.log("bueno");
    alertify.success('Registrado Correctamente');
    function regis(){
        window.location.replace('../../app/views/table-search.php');
    }
    setTimeout(regis,2500)
        
        }else{
    
    alertify.error('Error al registrar');
          
        }
       
        
    })
});

$(document).on("click","#btn-editar",function(){
    var editar=$(this).data("editar");
    $.ajax({
        url:'../../ajax/call-id.php',
        method:'POST',
        data:{"id":  editar},
        dataType:"JSON"
    }).done(function(res){
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
        $("#btn-actualizar").attr("data-id",res.id)


    //     if(res==true){
      
    //     res.

    //   }else{
    //     console.log("mal");

    //   }

    })
})


$(document).on("click","#btn-actualizar",function(){
    var id = $(this).data("id");
    var dni = $("#dni").val();
    var apellido = $("#apellido").val();
    var nombre = $("#nombre").val();
    var celular = $("#celular").val();
    var direccion = $("#direccion").val();
    var departamento = $("#departamento").val();
    var provincia = $("#provincia").val();
    var distrito = $("#distrito").val();
    var sexo = $("#sexo").val();
    // va
     
    var enviar = {id:id, txtdni:dni,txtape:apellido,txtnom:nombre,txtcel:celular,txtdir:direccion,txtdepar:departamento,txtprov:provincia,txtdis:distrito,txtsex:sexo}
    $.ajax({
        url:'../../ajax/confirm.php',
     method:'POST',
     data:enviar
    }).done(function(res){
        alertify.success('Actualizado Correctamente'+ ` ${id}`);
        $("#tr-"+id).html(`
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
				
					<td width="10"><a  class="btn btn-success" id="btn-editar" data-toggle="modal" data-target="#exampleModalLong"  data-editar="${id}">Editar</a></td>			
					<td width="10"><button  class="btn btn-danger"  id="btn-eliminar"  data-eliminar="${id}">Eliminar</button></td>`);
        $('#exampleModalLong').modal('hide');


    })

})

/*
$(document).on("click","#btn-buscar",function(){
  var  buscar=$(this).data("id");
   
   $.ajax({
     url:'../../ajax/buscar.php',
     method:'POST',
     data:buscar
   }).done(function(res){

   })

})
*/













