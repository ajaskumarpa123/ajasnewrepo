<%@ Page Title="" Language="C#" MasterPageFile="~/CarShowroom.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="HeadCOntent" ContentPlaceHolderID="MainContentHolder" Runat="Server">
    <div>
    <table align="center" style="width: 99%;" frame="box">
        <tr>
            <td align="center" class="style11" colspan="2">
                SEARCH YOUR FAVOURITE CAR</td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Image ID="Image1" runat="server" Height="359px" 
                    ImageUrl="~/Images/Benz.jpg" Width="350px" />
            </td>
            <td class="style11">
                <table style="width: 100%; height: 128px;">
                    <tr>
                        <td class="style14">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Car Name"></asp:Label>
                        </td>
                        <td class="style14">
                            <asp:Label ID="lblCarName" runat="server">Benz AMO</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Milage"></asp:Label>
                        </td>
                        <td class="style13">
                            <asp:Label ID="lblMilage" runat="server">10</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <asp:Label runat="server" Font-Bold="True" Text="Price"></asp:Label>
                        </td>
                        <td class="style13">
                            <asp:Label ID="lblPrice" runat="server">Please Log in</asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <table style="width:100%;">
                    <tr>
                        <td class="style16">
                            <asp:Button ID="btPrev" runat="server" Text="Previous" onclick="btPrev_Click" />
                        </td>
                        <td class="style17">
                            <asp:Button ID="btNext" runat="server" Text="Next" Width="71px" 
                                style="margin-left: 0px" onclick="btNext_Click" />
                        </td>
                        <td class="style15">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <div>
    
    </div>
   </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style16
    {
        width: 110px;
    }
    .style17
    {
        width: 133px;
    }
</style>
</asp:Content>

