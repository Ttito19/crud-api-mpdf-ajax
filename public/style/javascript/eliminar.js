//especifica correctamente lo que quieres eliminar
$(document).on("click","#btn-eliminar",function(){
  var eliminar=$(this).data("eliminar");
     $.ajax({
      url: '../../ajax/eliminar.php',
      method: 'POST',
      data:{"id" :eliminar},
     }).done(function(res){
      if(res=="bien"){
        $("#tr-"+eliminar).html("<td align='center' colspan='100%'>ELIMINADO</td>");
        function listo(){
          $("#tr-"+eliminar).remove();
        }
        setTimeout(listo, 1500);
      }else{
        alert("no eliminado");
      }

   //    console.log(res);
     })
     
//append=añade dentro de un elemnto 
//html=reeescribe lo eliminado
//remove=remueve el elemneto


});

//como son varion btn-liminar comenzara a eliminar desde arriba ,ya que no especifica correctamente
// $('#btn-eliminar').click(function(){
   // console.log("sad");
// })