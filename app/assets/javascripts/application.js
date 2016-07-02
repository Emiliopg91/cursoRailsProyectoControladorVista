// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function validaContacto(){
    var enviar=true;
    
    if($("#nombre").val().trim().length<1) {
        $("#nombre").parent().addClass("has-error");
        enviar=false;
    }
    else
        $("#nombre").parent().removeClass("has-error");
    
    if(!/^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/.test($("#correo").val())){
        $("#correo").parent().addClass("has-error");
        enviar=false;
    }
    else
        $("#correo").parent().removeClass("has-error");
    
    if($("#asunto").val().trim().length<1){
        $("#asunto").parent().addClass("has-error");
        enviar=false;
    }
    else
        $("#asunto").parent().removeClass("has-error");
    
    if($("#mensaje").val().trim().length<1){
        $("#mensaje").parent().addClass("has-error");
        enviar=false;
    }
    else
        $("#mensaje").parent().removeClass("has-error");
    
    return enviar;
}