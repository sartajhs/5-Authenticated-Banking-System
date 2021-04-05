/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function(){
    $(".uname").change(function(){
        var uname = $(this).val();
        if(uname.length > 3){
            $(".status").html("<img src='images/loading.gif'><font color=gray> Checking availability...</font>");
            $.ajax({
                type: "POST",
                url: "check",
                data: "uname="+ uname,
                success: function(msg){

                    $(".status").ajaxComplete(function(event, request, settings){
                                     
                        $(".status").html(msg);

                    });
                }
            }); 
        }
        else{
                         
            $(".status").html("<font color=red>username shold be more then <b>3</b> chars</font>");
        }
                    
    });
});