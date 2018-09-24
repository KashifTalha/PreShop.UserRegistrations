<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PreShop.UserRegistrations.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-page">
        <div class="container">
            <h3 class="w3ls-title w3ls-title1">Login to your account</h3>
            <div class="login-body">
                    <asp:Label ID="lbl" runat="server" ForeColor="Green"></asp:Label>
                    <asp:TextBox CssClass="user" ID="txtEmail" runat="server" placeholder="Enter Your Email"></asp:TextBox>
                     <asp:RequiredFieldValidator ControlToValidate="txtEmail" ValidationGroup="grp" runat="server" ErrorMessage="*Please Enter Your Email" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="*Invalid Email Format" ForeColor="Red"></asp:RegularExpressionValidator>

                    <asp:TextBox CssClass="user" ID="txtPassword" TextMode="Password" runat="server" placeholder="Enter Your Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ControlToValidate="txtPassword" ValidationGroup="grp" runat="server" ErrorMessage="*Please Enter Your Password" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                    <asp:Button ID="btnLogin" Text="Login" ValidationGroup="grp" runat="server" OnClick="btnLogin_Click"  />
                    <div class="forgot-grid">
                        <label class="checkbox">
                            <input type="checkbox" runat="server" id="checkbox"><i></i>Remember me</label>
                        <div class="forgot">
                            <a href="#">Forgot Password?</a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
            </div>
            <h6>Not a Member? <a href="signup.html">Sign Up Now »</a> </h6>
            <div class="login-page-bottom social-icons">
                <h5>Recover your social account</h5>
                <ul>
                    <li><a href="#" class="fa fa-facebook icon facebook"></a></li>
                    <li><a href="#" class="fa fa-twitter icon twitter"></a></li>
                    <li><a href="#" class="fa fa-google-plus icon googleplus"></a></li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
