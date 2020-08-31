<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="shopping_shop.loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In </title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        #logo h1{
            color:white;
            text-align:center;
            padding-top:90px;
        }
        #logo{
            width:auto;
            height:200px;
        } 
        #sign {
            text-align:center;
        }  
        .btn {
            background-color: #808080;
             font-family:'Courier';
     border-radius:12%;
     color: white;
     padding: 4px 10px;
     text-align: center;
     text-decoration:none;
     display: inline-block;
     font-size: 16px;
     margin: 4px 2px;
     cursor: pointer;
          }
        body{
            color:white;
            font-family:"Courier";
            font-weight: 700;
            font-weight:bold;
           background-image:url('file:///C:/Users/local%20pc/Documents/Visual%20Studio%202013/Projects/shopping_shop/shopping_shop/image/blacky.jpg');
        }
    </style>
    

</head>
   
<body >
    <form id="form1" runat="server">
    <div id="logo">
        <h1 class="auto-style1">Shopping Shop</h1>
       
    </div>
        <div>
            <br />
            User Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="lgnamebox" runat="server" Width="248px"></asp:TextBox>
            <br />
            <br />
            Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="lgpassword" runat="server" Width="253px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="forgotlink" runat="server" OnClick="forgotlink_Click" style="color: #FF9933">Forgot Password?</asp:LinkButton>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="loginbtn" runat="server" Text="Login" OnClick="loginbtn_Click" class="btn" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="cancelbtn" runat="server" Text="Cancel" OnClick="cancelbtn_Click" class="btn"/>
            <br />
        </div>
        <div id="sign" class="auto-style1">
            <p>--------------------OR--------------------</p>
            <div>
            Regiser For New User Account.<br />
                <br />
&nbsp;<asp:Button ID="signinbtn" runat="server" Text="Sign In" OnClick="signinbtn_Click" class="btn" />
            </div>

        </div>

        
    </form>
       <div style="position:relative;width:auto;text-align:right">
             
            About us: Shopping_shop@gmail.com customer care: +91987654321. ISO : @CopyRights 2005.
        </div>
          
           
</body>

            
</html>
