/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


function resetCaptcha()
{
    document.getElementById('imgCaptcha').src = 'capcha.jsp?' + Math.random();
}