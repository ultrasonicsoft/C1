<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="CheckIn.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table width="100%">
                <tr valign="middle">
                    <td colspan="4" align="center">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" width="25%">
                        <asp:DropDownList ID="ddlState" CssClass="select2" Style="margin-bottom: 7px;" ClientIDMode="Static" runat="server" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" AutoPostBack="true" AppendDataBoundItems="True">
                        </asp:DropDownList>
                    </td>
                    <td align="center" width="25%">
                        <asp:DropDownList ID="ddlCity" CssClass="select2" Style="margin-bottom: 7px;" ClientIDMode="Static" runat="server" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged" AutoPostBack="true" AppendDataBoundItems="True">
                        </asp:DropDownList>
                    </td>

                    <td class="auto-style1" align="center" width="5%">OR\AND</td>
                    <td width="45%">

                        <input type="text" id="txtZipCode" runat="server" value="Enter Zip Code" onclick="if (this.value == 'Enter Zip Code') { this.value = '' }"
                            onblur="if(this.value==''){this.value='Enter Zip Code'}">
                        <asp:CustomValidator ID="CustomValidator1" ForeColor="Red" runat="server" ErrorMessage="Enter correct Zip Code" ControlToValidate="txtZipCode"></asp:CustomValidator>

                    </td>
                </tr>
                <tr>
                    <td colspan="4" align="center">
                        <asp:Button ID="btnSearchCPA" runat="server" Text="Search CPA"
                            OnClick="btnSearchCPA_Click" />
                        <%--<asp:Button ID="Button1" runat="server" Text="Calendar" onclick="Button1_Click" 
                            />--%>
                        <%--<asp:Button ID="Button2" runat="server" Text="Appointments" onclick="Button2_Click" 
                            />
                    </td>--%>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
