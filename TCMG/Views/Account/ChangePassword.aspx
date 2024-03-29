﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TCMG.Models.ChangePasswordModel>" %>

<asp:Content ID="changePasswordTitle" ContentPlaceHolderID="Title" runat="server">
    更改密码
</asp:Content>

<asp:Content ID="changePasswordHeader" ContentPlaceHolderID="Header" runat="server">
    <%: Html.ActionLink("取消", "Index", "Home", null, new { data_icon = "arrow-l", data_rel = "back" }) %>
    <h1>更改密码</h1>
</asp:Content>

<asp:Content ID="changePasswordContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        密码必须至少包含 <%: Membership.MinRequiredPasswordLength %> 个字符。
    </p>

    <% using (Html.BeginForm()) { %>
        <%: Html.ValidationSummary() %>

        <ul data-role="listview" data-inset="true">
            <li data-role="list-divider">帐户信息</li>

            <li data-role="fieldcontain">
                <%: Html.LabelFor(m => m.OldPassword) %>
                <%: Html.PasswordFor(m => m.OldPassword) %>                
            </li>

            <li data-role="fieldcontain">
                <%: Html.LabelFor(m => m.NewPassword) %>
                <%: Html.PasswordFor(m => m.NewPassword) %>                
            </li>

            <li data-role="fieldcontain">
                <%: Html.LabelFor(m => m.ConfirmPassword) %>
                <%: Html.PasswordFor(m => m.ConfirmPassword) %>                
            </li>

            <li data-role="fieldcontain">
                <input type="submit" value="更改密码" />
            </li>
        </ul>
    <% } %>
</asp:Content>

<asp:Content ID="scriptsContent" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
