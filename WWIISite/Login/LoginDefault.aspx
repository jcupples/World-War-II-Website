<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="LoginDefault.aspx.vb" Inherits="Login_LoginDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="login">
        <asp:Login ID="Login1" runat="server" 
            CreateUserText="Sign Up" 
            CreateUserUrl="~/Login/SignUp.aspx" 
            FailureText="Oops! It looks like your User Name and Password didn't match or it doesn't exist! Please Try again!" 
            RememberMeText="Remember me.">
        </asp:Login>
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<p><b>Don't have an account?  Sign up to join our community of World War II Enthusiasts by clicking 
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login/SignUp.aspx">here</asp:HyperLink>!</b></p>

</asp:Content>


