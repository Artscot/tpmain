<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="tpme.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="wrapper" class="container">
        <div class="row">
            <div class="col-sm-4">

            </div>
            <div class="col-sm-8">
                <form runat="server">
                    <div class="form-group">
                        <asp:RequiredFieldValidator Display="Dynamic" runat="server" ControlToValidate="username" Text="*" ErrorMessage="Username Required"></asp:RequiredFieldValidator>
                        <asp:Label runat="server" AssociatedControlID="username">Username:</asp:Label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="username"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:RegularExpressionValidator Display="Dynamic" runat="server" ControlToValidate="email" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="*" ErrorMessage="Not valid email."></asp:RegularExpressionValidator>
                        <asp:Label runat="server" AssociatedControlID="email">Email Address:</asp:Label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:RegularExpressionValidator Display="Dynamic" runat="server" ControlToValidate="password" ValidationExpression="^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$" Text="*" ErrorMessage="Password must contain atleast 8 characters, one digit and one special character(!£$%^etc..)"></asp:RegularExpressionValidator>
                        <asp:Label runat="server" AssociatedControlID="password">Password:</asp:Label>
                        <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:CompareValidator runat="server" ControlToCompare="password1" ControlToValidate="password" Display="Dynamic" Text="*" ErrorMessage="The passwords do not match"></asp:CompareValidator>
                        <asp:Label runat="server" AssociatedControlID="password1">Password:</asp:Label>
                        <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="password1"></asp:TextBox>
                    </div>
                    
                    <div class="row">
                      <div class="col-sm-6"> 
                        <asp:Button CssClass="searchGame roundborder btn-block" runat="server" Text="Register" />
                       </div>
                        <div class="col-sm-6"> 
                        <asp:ValidationSummary runat="server" />
                       </div>
                    </div>
                   
                </form>
            </div>
        </div>
    </div>
</asp:Content>
