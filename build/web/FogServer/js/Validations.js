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

var rb1="";
var rb2="";
var rb3="";
function f2(radioans)
{
    var inputs = document.getElementsByName("question1");
    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            document.radioans.queans1.value= inputs[i].value;
            
        }
    }
}
function f3(radioans)
{
    var inputs = document.getElementsByName("question2");
    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            document.radioans.queans2.value= inputs[i].value;
        }
    }
}
function f4(radioans)
{
    var inputs = document.getElementsByName("question3");
    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            document.radioans.queans3.value= inputs[i].value;
        }
    }
}
function f5(radioans)
{
    if(document.radioans.queans1.value=="" || document.radioans.queans1.value==null)
    {
        alert("Select Answer Of First Question ");
        return false;
    }
    else if(document.radioans.queans2.value=="" || document.radioans.queans2.value==null)
    {
        alert("Select Answer Of Second Question ");
        return false;
    }
    else if(document.radioans.queans3.value=="" || document.radioans.queans3.value==null)
    {
        alert("Select Answer Of Third Question ");
        return false;
    }
}


