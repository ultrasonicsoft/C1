<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Packages.aspx.cs" Inherits="CheckIn.Web_Pages.Packages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table width="100%">
        <tr align="center">
            <td align="left" width="50%">
                <table style="background-color: #e6e6f5" width="100%" cellpadding-left="10">
                    <tr>
                        <td style="padding-left: 20px;">
                            <asp:Label ID="Label9" runat="server" Text="Select a Package"></asp:Label>
                        </td>
                        <td style="padding-left: 20px;">
                            <div class="controls">
                                <div class="space-2"></div>

                                <label class="inline">
                                    <asp:RadioButton ID="rbtnRegular" Checked="true" GroupName="Packages" runat="server" />
                                    <span class="lbl">Regular ($20 per month)</span>
                                </label>
                                &nbsp; &nbsp; &nbsp;
							<label class="inline">
                                <asp:RadioButton ID="rbtnPremium" GroupName="Packages" runat="server" />
                                <span class="lbl">Regular ($40 per month)</span>

                            </label>
                            </div>
                        </td>

                    </tr>
                    <tr Height="20px">
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="padding-left: 20px;" colspan="2" align="center">
                            <asp:Button ID="btnMakePayment" runat="server" Text="Make a Payment" CssClass="buttonPink"
                                OnClick="btnMakePayment_Click" />
                        </td>
                    </tr>
                </table>
            </td>
            <td align="left" width="50%">
                <table style="background-color: #e6e6f5" width="100%" cellpadding-left="10">
                    <tr>
                        <td style="padding-left: 20px;">
                            <asp:Label ID="Label11" runat="server" Text="Regular Package Information"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Premium Package Information"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left: 20px;"></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
