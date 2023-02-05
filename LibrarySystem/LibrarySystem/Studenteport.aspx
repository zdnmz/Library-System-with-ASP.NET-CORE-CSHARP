<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Studenteport.aspx.cs" Inherits="Studenteport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
    {
        width: 739px;
    }
        .style2
        {
            width: 202px;
        }
        .style3
        {
            text-align: right;
            color: black;
            width: 157px;
        }
        .style4
        {
            width: 561px;
        }
    .style5
    {
        text-align: right;
        color: black;
        width: 249px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            OGRENCI RAPORU</td>
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
                        Dal Seç :
                    </td>
                    <td class="style2">
                            <asp:DropDownList ID="drpbranch" runat="server" CssClass="txt">
                            </asp:DropDownList>
                            <asp:Button ID="Button11" runat="server" CssClass="btn" Text="Görüntüle" 
                                onclick="Button11_Click" />
                    </td>
                    <td class="lbl">
                            Öğrenci Adı :
                            <asp:TextBox ID="txtsearch" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:Button ID="btnseach" runat="server" CssClass="btn" 
                                onclick="btnseach_Click" Text="Görüntüle" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
                                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
                                <asp:MultiView ID="MultiView1" runat="server">
                                    <asp:View ID="View1" runat="server">
                                        <table class="tbl">
                                            <tr>
                                                <td class="tblhead">
                                                    <asp:Label ID="lbl" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                        BackColor="#EAEAEA" BorderColor="#D9D9D9" BorderWidth="1px" 
                                                        CellPadding="2" ForeColor="Black" GridLines="None" 
                                                        onrowcommand="GridView1_RowCommand" style="text-align: center" Width="748px">
                                                        <AlternatingRowStyle BackColor="lightgrey" />
                                                        <Columns>
                                                            <asp:BoundField DataField="StudentName" HeaderText="Öğrenci Adı" />
                                                            <asp:BoundField DataField="BranchName" HeaderText="Dal" />
                                                            <asp:BoundField DataField="Mobile" HeaderText="Telefon" />
                                                            <asp:TemplateField HeaderText="Görüntüle">
                                                                <ItemTemplate>
                                                                    <asp:LinkButton ID="lnkview" runat="server" CommandArgument='<%#Eval("sid") %>' 
                                                                        CssClass="lnk" Text="Görüntüle"></asp:LinkButton>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                        <FooterStyle BackColor="Tan" />
                                                        <HeaderStyle BackColor="#ACACAC" Font-Bold="True" />
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
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View2" runat="server">
                                        <table class="tbl">
                                            <tr>
                                                <td class="tblhead">
                                                    Öğrenci Ayrıntıları</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table align="center" class="style4">
                                                        <tr>
                                                            <td class="style5">
                                                                ID : </td>
                                                            <td>
                                                                <asp:Label ID="lblid" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style5">
                                                                Adı: </td>
                                                            <td>
                                                                <asp:Label ID="lblname" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style5">
                                                                Telefon :</td>
                                                            <td>
                                                                <asp:Label ID="lblmobile" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style5">
                                                                Adres: </td>
                                                            <td>
                                                                <asp:Label ID="lbladdress" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style5">
                                                                Şehir :</td>
                                                            <td>
                                                                <asp:Label ID="lblcity" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style5">
                                                                Pin Kodu : </td>
                                                            <td>
                                                                <asp:Label ID="lblpin" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style5">
                                                                Doğum Tarihi : </td>
                                                            <td>
                                                                <asp:Label ID="lbldob" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style5">
                                                                Dal : </td>
                                                            <td>
                                                                <asp:Label ID="lblbranch" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style5">
                                                                Email :
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblemai" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="lbl">
                                                                Şifre&nbsp; :
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblpass" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="lbl">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:Button ID="Button12" runat="server" CssClass="btn" 
                                                                    onclick="Button12_Click" Text="GERI" Width="80px" />
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

