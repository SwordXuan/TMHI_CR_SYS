/* =======================================================
*
*   Author    :   Hiei
*   Time      :   2017/08/16
*	Explain   :   登录页JS方法
*   Version   :   1.0
*
* ======================================================= */

$(function () {
    'use strict';

    var $inputs = $('[data-rule]')
        , $form = $('#signin-form');
    var inputs = [];
    $inputs.each(function (index, node) {
        var tmp = new Input_validator(node);
        inputs.push(tmp);
    })

    $form.on('submit', function (e) {
        e.preventDefault();
        $inputs.trigger('blur');

        for (var i = 0; i < inputs.length; i++) {
            var item = inputs[i];
            var valid = item.validator.is_valid();
            if (!valid) {
                return;
            }
        }

        alert('yes');
        // signin();
    })

    function signin() {
    }
});