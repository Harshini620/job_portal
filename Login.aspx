<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>LOGIN</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600&display=swap');
*{
    font-family: 'Poppins', sans-serif;
}
body
{  
  background-image:url('images/bg4.jpg'); 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  height: 900;
}
.login-box{
  width: 500px;
  position: absolute;
  top: 30%; left: 50%;
  margin: 120px auto;  
  transform: translate(-50%,-50%);
  color: #adaaa6; 
  background-color:  #13131a;
  padding: 30px;
  border: 5;
  border-radius: .5em;
  border-color: #adaaa6;
}
.login-box h2{
  font-size: 25px;
  text-align: left;
  border-bottom: 2px solid #a5a4a3;
  padding: 13px 0;
  color: #FFCC99;
}
input[type="date"]::-webkit-calendar-picker-indicator{
  filter:invert(1);
}
.textbox{
    width: 80%;
    overflow: hidden;
    font-size: 10px;
    padding: 8px 0;
    margin: 8px 0;
    border-bottom: 1px solid #adaaa6;
}
.textbox i{
    width: 26px;
    float: left;
    text-align: center;
}
.textbox{
    border: none;
    outline: none;
    background: none;
    color: #adaaa6;
    font-size: 16px;
    width: 80%;
    float: left;
    margin: 0 10px;
    border-bottom: 1px solid #adaaa6;
}
.btn{
    display: inline-block;
    font-size: 1rem;
    color:#fff;
    text-transform: capitalize;
    background-color: #13131a;
    border-radius: .5rem;
        margin-bottom: 0px;
    }
.btn:hover{
   letter-spacing: .2rem;
}

    .style1
    {
        width: 393px;
        height: 45px;
    }
    .style2
    {
        width: 169px;
        height: 45px;
    }
    .style4
    {
        width: 393px;
        height: 48px;
    }
    .style5
    {
        width: 169px;
        height: 48px;
    }
    .style6
    {
        width: 214px;
    }

    .style7
    {
        width: 103px;
        height: 48px;
        color: #FFCC99;
    }
    .style8
    {
        width: 103px;
        color: #FFCC99;
        height: 45px;
    }

    .style9
    {
        height: 66px;
    }

</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body bgcolor="White" background="images/bg2.png">
    <form id="form1" runat="server">
    <div>   
    <table align="center" bgcolor="#FF3300" border="0" width="100" class="login-box">
    <tr>
         <td colspan="3"><h2 align="center">JOB PORTAL</h2></td>
    </tr>
    <tr>
        <td colspan="3"><h3 align="center" style="color: #FFCC99">LOGIN</h3></td>
    </tr>
    <tr>
                <td class="style7">Username</td>
                <td class="style4">
                
                    <asp:TextBox ID="txtName" placeholder="Enter username" runat="server" 
                        class="textbox"></asp:TextBox>
                
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="Enter Username!" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
    </tr>
        <tr>
                <td class="style8">Password</td>
                <td class="style1">
                
                    <asp:TextBox ID="txtpw" placeholder="Enter password" runat="server" class="textbox"></asp:TextBox>
                
                </td>
                <td class="style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtpw" ErrorMessage="Enter Password!" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
    </tr>
    <tr>
                <td colspan="3" class="style9">
                
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                    <asp:Button ID="btnlogin" runat="server" onclick="btnlogin_Click" Text="LOGIN"  
                        Width="150px" class="btn" BorderColor="#FFCC99"/>
                    <br />
                
                </td>
                
    </tr>
    <tr>
                <td class="style6" colspan="3">
                    <asp:Label ID="lblInfo" runat="server"></asp:Label>
                </td>
            </tr>
    </table>
    </div>
    </form>
</body>
</html>
