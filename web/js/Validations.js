/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


function isNumber(regi)
{
    var str = regi.value;
    var oneChar = 0;
    str = str.toString( );
    for (var i = 0; i < str.length; i++) 
    {
        oneChar = str.charAt(i).charCodeAt(0);
        if (oneChar < 48 || oneChar > 57) 
        {
            regi.value=str.substring(0,str.length-1);
        }
    }
}   
function isLettersOnly(regi)
{  
    var str = regi.value;                
    str = str.toString( );
    for (var i = 0; i < str.length; i++) 
    {
        charCode = str.charAt(i).charCodeAt(0);
        if (charCode > 31 && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122)) 
        {
            regi.value=str.substring(0,str.length-1);
        }
    }
} 
function logname(regi)
{
    if(document.regi.loginemail.checked == true)
    {
        // document.regi.loginname.disabled=true;
        document.regi.loginname.value=document.regi.email.value;
    }
    else
    {
        document.regi.loginname.value="";    
    // document.regi.loginname.disabled=false;
    }
}

function term()
{
    alert(
        "Welcome to Intruder Detection Server" + '\n' +
        "1. Thanks for using our products and services (“Services”). The Services are provide for protect your system " + '\n' +
        "2. You must follow any policies made available to you within the Services. "+ '\n' +
        "3. What information we collect and why we collect it."+ '\n' +
        "4. How we use that information."+ '\n' +
        "5. The choices we offer, including how to access and update information."
        );
}
                
var radiobutton="";
var radiobutton1="";
function f1(regi)
{
    //alert("Me");
    var reg=new RegExp("^[A-Za-z0-9_]{1,}[.]?[A-Za-z0-9_]{1,}@{1}([A-Za-z0-9_]+[.]{1})+[A-Za-z0-9_]{1,}$");
    document.regi.gender1.value=radiobutton;
    document.regi.married1.value=radiobutton1;
    if(document.regi.title.value=="Title")
    {
        alert("Enter Title");
        document.regi.title.focus();
        return false;
    }
    else if(document.regi.fname.value=="")
    {
        alert("Enter First Name");
        document.regi.fname.focus();
        return false;
    }
    else if(document.regi.midname.value=="")
    {
        alert("Enter Father Name");
        document.regi.midname.focus();
        return false;
    }
    else if(document.regi.lastname.value=="")
    {
        alert("Enter Last Name");
        document.regi.lastname.focus();
        return false;
    }
    else if(document.regi.moname.value=="")
    {
        alert("Enter Mother Name");
        document.regi.moname.focus();
        return false;
    }
    else if(document.regi.day.value=="Day" || document.regi.month.value=="Month" || document.regi.year.value=="Year")
    {
        alert("Enter Date of Birth");
        document.regi.day.focus();
        return false;
    }
    else if(radiobutton=="")
    {
        alert("Select Gender");
        return false;
    }
    else if(radiobutton1=="")
    {
        alert("Select Married Status");
        return false;
    }
    else if(document.regi.pan.value=="")
    {
        alert("Enter Pan Card No.");
        document.regi.pan.focus();
        return false;
    }
    else if(document.regi.aadhar.value=="")
    {
        alert("Enter Asdhar Card No.");
        document.regi.aadhar.focus();
        return false;
    }
    else if(document.regi.address.value=="")
    {
        alert("Enter Address");
        document.regi.address.focus();
        return false;
    }
    else if(document.regi.mono.value=="")
    {
        alert("Enter Mobile No.");
        document.regi.mono.focus();
        return false;
    }
    else if(document.regi.phno.value=="")
    {
        alert("Enter Phone No.");
        document.regi.phno.focus();
        return false;
    }
    else if(document.regi.email.value=="")
    {
        alert("Enter E-Mail ID");
        document.regi.email.focus();
        return false;
    }
    else if(!reg.test(document.regi.email.value))
    {
        alert("Invalid E-mail");
        document.regi.email.focus();
        return false;
    }
    else if(document.regi.state.value=="Select State")
    {
        alert("Select State");
        document.regi.state.focus();
        return false;
    }
    else if(document.regi.district.value=="")
    {
        alert("Enter District");
        document.regi.district.focus();
        return false;
    }
    else if(document.regi.taluka.value=="")
    {
        alert("Enter Taluka");
        document.regi.taluka.focus();
        return false;
    }
    else if(document.regi.pincode.value=="")
    {
        alert("Enter Pincode");
        document.regi.pincode.focus();
        return false;
    }
    else if(document.regi.loginname.value=="")
    {
        alert("Enter Login Name");
        document.regi.loginname.focus();
        return false;
    }
    else if(document.regi.password.value=="")
    {
        alert("Enter Password");
        document.regi.password.focus();
        return false;
    }
    else if(document.regi.password1.value=="")
    {
        alert("Enter Confirm Password");
        document.regi.password1.focus();
        return false;
    }
    else if( document.regi.password.value != document.regi.password1.value)
    {
        alert("Password & Confirm Password Must be Same");
        document.regi.email.focus();
        return false;
    }
    else if(document.regi.TermsOfService.checked==false)
    {
        alert("Read Terms of Service and Privacy Policy");
        document.regi.TermsOfService.focus();
        return false;
    }
    //return false;
    document.regi.gender1.value=radiobutton;
    document.regi.married1.value=radiobutton1;
    
}


function log(login)
{
    //alert("me");
    if(document.login.loginname.value=="")
    {
        alert("Enter Login Name");
        document.login.loginname.focus();
        return false;
    }
    else if(document.login.password1.value=="")
    {
        alert("Enter Password");
        document.login.password1.focus();
        return false;
    }
    else if(document.login.id.value=="")
    {
        alert("Enter User ID");
        document.login.id.focus();
        return false;
    }
}