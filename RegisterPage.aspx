<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" Theme="SSAC Theme" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="SSAC_Project.Images.RegisterPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin: 20px;
            width: 75%;
            height: 92%;
            top: -17px;
            left: 188px;
            position: absolute;
            background-color: #ffffff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="content">
    <h2>Enter your Credentials</h2>
    <table>
        <tr>
            <td><asp:Label ID="LblCi" Text="Customer Id: " runat="server"/></td>
            <td><asp:TextBox ID="TbxCi" runat="server"/></td>
        </tr>

        <tr>    
            <td><asp:Label ID="LblFn" skinId="lblSkin" Text="First Name: " runat="server"/></td>
            <td><asp:TextBox ID="TbxFn" skinId="tbxSkin"  runat="server"/></td>
        </tr>
        <tr>    
            <td><asp:Label ID="LblLn" skinId="lblSkin" Text="Last Name: " runat="server"/></td>
            <td><asp:TextBox ID="TbxLn" skinId="tbxSkin"  runat="server"/></td>
        </tr>
        <tr>    
            <td><asp:Label ID="LblCt" skinId="lblSkin" Text="City: " runat="server"/></td>
            <td><asp:TextBox ID="TbxCt" skinId="tbxSkin" runat="server"/></td>
        </tr>

        <tr>    
            <td><asp:Label ID="LblPr" skinId="lblSkin" Text="Province: " runat="server"/></td>
            <td><asp:TextBox ID="TbxPr" skinId="tbxSkin" runat="server"/></td>
        </tr>

        <tr>    
            <td><asp:Label ID="LblPc" skinId="lblSkin" Text="Postal Code: " runat="server"/></td>
            <td><asp:TextBox ID="TbxPc" skinId="tbxSkin" runat="server"/></td>
        </tr>

        <tr>    
            <td><asp:Label ID="LblBd" skinId="lblSkin" Text="Birthday: " runat="server"/></td>
            <td><asp:TextBox ID="TbxBd" skinId="tbxSkin" TextMode="Date" runat="server"/></td>
        </tr>

        <tr>    
            <td><asp:Label ID="LblPn" skinId="lblSkin" Text="Phone Number: " runat="server"/></td>
            <td><asp:TextBox ID="TbxPn" skinId="tbxSkin" TextMode="Number" runat="server"/></td>
        </tr>

        <tr>    
            <td><asp:Label ID="LblEm" skinId="lblSkin" Text="Email: " runat="server"/></td>
            <td><asp:TextBox ID="TbxEm" skinId="tbxSkin" TextMode="Email" runat="server"/></td>
        </tr>

        <tr>    
            <td><asp:Label ID="LblPs" skinId="lblSkin" Text="Password: " runat="server"/></td>
            <td><asp:TextBox ID="TbxPs" skinId="tbxSkin" TextMode="Password" runat="server"/></td>
        </tr>
        
        <tr>    
            <td><asp:Label ID="LblCPs" skinId="lblSkin" Text="Confirm Password: " runat="server"/></td>
            <td><asp:TextBox ID="TbxCPs" skinId="tbxSkin" TextMode="Password" runat="server"/></td>
        </tr>
           <tr><td><asp:Button ID="Register" skinId="btnSkin" Text="Register" OnClick="Register_Click" runat="server"/></td>
           </tr>
    </table> 
    </div>
</asp:Content>
