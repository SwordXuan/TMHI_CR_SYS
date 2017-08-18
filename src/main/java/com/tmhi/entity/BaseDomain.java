package com.tmhi.entity;

import org.apache.commons.lang.builder.ToStringBuilder;

import java.io.Serializable;

/**
 * Author   :   Hiei
 * Time     :   2017/08/16
 * Explain  :   实体类基类
 * Version  :   1.0
 */
public class BaseDomain implements Serializable{

    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
