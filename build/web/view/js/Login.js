/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * Created on : 21 mai. 2022, 19:38
 * Paginiation for la page shop
 */

$(document).ready(function (){
    $('#conect').click(function(event){
        $.ajax({
            url:'/Clothina/Servletadmin',
            dataType:'html',
            type:'post',
            data:'Email='+$('#Email').val() + '&passwords='+$('#passwords').val() + '&operation=Logine',
            success:function(resulta){if(resulta!=0){window.location.replace("my-account.jsp");}else{$('#div-message').html("Invalid Email or Password ");}},
            error: function (resulta){ $("#div-message").html("Erreur de Chargement ");}
            });
        });
    });
$(document).ready(function(){
    $('#Modif').click(function(event){
        $.ajax({
            url: "/Clothina/Servletadmin",
            dataType: 'html',
            type: 'post',
            data: 'prenom='+$('#acc-name').val() + '&nom='+$('#acc-mname').val() + '&telephone='+$('#acc-lastname').val() + '&Email='+$('#acc-email').val() + '&password='+$('#account-pass2').val() + '&passwords='+$('#account-pass3').val() + '&operation=modifier',
            success:function(resulta){if(resulta!=0 && $('#account-pass2').val()===$('#account-pass3').val()){window.location.replace("my-account.jsp");}else{$('#div-message').html("Mot de passe Incorrect");}},
            error: function (resulta){ $("#div-message").html("Erreur de Chargement");}
                    });
                });
            });
$(document).ready(function(){
    $('#logout').click(function(event){
        $.ajax({
            url: "/Clothina/Servletadmin",
            dataType: 'html',
            type: 'post',
            data: 'operation=logout',
            success:function(resulta){if(resulta!=0){window.location.href="accueiltest.jsp";}else{alert("Utilisateur exisste deja");}},
            error: function (resulta){ alert("Erreur de Chargement");}
                    });
                });
            });
$(document).ready(function(){
    $('#inscription').click(function(event){
        $.ajax({
            url: "/Clothina/Servletadmin",
            dataType: 'html',
            type: 'post',
            data: 'I-nom='+$('#Register-nom').val() + '&I-prenom='+$('#Register-prenom').val() + '&I-email='+$('#Register-email').val() + '&I-password='+$('#Register-password').val() + '&I-telephone='+$('#Register-tel').val() + '&I-sexe='+$('#Register-gender').val() + '&operation=inscription',
            success:function(resulta){if(resulta!=0){window.location.replace("my-account.jsp");}else{alert("Utilisateur exisste deja");}},
            error: function (resulta){ alert("Erreur de Chargement");}
                    });
                });
            });
//            $(document).on('click', '#lien', function(event){
//                event.preventDefault();
//                servlet = ($(this).attr("href"));
//                console.log(servlet);
//                $.ajax({
//                    url: servlet,
//                    dataType: 'html',
////                    type: 'POST',
////                    data: 'cond='+$("#cond").val(),
//                    success: function (resulta) {$("#div").html(resulta);},
//                    error: function (resulta) { $("#message").html("Erreur de chargement."); }
//                });
//            });
    document.getElementById("butt-2").addEventListener("click", function() {
        document.getElementById("moddif").style.display = "none";
        document.getElementById("moddif-2").style.display = "block";
});
function maFonction(){
    document.getElementById("moddif").style.display = "block";
    document.getElementById("moddif-2").style.display = "none";
}
//    document.getElementById("butt-2").addEventListener("click", function() {
//        document.getElementById("moddif").style.display = "none";
//        document.getElementById("moddif-2").style.display = "block";
//});
