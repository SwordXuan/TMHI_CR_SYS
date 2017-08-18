/* =======================================================
*
*   Author    :   Hiei
*   Time      :   2017/08/17
*	Explain   :   input控件数据验证方法
*   Version   :   1.0
*
* ======================================================= */

$(function () {
    'use strict';

    window.Input_validator = function (selector) {
        var $ele
            , $error_ele
            , me = this
            , rule =
            {
                required: true  // 默认非空
            };

        // 调用验证方法
        this.load_validator = function () {
            var val = this.get_val();
            this.validator = new Validator(val, rule);
        }

        // 获取用户输入值
        this.get_val = function () {
            return $ele.val();
        }

        function init() {
            get_ele();
            get_error_ele();
            parse_rule();
            me.load_validator();
            listener();
        }

        // 获取选择器对象
        function get_ele() {
            if(selector instanceof jQuery)
                $ele = selector;
            else $ele = $(selector);
        }

        // 解析验证规则
        function parse_rule() {
            var rule_str = $ele.data('rule');  // 获取data-rule
            if (!rule_str) return;

            var rule_arr = rule_str.split('|');
            for (var i = 0; i < rule_arr.length; i++) {
                var item_str = rule_arr[i];
                var item_arr = item_str.split(':');
                rule[item_arr[0]] = JSON.parse(item_arr[1]);
            }
        }

        //定义监听器
        function listener () {
            $ele.on('blur', function () {
               var valid = me.validator.is_valid(me.get_val());
               // get_error_id();
               // 显示分歧
               if (!valid) {
                   // create_error_ele();
                   $error_ele.show();
               } else {
                   $error_ele.hide();
               }
            })
        }

        // 获取需要监听的错误信息标签id
        function get_error_selector () {
            return '#' + $ele.attr('id') + '-input-error';
        }

        function get_error_ele () {
            $error_ele = $(get_error_selector());
        }

        // 创建错误提示div并添加
        // function create_error_ele () {
        //     var error_ele = $('<div></div>');  // 创建一个空div
        //     error_ele.attr('id', $error_id + '-input-error');
        //     error_ele.attr('name', 'input-error');
        //     error_ele.attr('class', 'alert alert-danger');
        //     error_ele.attr('role', 'alert');
        //     var error_msg_str = get_error_msg();
        //     error_ele.text(error_msg_str);
        //     $('#error-group').append(error_ele);  // 添加div至html
        // }

        // 根据错误类型获取提示信息
        // function get_error_msg () {
        //     return error_msg_arry[$error_id];
        // }

        init();
    }
})