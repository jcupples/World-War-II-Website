<%@ Page Title="DatabaseListBackEnd" Language="VB" MasterPageFile="~/Backend.master" AutoEventWireup="false" CodeFile="VehicleDefault.aspx.vb" Inherits="Backend_VehicleDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="CompleteVehicle" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" 
        DataSourceID="ListAllVehicles1" 
        EmptyDataText="There are no data records to display." 
        DataKeyNames="VehicleID">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="VehicleID" HeaderText="VehicleID" 
                SortExpression="VehicleID" ReadOnly="True" />
            <asp:BoundField DataField="CountryCodeID" HeaderText="CountryCodeID" 
                SortExpression="CountryCodeID" />
            <asp:BoundField DataField="Designation" HeaderText="Designation" 
                SortExpression="Designation" />
            <asp:BoundField DataField="Variation" HeaderText="Variation" 
                SortExpression="Variation" />
            <asp:BoundField DataField="NickName" HeaderText="NickName" 
                SortExpression="NickName" />
            <asp:BoundField DataField="VehicleType" HeaderText="VehicleType" 
                SortExpression="VehicleType" />
            <asp:BoundField DataField="CrewNum" HeaderText="CrewNum" 
                SortExpression="CrewNum" />
            <asp:BoundField DataField="Cannon1" HeaderText="Cannon1" 
                SortExpression="Cannon1" />
            <asp:BoundField DataField="MG1" HeaderText="MG1" SortExpression="MG1" />
            <asp:BoundField DataField="MG2" HeaderText="MG2" SortExpression="MG2" />
            <asp:BoundField DataField="Bomb1" HeaderText="Bomb1" SortExpression="Bomb1" />
            <asp:BoundField DataField="Bomb2" HeaderText="Bomb2" SortExpression="Bomb2" />
            <asp:BoundField DataField="Missile" HeaderText="Missile" 
                SortExpression="Missile" />
            <asp:BoundField DataField="ServiceYearStart" HeaderText="ServiceYearStart" 
                SortExpression="ServiceYearStart" />
            <asp:BoundField DataField="ServiceYearEnd" HeaderText="ServiceYearEnd" 
                SortExpression="ServiceYearEnd" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="ListAllVehicles1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:VehicleConnectionString1 %>" 
        DeleteCommandType="StoredProcedure" InsertCommandType="StoredProcedure" 
        SelectCommandType="StoredProcedure" UpdateCommandType="StoredProcedure" 
        DeleteCommand="DeleteListAllVehicles" InsertCommand="InsertListAllVehicles" 
        SelectCommand="SelectFromListAllVehicles" 
        UpdateCommand="UpdateListAllVehicles1">
        <DeleteParameters>
            <asp:Parameter Name="VehicleID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CountryCodeID" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Variation" Type="String" />
            <asp:Parameter Name="Nickname" Type="String" />
            <asp:Parameter Name="VehicleType" Type="String" />
            <asp:Parameter Name="CrewNum" Type="Int32" />
            <asp:Parameter Name="Cannon1" Type="String" />
            <asp:Parameter Name="Cannon2" Type="String" />
            <asp:Parameter Name="MG1" Type="String" />
            <asp:Parameter Name="MG2" Type="String" />
            <asp:Parameter Name="MG3" Type="String" />
            <asp:Parameter Name="Bomb1" Type="String" />
            <asp:Parameter Name="Bomb2" Type="String" />
            <asp:Parameter Name="Missile" Type="String" />
            <asp:Parameter Name="Torpedo" Type="String" />
            <asp:Parameter Name="ServiceYearStart" Type="Int32" />
            <asp:Parameter Name="ServiceYearEnd" Type="Int32" />
            <asp:Parameter Name="VehicleID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CountryCodeID" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Variation" Type="String" />
            <asp:Parameter Name="Nickname" Type="String" />
            <asp:Parameter Name="VehicleType" Type="String" />
            <asp:Parameter Name="CrewNum" Type="Int32" />
            <asp:Parameter Name="Cannon1" Type="String" />
            <asp:Parameter Name="Cannon2" Type="String" />
            <asp:Parameter Name="MG1" Type="String" />
            <asp:Parameter Name="MG2" Type="String" />
            <asp:Parameter Name="MG3" Type="String" />
            <asp:Parameter Name="Bomb1" Type="String" />
            <asp:Parameter Name="Bomb2" Type="String" />
            <asp:Parameter Name="Missile" Type="String" />
            <asp:Parameter Name="Torpedo" Type="String" />
            <asp:Parameter Name="ServiceYearStart" Type="Int32" />
            <asp:Parameter Name="ServiceYearEnd" Type="Int32" />
            <asp:Parameter Name="VehicleID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:DetailsView ID="InsertNewVehiclesDetailsView" runat="server" 
        DataSourceID="ListAllVehicles1" DefaultMode="Insert" Height="50px" 
        Width="125px" AutoGenerateRows="False" DataKeyNames="VehicleID">
        <Fields>
            <asp:BoundField DataField="VehicleID" HeaderText="VehicleID" 
                SortExpression="VehicleID" ReadOnly="True" />
            <asp:BoundField DataField="CountryCodeID" HeaderText="CountryCodeID" 
                SortExpression="CountryCodeID" />
            <asp:BoundField DataField="Designation" HeaderText="Designation" 
                SortExpression="Designation" />
            <asp:BoundField DataField="Variation" HeaderText="Variation" 
                SortExpression="Variation" />
            <asp:BoundField DataField="NickName" HeaderText="NickName" 
                SortExpression="NickName" />
            <asp:BoundField DataField="VehicleType" HeaderText="VehicleType" 
                SortExpression="VehicleType" />
            <asp:BoundField DataField="CrewNum" HeaderText="CrewNum" 
                SortExpression="CrewNum" />
            <asp:BoundField DataField="Cannon1" HeaderText="Cannon1" 
                SortExpression="Cannon1" />
            <asp:BoundField DataField="Cannon2" HeaderText="Cannon2" 
                SortExpression="Cannon2" />
            <asp:BoundField DataField="MG1" HeaderText="MG1" SortExpression="MG1" />
            <asp:BoundField DataField="MG2" HeaderText="MG2" SortExpression="MG2" />
            <asp:BoundField DataField="MG3" HeaderText="MG3" SortExpression="MG3" />
            <asp:BoundField DataField="Bomb1" HeaderText="Bomb1" SortExpression="Bomb1" />
            <asp:BoundField DataField="Bomb2" HeaderText="Bomb2" SortExpression="Bomb2" />
            <asp:BoundField DataField="Missile" HeaderText="Missile" 
                SortExpression="Missile" />
            <asp:BoundField DataField="Torpedo" HeaderText="Torpedo" 
                SortExpression="Torpedo" />
            <asp:BoundField DataField="ServiceYearStart" HeaderText="ServiceYearStart" 
                SortExpression="ServiceYearStart" />
            <asp:BoundField DataField="ServiceYearEnd" HeaderText="ServiceYearEnd" 
                SortExpression="ServiceYearEnd" />
        </Fields>
    </asp:DetailsView>

</asp:Content>