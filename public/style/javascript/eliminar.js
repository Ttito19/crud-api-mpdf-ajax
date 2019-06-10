//especifica correctamente lo que quieres eliminar
$(document).on("click","#btn-eliminar",function(){
  var eliminar=$(this).data("eliminar");


  
function eliminado(){
    $.ajax({
      url: '../../ajax/eliminar.php',
      method: 'POST',
      data:{"id" :eliminar},
     }).done(function(res){
    
      $("#tr-"+eliminar).html("<td align='center' colspan='100%'>ELIMINADO</td>");
        function listo(){
          $("#tr-"+eliminar).remove();
      }
      setTimeout(listo, 2000);

   

     })
     
 }

  alertify.confirm("¿Seguro que desea eliminar?",
  function(){
    alertify.success("Eliminado correctamente",eliminado());

   
  },
  function(){
    alertify.error('Cancelado');
  });




//append=añade dentro de un elemnto 
//html=reeescribe lo eliminado
//remove=remueve el elemneto
//como son varion btn-liminar comenzara a eliminar desde arriba ,ya que no especifica correctamente
// $('#btn-eliminar').click(function(){
   // console.log("sad");
 })