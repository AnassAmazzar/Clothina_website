/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function(){
    $('#decon').click(function(event){
        $.ajax({
            url: "Servletadmin",
            dataType: 'html',
            type: 'post',
            data: 'operation=logout',
            success:function(resulta){if(resulta!=0){window.location.href="Servletadmin";}else{alert("Utilisateur exisste deja");}},
            error: function (resulta){ alert("Erreur de Chargement");}
                    });
                });
            });