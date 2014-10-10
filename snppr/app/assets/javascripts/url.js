$(document).ready(function(){
  $('.popoverOption').popover({ trigger: "hover" });
  
  $('#single-btn').on("click", function(){
    $(this).attr("class", "btn btn-default active");
    $('#double-btn').attr("class", "btn btn-default");
    $('#grid-btn').attr("class", "btn btn-default");
    $('.container #single').attr("class", "row");  
    $('.container #double').attr("class", "row none");  
    $('.container #grid').attr("class", "row none");  
  });
  
  $('#double-btn').on("click", function(){
    $(this).attr("class", "btn btn-default active");
    $('#single-btn').attr("class", "btn btn-default");
    $('#grid-btn').attr("class", "btn btn-default");
    $('.container #double').attr("class", "row");  
    $('.container #single').attr("class", "row none");  
    $('.container #grid').attr("class", "row none");  
  });
  
  $('#grid-btn').on("click", function(){
    $(this).attr("class", "btn btn-default active");
    $('#double-btn').attr("class", "btn btn-default");
    $('#single-btn').attr("class", "btn btn-default");
    $('.container #grid').attr("class", "row");  
    $('.container #double').attr("class", "row none");  
    $('.container #single').attr("class", "row none");  
  });

});

