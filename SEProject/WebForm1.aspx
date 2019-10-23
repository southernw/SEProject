<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SEProject.WebForm1" %>

<!DOCTYPE html>
<link href=”css/bootstrap.min.css” rel=”stylesheet”>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    

    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 183px;
        }
        .auto-style2 {
            width: 601px;
        }
        .auto-style3 {
            width: 183px;
            height: 30px;
        }
        .auto-style4 {
            width: 601px;
            height: 30px;
        }
        .auto-style5 {
            height: 30px;
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        Username</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtUsername" runat="server" Width="160px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="160px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="Repeat Password"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
                        <asp:CompareValidator ID="cvPassword2" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPassword2" Display="Dynamic" ErrorMessage="*Passwords do not match." ForeColor="Red"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="rfvPassword2" runat="server" ControlToValidate="txtPassword2" Display="Dynamic" ErrorMessage="*This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <p>
            Password must be between 8 to 16 characters, include one uppercase letter, one digit, one symbol, and no spaces.</p>
        <p>
            <asp:Button ID="button1" runat="server" OnClick="button1_Click" Text="Sign Up" />
            <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" CausesValidation="false" Text="Login" Width="87px" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" CausesValidation="false" Text="Reset" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="*Password does not meet specifications" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [username] = @username" InsertCommand="INSERT INTO [User] ([username], [email], [password]) VALUES (@username, @email, @password)" SelectCommand="SELECT * FROM [User]" UpdateCommand="UPDATE [User] SET [email] = @email, [password] = @password WHERE [username] = @username">
                <DeleteParameters>
                    <asp:Parameter Name="username" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtUsername" Name="username" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtEmail" Name="email" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtPassword" Name="password" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
