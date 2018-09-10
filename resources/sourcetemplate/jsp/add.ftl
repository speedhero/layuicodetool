﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../../common/tag.jsp"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>添加${remark!}</title>
        <meta name="renderer" content="webkit">
        <%@include file="../../common/header.jsp"%>
        <script type="text/javascript">
            var path = "<%=path%>";
        </script>
    </head>
    <body>
        <section class="my-container">
            <form class="layui-form" id="addFrom" method="post" style="margin-top:20px;">
                <input type="hidden" name="id" value="${'$'}{item.id}">
                <div class="layui-form-item">
                    <#if columns??>
                    <#list columns as col>
                    <#if !col.primaryKey >
                    <div class="layui-inline">
                        <label class="layui-form-label">${col.remark!}</label>
                        <div class="layui-input-block">
                            <input type="text" name="${col.propertyName}" value="${'$'}{item.${col.propertyName}}" lay-verify="" class="layui-input" />
                        </div>
                    </div>
                    <#if col_index % 3 == 0>
                </div>
                <div class="layui-form-item">
                    </#if>
                    </#if>
                    </#list>
                </#if>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button type="button" class="layui-btn" lay-submit lay-filter="add">提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
        </section>
        <%@include file="../../common/footer.jsp"%>
        <script type="text/javascript" src="<%=path%>/static/js/fav/${entityName}/${entityName}.js" ></script>
        <script type="text/javascript" src="<%=path%>/static/js/fav/${entityName}/${entityName}Layui.js" ></script>
    </body>
</html>