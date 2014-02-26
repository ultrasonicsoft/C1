<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="CheckNewUser.aspx.cs" Inherits="CheckIn.CPA.CheckNewUser" %>

<%@ Register Src="~/CaptchaUserControl.ascx" TagPrefix="uc1" TagName="CaptchaUserControl" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="breadcrumbs" id="Div1">
                <ul class="breadcrumb">
                    <li>
                        <i class="icon-home home-icon"></i>
                        <a href="../Default.aspx" class="pink">Home</a>

                        <span class="divider">
                            <i class="icon-angle-right arrow-icon pink-Icon"></i>
                        </span>
                    </li>
                </ul>
                <!--.breadcrumb-->

                <div class="nav-search" id="nav-search">

                    <input type="text" id="txtCity" runat="server" value="Enter City" autocomplete="off" class="input-small nav-search-input" onclick="if (this.value == 'Enter City') { this.value = '' }"
                        onblur="if(this.value==''){this.value='Enter City'}">

                    <input type="text" id="txtZipCode" runat="server" value="Enter Zip Code" autocomplete="off" class="input-small nav-search-input" onclick="if (this.value == 'Enter Zip Code') { this.value = '' }"
                        onblur="if(this.value==''){this.value='Enter Zip Code'}">
                    <asp:LinkButton class="search_btn" ID="btnRefineSearch" runat="server" Text="" OnClick="btnRefineSearch_Click" />
                    <%--  <asp:Button ID="Button1" class="search_btn" runat="server" Text="" OnClick="btnRefineSearch_Click" />--%>
                </div>

                <%-- <asp:LinkButton class="search_btn" ID="LinkButton2" runat="server" Text="" OnClick="btnRefineSearch_Click" />--%>
            </div>
            <br />
            <%--<table width="100%" style="background-color: #e6e6f5" cellpadding="10px">
        <tr>
            <td width="10%">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/CompanyLogo.jpg" Height="40" />
            </td>
            <%--<td width="15%">
                        <asp:DropDownList ID="ddlSpeciality" runat="server" Width="100%">
                        </asp:DropDownList>
                    </td>
                    <td width="45%">
                        <asp:TextBox ID="txtZipCode" runat="server" Width="160px" Text="Enter Zip Code\City"></asp:TextBox>
                        &nbsp;
                        <asp:Button ID="btnRefineSearch" runat="server" Text="Refine Search" OnClick="btnRefineSearch_Click" />
                    </td>
                    <td width="25%">
                    </td>--%><%-- %>
            <td width="15%">
                <%-- <asp:DropDownList ID="ddlSpeciality" runat="server" Width="100%">
                        </asp:DropDownList>--%><%-- %>
                <input type="text" id="txtCity" runat="server" value="Enter City" onclick="if (this.value == 'Enter City') { this.value = '' }"
                    onblur="if(this.value==''){this.value='Enter City'}">
            </td>
            <td width="45%">
                <%-- <asp:TextBox ID="txtZipCode" runat="server" Width="160px" Text="Enter Zip Code\City"></asp:TextBox>--%><%--
                <input type="text" id="txtZipCode" runat="server" value="Enter Zip Code" onclick="if (this.value == 'Enter Zip Code') { this.value = '' }"
                    onblur="if(this.value==''){this.value='Enter Zip Code'}">
                &nbsp;
                        <asp:Button ID="btnRefineSearch" runat="server" Text="Refine Search" OnClick="btnRefineSearch_Click" />
            </td>
            <td width="25%"></td>
        </tr>
    </table>--%>

            <%--<table width="100%" style="background-color: #e6e6f5" cellpadding="8px">
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="1. Select CPA Appointment"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="2. Appointment Information" Font-Bold="true"></asp:Label>
            </td>
            <td style="background-color: #000079">
                <asp:Label ID="Label5" runat="server" ForeColor="White" Text="3. Personal Information"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="4. Finished!"></asp:Label>
            </td>
        </tr>
    </table>--%>
            <div class="page-content">
                <!--PAGE CONTENT BEGINS-->
                <div class="page_border">
                    <h1>Book Appointment</h1>
                    <div class="left_corner"></div>
                    <div class="wizard_strip">



                        <ul>
                            <li><a href="#">Select CPA Appointment</a></li>
                            <li><a href="#">Appointment Information</a></li>
                            <li><a href="#" class="active">Personal Information</a></li>
                            <li><a href="#">Finished!</a></li>
                        </ul>
                    </div>
                    <table width="100%">
                        <tr>
                            <td width="70%">
                                <asp:Panel ID="pnlLoggedIn" runat="server" Visible="False">
                                    <table cellpadding="5px" width="100%">
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblUserName" runat="server" Text="LoggedIn User" Font-Bold="True"></asp:Label>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <asp:Button ID="btnContinue" runat="server" Text="Continue" OnClick="btnContinue_Click" />
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:LinkButton ID="lnkBtnLoggedOut" runat="server" OnClick="lnkBtnLoggedOut_Click"></asp:LinkButton>
                                            </td>

                                        </tr>

                                    </table>
                                </asp:Panel>
                                <asp:Panel ID="pnlNotLoggedIn" runat="server">
                                    <table cellpadding="5px" width="100%">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Text="Have you visited this site before?" Font-Bold="True"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="btnNewUser" runat="server" Text="I am new to this site" OnClick="btnNewUser_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Button ID="btnRegisteredUser" runat="server" Text="I have used this site before"
                                                    OnClick="btnRegisteredUser_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="btnBack" runat="server" Text="<< Back"
                                                    OnClick="btnBack_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>


                                                <asp:Panel ID="pnlNewUser" runat="server" Visible="false">
                                                    <table style="background-color: #e6e6f5" width="100%" cellpadding-left="10">
                                                        <tr>
                                                            <td style="padding-left: 20px;">
                                                                <asp:Label ID="Label2" runat="server" Text="Create an account!" Font-Bold="True"></asp:Label>
                                                                <br />
                                                                <asp:Label ID="Label9" runat="server" Text="It only takes few minutes"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-left: 20px;">
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td width="15%">
                                                                            <asp:Label ID="Label10" runat="server" Text="Email"></asp:Label>
                                                                        </td>
                                                                        <td valign="middle">
                                                                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email can not be empty" Text="*" SetFocusOnError="true"
                                                                                ControlToValidate="txtEmail" ValidationGroup="signUpValidation" ForeColor="Red"></asp:RequiredFieldValidator>
                                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email Address " ControlToValidate="txtEmail"
                                                                                Text="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="signUpValidation" ForeColor="Red"></asp:RegularExpressionValidator>

                                                                            <asp:CustomValidator ID="CustomValidator2" Text="*" runat="server" ForeColor="Red" ValidationGroup="signUpValidation" ErrorMessage="Email not Exist"></asp:CustomValidator>

                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-left: 20px;">
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td width="15%">
                                                                            <asp:Label ID="Label11" runat="server" Text="Generate a Password"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password can not be empty" SetFocusOnError="true" Text="*"
                                                                                ControlToValidate="txtPassword" ValidationGroup="signUpValidation" ForeColor="Red"></asp:RequiredFieldValidator>
                                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red" ControlToValidate="txtPassword"
                                                                                ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ValidationGroup="signUpValidation" SetFocusOnError="true" Text="*"
                                                                                ErrorMessage="Contain 8 to 10 characters, one digit and one alphabetic character and must not contain special characters."></asp:RegularExpressionValidator></td>
                                                                    </tr>
                                                                </table>

                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="padding-left: 20px;">
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td width="15%">
                                                                            <asp:Label ID="Label12" runat="server" Text="First Name"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtFirstName"  runat="server"></asp:TextBox>
                                                                            <asp:CustomValidator ID="CustValFisrtName" runat="server" ValidationGroup="signUpValidation" Text="*" ForeColor="Red" ControlToValidate="txtFirstName"></asp:CustomValidator>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="padding-left: 20px;">
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td width="15%">
                                                                            <asp:Label ID="Label20" runat="server" Text="Last Name"></asp:Label>
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
                                                                        <td width="15%">
                                                                            <asp:Label ID="Label13" runat="server" Text="Date of Birth"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                                                                            <ajaxToolkit:CalendarExtender
                                                                                ID="CalendarExtender1"
                                                                                TargetControlID="txtDOB"
                                                                                runat="server" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td style="padding-left: 20px;">
                                                                <asp:Label ID="Label14" runat="server" Text="Gender"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-left: 20px;">
                                                                <table width="90%">
                                                                    <tr>
                                                                        <td align="left" width="50%">
                                                                            <asp:RadioButton ID="rbtnMale" Checked="true" GroupName="rgrpGendar" runat="server" Text="Male" />
                                                                            &nbsp;&nbsp;
                                                                <asp:RadioButton ID="rbtnFemale" GroupName="rgrpGendar" runat="server" Text="Female" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-left: 20px;">
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td width="15%">
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
                                                                <asp:Label ID="Label21" runat="server" Text="Image"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-left: 20px;">
                                                                <table width="90%">
                                                                    <tr>
                                                                        <td align="left" width="50%">
                                                                            <asp:FileUpload ID="ImageUpload" runat="server" Width="325px" />
                                                                            <asp:Label ID="lblFile" runat="server" Visible="false"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                </table>
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
                                                            <td style="padding-left: 20px;">
                                                                <asp:CheckBox ID="cbAcceptTerms" runat="server" Text="I accept Terms and Conditions" ValidationGroup="signUpValidation" />
                                                                <br />
                                                                <asp:CustomValidator ID="valTermsConditions" runat="server" ForeColor="Red" ErrorMessage="Please accept Terms And Condition!"
                                                                    ValidationGroup="signUpValidation" Visible="false"></asp:CustomValidator>
                                                                <asp:ValidationSummary ID="signUpValidation" ValidationGroup="signUpValidation" runat="server"
                                                                    DisplayMode="BulletList" CssClass="validationSummary" ForeColor="Red"></asp:ValidationSummary>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <br />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-left: 20px;">
                                                                <asp:Button ID="btnSignUp" runat="server" Text="Sign Up"
                                                                    OnClick="btnSignUp_Click" ValidationGroup="signUpValidation" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <br />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Panel ID="pnlRegisteredUser" runat="server" Visible="false">
                                                    <table width="100%">
                                                        <tr>
                                                            <td align="left">
                                                                <table style="background-color: #e6e6f5" width="100%" cellpadding-left="10">
                                                                    <tr>
                                                                        <td style="padding-left: 20px;">
                                                                            <asp:Label ID="Label16" runat="server" Text="Sign In" Font-Bold="True"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="padding-left: 20px;">
                                                                            <asp:Label ID="Label17" runat="server" Text="Email"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="padding-left: 20px;">
                                                                            <asp:TextBox ID="txtLoginEmail" Width="30%" runat="server"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email can not be empty" SetFocusOnError="true"
                                                                                Text="*" ControlToValidate="txtLoginEmail" ForeColor="Red" ValidationGroup="loginControl"></asp:RequiredFieldValidator>
                                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Invalid Email Address "
                                                                                Text="*" SetFocusOnError="true" ControlToValidate="txtLoginEmail" ValidationGroup="loginControl"
                                                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>

                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="padding-left: 20px;">
                                                                            <asp:Label ID="Label18" runat="server" Text="Password"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="padding-left: 20px;">
                                                                            <asp:TextBox ID="txtLoginPassword" TextMode="Password" Width="30%" runat="server"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password can not be empty"
                                                                                Text="*" ControlToValidate="txtLoginPassword" ForeColor="Red" ValidationGroup="loginControl" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="padding-left: 20px;">
                                                                            <asp:Label ID="Label19" runat="server" Text="Forgot your password?"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:CustomValidator ID="loginValidation" runat="server" ForeColor="Red" ErrorMessage="Login failed. Please check your username and password."
                                                                                ValidationGroup="loginControl" Visible="false" SetFocusOnError="true"></asp:CustomValidator>
                                                                            <asp:ValidationSummary ID="ValidationSummary" ValidationGroup="loginControl" runat="server"
                                                                                DisplayMode="BulletList" CssClass="validationSummary" ForeColor="Red"></asp:ValidationSummary>
                                                                            <br />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="padding-left: 20px;">
                                                                            <asp:Button ID="btnSignIn" runat="server" Text="Sign In" OnClick="btnSignIn_Click" ValidationGroup="loginControl" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <br />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>

                                    </table>
                                </asp:Panel>
                            </td>
                            <td valign="top">
                                <%--<table width="100%">
                    <tr>
                        <td width="30%">
                            <a href="CPADetailsInfo.aspx">
                                <asp:Image ID="imgCPA" Height="150" Width="150" runat="server"></asp:Image></a>
                        </td>
                        <td>
                            <asp:HyperLink ID="lnkCPADetail" runat="server">CPA Company Name</asp:HyperLink>
                            <br />
                            <asp:Label ID="lblName" runat="server" Text="CPA Name"></asp:Label>
                            <br />
                            <asp:Label ID="lblAddress1" runat="server" Text="Address 1"></asp:Label>
                            <br />
                            <asp:Label ID="lblAddress2" runat="server" Text="Address 2"></asp:Label>
                            <br />
                            <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                            <br />
                            <asp:Label ID="lblZipCode" runat="server" Text="Zip Code"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Schedule" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblScheduleDate" runat="server" Text="[Schedule Date]"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="Label8" runat="server" Text="Purpose of Visit" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblPurposeOfVisit" runat="server" Text="[Purpose of Visit]"></asp:Label>
                        </td>
                    </tr>
                </table>--%>
                                <table class="DocTable">
                                    <tr>
                                        <td rowspan="1">
                                            <br />
                                            <%--  <a href='<%# "CPADetailsInfo.aspx?CPAID="+Eval("CPAID") %>' class="">--%>
                                            <a class="" href="CPADetailsInfo.aspx"><span class="profile-picture"><%-- <asp:Image ID="Image1" Height="150" Width="150" runat="server" ImageUrl='<%# Eval("CPAID", "ImageCSharp.aspx?QueryCPAID={0}")%>'></asp:Image>--%>
                                                <asp:Image ID="imgCPA" runat="server" Height="150" Width="150" />
                                            </span></a>
                                            <br />
                                            <%--<a href='<%# "CPADetails.aspx" %>'> <asp:Image ID="Image1" Height="200" Width="250" runat="server" ImageUrl='<%# Eval("CPAID", "ImageCSharp.aspx?QueryCPAID={0}")%>'  ></asp:Image></a>--%></td>
                                        <%--</tr>
                                     <tr>--%>
                                        <td>
                                            <asp:HyperLink ID="lnkCPADetail" runat="server" CssClass="pink" Font-Bold="true" Font-Size="Medium">CPA Company Name</asp:HyperLink>
                                            <br />
                                            <asp:Label ID="lblName" runat="server" Text="CPA Name"></asp:Label>
                                            <br />
                                            <asp:Label ID="lblAddress1" runat="server" Text="Address 1"></asp:Label>
                                            <br />
                                            <asp:Label ID="lblAddress2" runat="server" Text="Address 2"></asp:Label>
                                            <br />
                                            <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                                            <br />
                                            <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                                            <br />
                                            <asp:Label ID="lblZipCode" runat="server" Text="Zip Code"></asp:Label>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text="Schedule" Font-Bold="True"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="lblScheduleDate" runat="server" Text="[Schedule Date]"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label8" runat="server" Text="Purpose of Visit" Font-Bold="True"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="lblPurposeOfVisit" runat="server" Text="[Purpose of Visit]"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
