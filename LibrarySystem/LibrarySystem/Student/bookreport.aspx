﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="bookreport.aspx.cs" Inherits="bookreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
        .style2
        {
            text-align: right;
            color: black;
            width: 362px;
        }
        .style3
        {
            text-align: right;
            color: #040404;
            width: 345px;
        }
        .style4
        {
            width: 717px;
        }
        .style5
        {
            font-weight: 700;
        }
        .style6
        {
            width: 216px;
        }
        .style7
        {
            width: 452px;
        }
        .style8
        {
            height: 183px;
        }
        .style9
        {
            height: 45px;
        }
        .style10
        {
            text-align: right;
            color: black;
            width: 113px;
        }
        .auto-style1 {
            text-align: right;
            color: black;
            width: 151px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Kitabı Görüntüle</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table class="style1">
                <tr>
                    <td class="style3">
                        Dal Seçin :
                            <asp:DropDownList ID="drpbranch" runat="server" CssClass="txt">
                            </asp:DropDownList>
                            <asp:Button ID="btnviewbranch" runat="server" CssClass="btn" Text="Görüntüle" 
                            onclick="btnviewbranch_Click" />
                    </td>
                    <td class="style2">
                        Yayın Seçin :
                            <asp:DropDownList ID="drppublication" runat="server" CssClass="txt">
                            </asp:DropDownList>
                            <asp:Button ID="btnviewpublication" runat="server" CssClass="btn" 
                            Text="Görüntüle" onclick="btnviewpublication_Click" />
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
                <asp:View ID="View1" runat="server">
                    <table class="tbl">
                        <tr>
                            <td class="tblhead">
                                <asp:Label ID="lblmsg0" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    Width="748px" BackColor="#EAEAEA" BorderColor="#D9D9D9" 
                                    BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" 
                                    onrowcommand="GridView1_RowCommand" style="text-align: center">
                                    <AlternatingRowStyle BackColor="#cecece" />
                                    <Columns>
                                        <asp:BoundField DataField="bookname" HeaderText="Kitap Adı" />
                                        <asp:BoundField DataField="Price" HeaderText="Fiyat" />
                                        <asp:BoundField DataField="Quantities" HeaderText="Miktarı" />
                                        <asp:BoundField DataField="Availableqnt" HeaderText="Mevcut Miktar" />
                                        <asp:BoundField DataField="RentQnt" HeaderText="Kira Bedeli" />
                                        <asp:TemplateField HeaderText="Görüntüle">
                                        <ItemTemplate>
                                        <asp:LinkButton runat="server"  ID="lnkview" Text="Görüntüle" CommandArgument='<%#Eval("Bookid") %>' CssClass="lnk"></asp:LinkButton>
                                        </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="Tan" />
                                    <HeaderStyle BackColor="#C1C1C1" Font-Bold="True" />
                                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                        HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <table class="tbl">
                        <tr>
                            <td class="tblhead">
                                Kitap Özellikleri </td>
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
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style6" rowspan="3">
                                            <asp:Image ID="Image2" runat="server" Height="228px" Width="207px" />
                                        </td>
                                        <td class="style8" valign="top">
                                            <table class="style7">
                                                <tr>
                                                    <td class="auto-style1" style="font-size: medium">
                                                        Yazar :</td>
                                                    <td>
                                                        <asp:Label ID="lblauthor" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style1" style="font-size: medium">
                                                        Yayın :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblpub" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style1" style="font-size: medium">
                                                        Dal :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblbran" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style1" style="font-size: medium">
                                                        Fiyat :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblprice" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style1" style="font-size: medium">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style1" style="font-size: medium">
                                                        Total Miktar :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblqnt" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style1" style="font-size: medium">
                                                        Mevcut Miktar :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblaqnt" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style1" style="font-size: medium">
                                                        Kiralama Miktarı :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblrqnt" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style9" valign="top">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ayrıntı :
                                            <asp:Label ID="lbldetail" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style9" valign="top">&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button11" runat="server" CssClass="btn" 
                                    onclick="Button11_Click" Text="Geri" Width="80px" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
        </td>
    </tr>
</table>
</asp:Content>

