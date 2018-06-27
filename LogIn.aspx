<%@ Page Title="" Language="C#" MasterPageFile="~/CarShowroom.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>
<%@ MasterType VirtualPath="~/CarShowroom.master" %>

<asp:Content ID="HeadCOntent" ContentPlaceHolderID="MainContentHolder" Runat="Server">
    <div>
    
        <table align="center" frame="box" style="width: 81%;">
            <tr>
                <td class="style8">
                    <b>LOG IN<br />
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="You don't have an account?" 
                        Font-Italic="True" Font-Size="Small"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserRegistration.aspx">Register Here</asp:HyperLink>
                    </b></td>
                <td class="style18">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    <table align="center" frame="void" style="width:122%; margin-right: 0px;">
                        <tr>
                            <td class="style10" colspan="3">
                                <b><i>Acount Information</i></b></td>
                            <td class="style10">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10">
                                &nbsp;</td>
                            <td class="style16">
                                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                            </td>
                            <td class="style17">
                                <asp:TextBox ID="txtUsername" runat="server" Width="175px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtUsername" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                &nbsp;</td>
                            <td class="style16">
                                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                            </td>
                            <td class="style17">
                                <asp:TextBox ID="txtPassword" runat="server" Width="175px" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtPassword" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                &nbsp;</td>
                            <td class="style16">
                                &nbsp;</td>
                            <td class="style17">
                                <asp:Button ID="btSignIn" runat="server" Text="Sign In" 
                                    onclick="btSignIn_Click" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style8
        {
            width: 473px;
        }
        .style9
        {
            width: 135px;
        }
        .style10
        {
            height: 41px;
        }
    .style16
    {
        width: 268px;
        height: 23px;
    }
    .style17
    {
        width: 160px;
    }
    .style18
    {
        height: 41px;
        width: 54px;
    }
    </style>
</asp:Content>
