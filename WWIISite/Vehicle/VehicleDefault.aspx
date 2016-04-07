<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="VehicleDefault.aspx.vb" Inherits="Vehicle_VehicleDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="box">
    <h2>
            Complete List of Vehicles
    </h2>
    </div>
<div class="box">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        DataSourceID="DataDisplay" CellSpacing="2" ForeColor="Black" 
        CssClass="DataHeader">
        <Columns>
            <asp:BoundField DataField="Designation" HeaderText="Designation" 
                SortExpression="Designation" />
            <asp:BoundField DataField="Variation" HeaderText="Model" 
                SortExpression="Variation" />
            <asp:BoundField DataField="NickName" HeaderText="NickName" 
                SortExpression="NickName" />
            <asp:BoundField DataField="VehicleType" HeaderText="VehicleType" 
                SortExpression="VehicleType" />
            <asp:BoundField DataField="Cannon1" HeaderText="Cannon" 
                SortExpression="Cannon1" />
            <asp:BoundField DataField="MG1" HeaderText="Machine Gun" SortExpression="MG1" />
            <asp:BoundField DataField="Bomb1" HeaderText="Bomb" SortExpression="Bomb1" />
            <asp:BoundField DataField="Missile" HeaderText="Missile" 
                SortExpression="Missile" />
            <asp:BoundField DataField="ServiceYearStart" HeaderText="First Year of Service" 
                SortExpression="ServiceYearStart" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="#2C2F36" Font-Bold="True" ForeColor="#929db5" />
        <PagerStyle BackColor="#2C2F36" ForeColor="#929db5" HorizontalAlign="Center" />
        <RowStyle BackColor="#BEC4D3" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#BEC4D3" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#BEC4D3" />
        <SortedDescendingHeaderStyle BackColor="#2C2F36" />

<SortedAscendingCellStyle BackColor="#BEC4D3"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#BEC4D3"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
    </asp:GridView>
</div>
    <asp:SqlDataSource ID="DataDisplay" runat="server" 
        ConnectionString="<%$ ConnectionStrings:VehicleConnectionString1 %>" 
        SelectCommand="SelectDisplay" SelectCommandType="StoredProcedure">
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

