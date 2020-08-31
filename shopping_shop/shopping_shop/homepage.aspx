<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="shopping_shop.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage</title>
  
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        #index{
            border:5px solid black;
            padding:4px 7px 2px 4px;
            width:auto;
        }
        .auto-style2 {
            text-decoration: underline;
        }
        
            body{
            color:white;
            font-family:"Courier";
            font-weight: 700;
            font-weight:bold;
           background-image:url('file:///C:/Users/local%20pc/Documents/Visual%20Studio%202013/Projects/shopping_shop/shopping_shop/image/blacky.jpg');
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
        
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
    <div id="container-1">
        <h1 class="auto-style1">Shopping Shop</h1>
     </div>
    <div id="index" > 
        <p style="margin-left: 80px">
            hi&nbsp;
            <asp:Label ID="usernamelbl" runat="server"></asp:Label>
            <asp:Button ID="logoutbtn" runat="server" Text="Log Out" align="right" OnClick="logoutbtn_Click"  Class="btn"/>
           
        </p>
        <p style="margin-left: 80px">
            &nbsp;</p>
        <p style="margin-left: 80px">
            <span class="auto-style2"><strong>Search</strong></span>&nbsp;&nbsp; 
            <asp:TextBox ID="TextBox1" runat="server" Width="523px" OnTextChanged="TextBox1_TextChanged">saree</asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="hsearchbtn" runat="server" Text="Search" OnClick="hsearchbtn_Click" class="btn"/>
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="cartbtn" runat="server" Text="Cart Items" OnClick="cartbtn_Click" class="btn" />
            &nbsp;</p>
        <div id="productbox" style="margin-left: 40px">
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="product_id" DataSourceID="productlist" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="636px">
                <Columns>
                    <asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" SortExpression="product_id" />
                    <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                    <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="productlist" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingshopConnectionString %>" SelectCommand="SELECT * FROM [productdb]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="searchitem" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingshopConnectionString %>" SelectCommand="SELECT * FROM [productdb] WHERE ([product_name] = @product_name)">
                <SelectParameters>
                    <asp:SessionParameter Name="product_name" SessionField="searchs" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="searchitem" Width="645px">
                <Columns>
                    <asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" SortExpression="product_id" />
                    <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                    <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            <p style="margin-left: 40px">
            Enter the product ID to add cart:&nbsp;
                     <asp:TextBox ID="addcarttxtbx" runat="server" Width="158px"></asp:TextBox>
&nbsp;Enter the quantity:&nbsp;
                <asp:TextBox ID="quantitytxtbx" runat="server" Width="158px"></asp:TextBox>
            </p>
            <p style="margin-left: 40px; text-align: center;">
            <br />
                <asp:Button ID="addcartbtn" runat="server" Text="Add Cart" OnClick="addcartbtn_Click1" class="btn"/>
            <br />
            <br />


            </p>


        </div>
    </div>

    </form>
     <div style="position:relative;width:auto;text-align:right">
             
            About us: Shopping_shop@gmail.com customer care: +91987654321. ISO : @CopyRights 2005.
        </div>
</html>
