<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" Theme="SSAC Theme" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="SSAC_Project.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <h2><em>Enter your Login Credentials in order to Access Services of SSAC</em></h2>
    
    <table>
        <tr>
            <td><asp:Label ID="lblUsername" Text="Username: " SkinID="lblSkin" runat="server" /></td>
            <td><asp:TextBox ID="tbxUsername" SkinID="tbxSkin" runat="server" Width="179px"/></td>
        </tr>

        <tr>    
            <td><asp:Label ID="lblPassword" Text="Password: " SkinID="lblSkin" runat="server"/></td>
            <td><asp:TextBox ID="tbxPassword" SkinID="tbxSkin" TextMode="Password" runat="server" Width="179px"/></td>
        </tr>
           <tr><td></td><td><asp:Button ID="Login" SkinID="btnSkin" Text="Login" onClick="Login_Click" runat="server" BorderStyle="Ridge" Font-Bold="true" Width="69px" />
                            <asp:Button ID="Register" SkinID="btnSkin" Text="Register" onclick="Register_Click" runat="server" BorderStyle="Ridge" Font-Bold="true"/></td>
           </tr>
    </table>
</asp:Content>
