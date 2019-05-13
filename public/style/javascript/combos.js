$(document).ready(function(){
   
  $.ajax({
      url:'../../ajax/listarRegion.php',
      method:'post',
      dataType:"Json"
  }).done(function(combo){
    console.log($('#nom'));
//    $('#region').append(`<option>hola</option>`);
  }).fail(function(){
    alert('Hubo un error al cargar la región')
  })


})