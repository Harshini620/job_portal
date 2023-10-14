<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jobregform.aspx.cs" Inherits="jobregform" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
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
.register-box{
  width: 700px;
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
.register-box h2{
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
            width: 185px;
        }
        .style2
        {
            width: 130px;
            color: #FFCC99;
        }
        .style3
        {
            height: 76px;
        }
    </style>
</head>
<body><form id="form1" runat="server">
    <div>
    <table align="center" class="register-box">
            <tr>
        <td colspan="2"><h2 align="center">JOB REGISTRATION FORM</h2></td>
    </tr>
    <tr>
                <td class="style2">First Name</td>
                <td>
                
                    <asp:TextBox ID="txtfName" runat="server" class="textbox"></asp:TextBox>
                
                </td>
                <td class="style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtfName" ErrorMessage="Enter First Name!" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
    </tr>
    <tr>
                <td class="style2">Last Name</td>
                <td>
                
                    <asp:TextBox ID="txtlname" runat="server" class="textbox"></asp:TextBox>
                
                </td>
                <td class="style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtlName" ErrorMessage="Enter Last Name!" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
    </tr>
    <tr>
                <td class="style2">Position</td>
                <td>
                
                    <asp:TextBox ID="txtposition" runat="server" class="textbox"></asp:TextBox>
                
                </td>
                <td class="style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtposition" ErrorMessage="Enter position!" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
    </tr>
    <tr>
                <td class="style2">Email</td>
                <td>
                
                    <asp:TextBox ID="txtemail" runat="server" class="textbox"></asp:TextBox>
                
                </td>
                <td class="style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="Enter email!" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
    </tr>
    <tr>
                <td class="style2">Phone number</td>
                <td>
                
                    <asp:TextBox ID="txtph" runat="server" class="textbox"></asp:TextBox>
                
                </td>
                <td class="style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtph" ErrorMessage="Enter phone number!" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
    </tr>
        
    <tr>
                <td class="style2">Resume Link</td>
                <td>
                
                    <asp:TextBox ID="txtres" runat="server" class="textbox"></asp:TextBox>
                
                </td>
                <td class="style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtres" ErrorMessage="Enter resume drive link!" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
    </tr>
    
    <tr>
                <td colspan="3" class="style3">
                
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                    <asp:Button ID="btnRegister" runat="server" onclick="btnRegister_Click" Text="REGISTER"  Width="150px" class="btn" BorderColor="#FFCC99"/>
                    <br />        
                </td>
    </tr>
    <tr>
                <td class="style2"></td>
                <td>
                    <asp:Label ID="lblInfo" runat="server"></asp:Label>
                </td>
                <td class="style1"></td>
            </tr>
    </table>
    </div>
    </form>
</body>
</html>
