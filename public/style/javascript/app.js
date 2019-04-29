$("#btn-enviar").click(function(e){
    e.preventDefault();

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
            alert('Registrado Correctamente');
              window.location.replace('../../app/views/table-search.php');
        
        }else{
        //    console.log("error");
         //    alert("Ingrese datos");
            alert('No se pudo registrar');
          
        }
       
        
    })
    







});


