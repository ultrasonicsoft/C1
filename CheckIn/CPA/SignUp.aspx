<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="SignUp.aspx.cs" Inherits="CheckIn.Web_Pages.SignUp" %>

<%@ Register Src="~/CaptchaUserControl.ascx" TagPrefix="uc1" TagName="CaptchaUserControl" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table width="100%">
                <tr align="center">
                    <td width="50%">
                        <asp:Label ID="Label9" runat="server" Text="I am CPA" Font-Bold="True"></asp:Label>
                        <br />
                        <asp:Label ID="Label10" runat="server" Text="This website can help your business Grow"></asp:Label>
                        <br />
                        <asp:HyperLink ID="lnkLearnMore" NavigateUrl="~/CPA/LearnMore.aspx" runat="server">Learn More</asp:HyperLink>
                    </td>
                    <td align="left">
                        <table style="background-color: #e6e6f5" width="100%" cellpadding-left="10">
                            <tr>
                                <td style="padding-left: 20px;">
                                    <asp:Label ID="Label4" runat="server" Text="Create an account!" Font-Bold="True"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Text="It only takes few minutes"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left: 20px;">
                                    <table width="100%">
                                        <tr>
                                            <td width="20%">
                                                <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtEmail"  runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email can not be empty" SetFocusOnError="true" Text="*"
                                                    ControlToValidate="txtEmail" ForeColor="Red" ValidationGroup="signUpValidation"></asp:RequiredFieldValidator>

                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Email Address" Text="*" ControlToValidate="txtEmail"
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="signUpValidation" ForeColor="Red"></asp:RegularExpressionValidator>

                                                <asp:CustomValidator ID="CustomValidator1" runat="server" ForeColor="Red" ErrorMessage="Email not Exist" ValidationGroup="signUpValidation" Text="*"></asp:CustomValidator>

                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left: 20px;">
                                    <table width="100%">
                                        <tr>
                                            <td width="20%">
                                                <asp:Label ID="Label3" runat="server" Text="Generate Password"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtPassword" TextMode="Password"  runat="server"></asp:TextBox>

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password can not be empty" Text="*"
                                                    ControlToValidate="txtPassword" ValidationGroup="signUpValidation" ForeColor="Red"></asp:RequiredFieldValidator>

                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red" ControlToValidate="txtPassword"
                                                    ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ValidationGroup="signUpValidation" Text="*"
                                                    ErrorMessage="Contain 8 and 10 characters, one digit and one alphabetic character, and must not contain special characters."></asp:RegularExpressionValidator>


                                            </td>
                                        </tr>
                                    </table>

                                </td>

                            </tr>

                            <tr>
                                <td width="100%" style="padding-left: 20px;">
                                    <table width="100%">
                                        <tr>
                                            <td width="20%">
                                                <asp:Label ID="Label13" runat="server" Text="First Name"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                                                <asp:CustomValidator ID="CustValFisrtName" ValidationGroup="signUpValidation" runat="server" ForeColor="Red" ControlToValidate="txtFirstName" Text="*"></asp:CustomValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="20%">
                                                <asp:Label ID="Label16" runat="server" Text="Last Name"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                                                <asp:CustomValidator ID="CustValLastName" ValidationGroup="signUpValidation" Text="*" runat="server" ForeColor="Red" ControlToValidate="txtLastName"></asp:CustomValidator>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left: 20px;">
                                    <table width="100%">
                                        <tr>
                                            <td width="20%">
                                                <asp:Label ID="Label6" runat="server" Text="Date Of Birth"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtDateOfBirth" runat="server"></asp:TextBox>
                                                <ajaxToolkit:CalendarExtender
                                                    ID="CalendarExtender1"
                                                    TargetControlID="txtDateOfBirth"
                                                    runat="server" />

                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left: 20px;"></td>
                            </tr>
                            <tr>
                                <td style="padding-left: 20px;">
                                    <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left: 20px;">
                                    <asp:RadioButton ID="rbtnMale" Checked="true" Text="Male" GroupName="Gender" runat="server" />
                                    <asp:RadioButton ID="rbtnFemale" Text="Female" GroupName="Gender" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left: 20px;">
                                    <table width="100%">
                                        <tr>
                                            <td width="20%">
                                                <asp:Label ID="Label15" runat="server" Text="Phone Number"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtPhNumberPart1" Width="150" MaxLength="3" runat="server" Height="22px"></asp:TextBox>
                                                <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender2" runat="server"
                                                    TargetControlID="txtPhNumberPart1"
                                                    Mask="999-999-9999"
                                                    ClearMaskOnLostFocus="false"
                                                    MessageValidatorTip="true"
                                                    OnFocusCssClass="MaskedEditFocus"
                                                    OnInvalidCssClass="MaskedEditError"
                                                    MaskType="None"
                                                    InputDirection="LeftToRight"
                                                    AcceptNegative="Left"
                                                    DisplayMoney="Left" Filtered="-"
                                                    ErrorTooltipEnabled="True" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left: 20px;">
                                    <asp:Label ID="Label14" runat="server" Text="Image"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left: 20px;">
                                    <asp:FileUpload ID="ImageUpload" runat="server" Width="319px" />

                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left: 20px;">

                                    <%--<asp:Image  ImageUrl="~/CPA/GenerateCaptcha.ashx"  runat="server"/>
                            <asp:Button ID="btnReGenerate" runat="server"
                                text=" Regenrate captch" OnClick="btnReGenerate_Click" />--%>
                                    <uc1:CaptchaUserControl runat="server" ID="CaptchaUserControl" />

                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left: 20px;">

                                    <asp:TextBox ID="txtCaptchaText" runat="server" Width="250px" Height="28px"></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left: 20px;">

                                    <asp:Label ID="lblStatus" runat="server"></asp:Label>

                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:CheckBox ID="cbTermCondition" runat="server" Checked="true" Text="I accept Terms and Conditions" ValidationGroup="signUpValidation" />
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left: 20px;">
                                    <asp:CustomValidator ID="valTermsConditions" runat="server" ErrorMessage="Please accept Terms And Condition!" ForeColor="Red" ValidationGroup="signUpValidation" Visible="false"></asp:CustomValidator>
                                    <br />
                                    <asp:ValidationSummary ID="signUpValidation" runat="server" CssClass="validationSummary" DisplayMode="BulletList" ForeColor="Red" ValidationGroup="signUpValidation" />
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left: 20px;">
                                    <asp:Button ID="btnSignUp" runat="server" OnClick="btnSignUp_Click" Text="Sign Up" ValidationGroup="signUpValidation" CausesValidation="true" />
                                </td>
                            </tr>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
