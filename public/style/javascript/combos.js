


$(document).ready(function() {
  /*  $("#btn-registrar").click(function() {
        var ruta = $(this).attr("href");

        $("#mostrar").load(ruta + " #modal-registrar", function() {
            // $("#mostrar").load(ruta + " ")
            $("#modal-registrar").modal("show");

            $("#btn-enviar").click(function(e) {
                e.preventDefault();
                registrar()
                $("#modal-registrar").modal("hide");
            })*/

            //seleccionar combo region
            $.ajax({
                url: '../../ajax/listarRegion.php',
                method: 'POST',
                dataType: "Json"
            }).done(function(comboDepar) {
                // console.log($('#nom'));
                $('#region').append('<option value=0>Seleccionar Región</option>')
                $.each(comboDepar, function(index, valor) {
                   
                    $('#region').append(`<option value="${valor.idDepa}">${valor.departamento}</option>`);
                    
                })

            }).fail(function() {
                alert('Hubo un error al cargar la región')
            })
            //seleccionar combo provincia
            $('#region').change(function() {

                var cboprov = $(this).val();
             //   console.log(cboprov)
             $("#div-prov").removeAttr('hidden');
                $.ajax({
                    url: '../../ajax/listarProvincia.php',
                    method: 'POST',
                    dataType: 'Json',
                    data: {cboprovincia: cboprov},
                }).done(function(comboProv) {
                //    console.log(comboProv)
                   $('#provincia').html("");                  
                    $('#provincia').append('<option value="0">Seleccionar Provincia</option>');
                    $('#distrito').html("");
                    $('#distrito').append('<option value="0">Seleccionar Distrito</option>');
                    if($("#distrito").val()==0){     
                        $("#btn-actualizar").prop("disabled",true);      
              
                    } 
                    $.each(comboProv, function(index, valor) {
                         //console.log(valor)
                        $('#provincia').append(`<option value="${valor.idProv}">${valor.provincia}</option>`);
                    })
                }).fail(function() {
                 alertify.error("error")
                })
            })

            $("#provincia").change(function(){
                var cbodis=$(this).val();
                $("#div-dis").removeAttr('hidden');
                $.ajax({

                    url: '../../ajax/listarDistrito.php',
                    method:'POST',
                    dataType:'JSON',
                    data:{cbodistrito:cbodis}               
                }).done(function(comboDis){

                    $("#distrito").html("");
                    $("#distrito").append('<option value=0>Seleccione el Distrito</option>')
                    if($("#distrito").val()==0){     
                        $("#btn-actualizar").prop("disabled",true);      
              }
                    $.each(comboDis,function(index,valor){
                        $("#distrito").append(`<option value=${valor.idDist}>${valor.distrito}</option>`);

                    })


                }).fail(function() {
                    alertify.error("error")
                })
            })


        });
   /*     return false;
    });
});*/
