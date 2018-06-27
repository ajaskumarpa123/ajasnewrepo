<%@ Page Title="" Language="C#" MasterPageFile="~/CarShowroom.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

<asp:Content ID="HeadCOntent" ContentPlaceHolderID="MainContentHolder" Runat="Server">
    <div>
    
        <table align="center" frame="box" style="width: 75%; height: 98px;">
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td align="left" class="style6">
                   <b> User Registration </b> </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="Label2" runat="server" Text=" Name"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="txtName" runat="server" Width="230px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidateName" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8" colspan="1" rowspan="1">
                    <asp:Label ID="Label1" runat="server" Text=" License Number"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtLicenseNo" runat="server" Width="230px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidateLicenseNo" runat="server" 
                        ControlToValidate="txtLicenseNo" ErrorMessage="License Num Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8" colspan="1" rowspan="1">
                    <asp:Label ID="Label3" runat="server" Text=" Mobile Number"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtMobNo" runat="server" Width="230px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidateMobNUmber" runat="server" 
                        ControlToValidate="txtMobNo" ErrorMessage="Mobile Num Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style16" colspan="1" rowspan="1">
                    <asp:Label ID="Label4" runat="server" Text=" Email"></asp:Label>
                </td>
                <td class="style17">
                    <asp:TextBox ID="txtEmail" runat="server" Width="230px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidateEmail" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8" colspan="1" rowspan="1">
                    <asp:Label ID="Label5" runat="server" Text=" Username"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtUsername" runat="server" Width="230px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidateUserNameRequired" runat="server" 
                        ControlToValidate="txtUsername" ErrorMessage="Username Required">Username Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style16" colspan="1" rowspan="1">
                    <asp:Label ID="Label6" runat="server" Text=" Password"></asp:Label>
                </td>
                <td class="style17">
                    <asp:TextBox ID="txtPassword" runat="server" Width="230px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidatePassword" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8" colspan="1" rowspan="1">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Button ID="btRegister" runat="server" Text=" Register" 
                        onclick="btRegister_Click" />
                </td>
            </tr>
        </table>
    
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style8
        {
            height: 41px;
            width: 346px;
        }
    .style16
    {
        height: 23px;
        width: 346px;
    }
    .style17
    {
        width: 736px;
        height: 23px;
    }
    </style>
</asp:Content>

