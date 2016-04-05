$(document).ready(function(){
 $.ajax({
   type: 'GET',
   url:  "/api/v1/works",
   success: function(works){
     $.each(works, function(index, average){
       renderAverages(average)
     })
   }
 })
