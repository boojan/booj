<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cartpage.aspx.cs" Inherits="shopping_shop.cartpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        #cartdisplay {
            margin-left: 80px;
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
        <h1 class="auto-style1">Shopping Shop</h1>
    </div>

        <div id="btns">

            &nbsp;
            <asp:Button ID="homebtn" runat="server" Text="Home" OnClick="homebtn_Click" Class="btn" />
            <asp:Label ID="namelabel" runat="server"></asp:Label>
            <asp:Button ID="logoutbtn" runat="server" Text="Log Out" OnClick="logoutbtn_Click" align="right" CssClass="btn" />
        &nbsp;&nbsp;&nbsp;
            <br />
        </div>
        <div>
            




            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="sqlitem" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="product_id" HeaderText="product_id" SortExpression="product_id" />
                    <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                    <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
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
            <asp:SqlDataSource ID="sqlitem" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingshopConnectionString %>" SelectCommand="SELECT * FROM [cartdb] WHERE ([username] = @username)">
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="name" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            Enter ID to remove product:<asp:TextBox ID="removetxtbx" runat="server" Style="margin-left:09px" Width="157px"></asp:TextBox>
            <asp:Button ID="removebtn" runat="server" Text="Remove" Style="margin-left:50px" OnClick="removebtn_Click" CssClass="btn" />
            <br />
            <br />
            <asp:Button ID="placeorderbtn" runat="server" style="margin-left:250px" Text="Place Order" OnClick="placeorderbtn_Click" CssClass="btn" />
            <br />
            <br />




        </div>
    </form>
      <div style="position:relative;width:auto;text-align:right">
             
            About us: Shopping_shop@gmail.com customer care: +91987654321. ISO : @CopyRights 2005.
        </div>

</body>
</html>
