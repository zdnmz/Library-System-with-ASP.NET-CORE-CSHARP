<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Panalty.aspx.cs" Inherits="Panalty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 747px;
        }
        .style4
        {
            width: 717px;
            height: 276px;
        }
        .style5
        {
            font-weight: 700;
        }
        .style6
        {
            width: 216px;
        }
        .style8
        {
            height: 183px;
        }
        .style7
        {
            width: 452px;
            height: 222px;
        }
        .style16
        {
            text-align: right;
            color: black;
            width: 153px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                CEZA FORMU</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="lbl">
                            Ceza Alan Kullanıcıyı Seç :</td>
                        <td>
                            <asp:DropDownList ID="drpstudent" runat="server" CssClass="txt" 
                                AutoPostBack="True" onselectedindexchanged="drpstudent_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td class="lbl">
                            Kitap&nbsp; Seç :
                        </td>
                        <td>
                            <asp:DropDownList ID="drpbook" runat="server" CssClass="txt">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="Button12" runat="server" CssClass="btn" 
                                onclick="Button12_Click" Text="Seç" Width="70px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View2" runat="server">
                    <table class="tbl">
                        <tr>
                            <td class="tblhead">
                                Kitap Ayrıntılarını Görüntüle </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="style4">
                                    <tr>
                                        <td class="style5" colspan="2">
                                            Kitap Adı :
                                            <asp:Label ID="lblbname" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style6">
                                            <asp:Image ID="Image2" runat="server" Height="211px" Width="207px" 
                                                BorderColor="#009933" BorderStyle="Dotted" BorderWidth="1px" />
                                        </td>
                                        <td class="style8" valign="top">
                                            <table class="style7">
                                                <tr>
                                                    <td class="style16" style="font-size: medium">
                                                        Yazar :</td>
                                                    <td>
                                                        <asp:Label ID="lblauthor" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style16" style="font-size: medium">
                                                        Yayın :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblpub" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style16" style="font-size: medium">
                                                        Dal :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblbran" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style16" style="font-size: medium">
                                                        Fiyat :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblprice" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style16" style="font-size: medium">
                                                        Öğrenci Adı: </td>
                                                    <td>
                                                        <asp:Label ID="lblstudent" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style16" style="font-size: medium">
                                                        Günler :</td>
                                                    <td>
                                                        <asp:Label ID="lbldays" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style16" style="font-size: medium">
                                                        Veriliş Tarihi :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblidate" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style16" style="font-size: medium">
                                                        Ceza Durumu:
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblpanalty" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style16" style="font-size: medium">
                                                        Ceza Tutarı :</td>
                                                    <td>
                                                        <asp:TextBox ID="txtpanalty" runat="server" CssClass="txt" Width="80px"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style16" style="font-size: medium">
                                                        Nedeni :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtdetail" runat="server" CssClass="txt" Height="40px" 
                                                            TextMode="MultiLine" Width="200px"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style16" style="font-size: medium">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Button ID="btnpaypanalty" runat="server" CssClass="btn" 
                                                            onclick="btnpaypanalty_Click" Text="Şimdi Öde" Width="90px" />
                                                        <asp:Label ID="lblpay" runat="server" Font-Size="10pt"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

