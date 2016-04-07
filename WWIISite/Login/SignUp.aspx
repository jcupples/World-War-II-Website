<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SignUp.aspx.vb" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="login">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CreateUserButtonText="Register">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<p><b> Already have an account?
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login/LoginDefault.aspx">Login Here</asp:HyperLink>!</b></p>

</asp:Content>