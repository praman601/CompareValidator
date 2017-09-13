<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CompareValidator.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <b>Password:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b> Retype Password:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtRetypePassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidatorpassword" runat="server" ErrorMessage="Password and Retype password doesnot match"
                            ControlToValidate="txtRetypePassword" ControlToCompare="txtPassword" Operator="Equal" Type="String" ForeColor="Red" ></asp:CompareValidator>
                    </td>

                </tr>
                <tr>
                    <td>
<b>Date of Application:
</b>

                    </td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidatortxtDate" runat="server" ErrorMessage="Date should be greater than 01/01/2012"
                            ControlToValidate="txtDate" ValueToCompare="01/01/2012" Operator="GreaterThan" Type="Date" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Age:</b>
                       
                    </td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidatorage" runat="server" ErrorMessage="Age must be number"
                            ControlToValidate="txtAge" Operator="DataTypeCheck" type="Integer" ForeColor="Red"></asp:CompareValidator>


                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblStatus" runat="server" Text="Status"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
