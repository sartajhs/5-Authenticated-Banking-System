/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#img_prev')
            .attr('src', e.target.result)
            .width(125)
            .height(175);
        };
        reader.readAsDataURL(input.files[0]);
    }
}
