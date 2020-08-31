<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpage.aspx.cs" Inherits="shopping_shop.forgotpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
       
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
<body>
    <form id="form1" runat="server">
    <div>
        <h1 class="auto-style1"> Shoppping Shop</h1>

    </div>
        <br />
        <br />
         <br />
        <br />

        <div>
      Enter your Email ID :   <asp:TextBox ID="TextBox1" runat="server" Width="183px"></asp:TextBox>
    </div>
            </form>
     <div style="position:relative;width:auto;text-align:right">
             
            About us: Shopping_shop@gmail.com customer care: +91987654321. ISO : @CopyRights 2005.
        </div>
</body>
</html>
