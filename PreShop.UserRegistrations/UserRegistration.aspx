<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="PreShop.UserRegistrations.UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-page">
        <div class="container">
            <h3 class="w3ls-title w3ls-title1">Create your account</h3>
            <div class="login-body">
                <asp:Label ID="lbl" runat="server" ForeColor="Green"></asp:Label>
                <asp:TextBox CssClass="user" ID="txtFirstName" runat="server" placeholder="Enter Your First Name"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtFirstName" ValidationGroup="g" runat="server" ErrorMessage="*Please Enter Your First Name" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                <asp:TextBox CssClass="user" ID="txtLastName" runat="server" placeholder="Enter Your Last Name"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtLastName" ValidationGroup="g" runat="server" ErrorMessage="*Please Enter Your Last Name" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                <asp:TextBox CssClass="user" ID="txtEmail" runat="server" placeholder="Enter Your Email"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtEmail" ValidationGroup="g" runat="server" ErrorMessage="*Please Enter Your Email Name" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="*Invalid Email Format" ForeColor="Red"></asp:RegularExpressionValidator>

                <asp:TextBox CssClass="user" ID="txtPassowrd" runat="server" placeholder="Enter Password " TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtPassowrd" ValidationGroup="g" runat="server" ErrorMessage="*Please Enter Your Password" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                <asp:TextBox CssClass="user" ID="txtConfirmPassword" runat="server" placeholder="Enter Confirm Password " TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtConfirmPassword" ValidationGroup="g" runat="server" ErrorMessage="*Please Enter Your Confirm Password" SetFocusOnError="true" ForeColor="Red" ></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtPassowrd" ControlToValidate="txtConfirmPassword" runat="server" ErrorMessage="*Password and Confirm Password Do Not Match" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>

                <asp:TextBox CssClass="user" ID="txtAddress" runat="server" placeholder="Enter Your Address"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtAddress" EnableClientScript="true" ValidationGroup="g" runat="server" ErrorMessage="*Please Enter Your Address" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:Button ID="btnSubmit" Text="Sign Up" ValidationGroup="g" runat="server" OnClick="btnSubmit_Click" />
                <div class="forgot-grid">
                    <label class="checkbox">
                        <input type="checkbox" name="checkbox"><i></i>Remember me</label>
                    <div class="forgot">
                        <a href="#">Forgot Password?</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <h6>Already have an account? <a href="Login.aspx">Login Now »</a> </h6>
        </div>
    </div>
</asp:Content>
