/* =======================================================
*
*   Author    :   Hiei
*   Time      :   2017/08/16
*	Explain   :   前端数据验证方法
*   Version   :   1.0
*
* ======================================================= */

$(function () {
    'use strict';

    window.Validator = function (val, rule) {

        this.is_valid = function (new_val) {
            var key;
            if (new_val !== undefined)
                val = new_val;

            // 首先执行非空验证
            if (rule.required && !val)
                return false;

            for (key in rule) {
                // 跳过非空验证
                if (key === 'required')
                    continue;

                // 执行对应验证
                var valid = this['vali_' + key]();
                if (!valid) return false;
            }

            return true;
        }

        // 最大值验证
        this.vali_max = function () {
            pre_value();
            return val <= rule.max;
        }

        // 最小值验证
        this.vali_min = function () {
            pre_value();
            return val >= rule.min;
        }

        // 最大长度验证
        this.vali_maxlength = function () {
            pre_length();
            return val.length <= rule.maxlength;
        }

        // 最小长度验证
        this.vali_minlength = function () {
            pre_length();
            return val.length >= rule.minlength;
        }

        // 非空验证
        this.vali_required = function () {
            var real = $.trim(val);
            if (!real && real !== 0)
                return false;
            return true;
        }

        // 正则验证
        this.vali_pattern = function () {
            var reg = new RegExp(rule.pattern);
            return reg.test(val);
        }

        // 数据验证前的预处理（max/min value）
        function pre_value () {
            val = parseFloat(val);
        }

        // 数据验证前的预处理（max/min length）
        function pre_length () {
            val = val.toString();
        }
    }
});