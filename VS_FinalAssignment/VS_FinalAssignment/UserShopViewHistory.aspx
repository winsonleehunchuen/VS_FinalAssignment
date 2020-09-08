<%@ Page Title="" Language="C#" MasterPageFile="~/UserMenu.Master" AutoEventWireup="true" CodeBehind="UserShopViewHistory.aspx.cs" Inherits="VS_FinalAssignment.UserShopViewHistory" %>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <!-- inner page banner -->
        <div id="inner_banner" class="section inner_banner_section">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <div class="full">
                  <div class="title-holder">
                    <div class="title-holder-cell text-left">
                      <h1 class="page-title">Shopping View History</h1>
                      <ol class="breadcrumb">
                        <li><a href="UserHome.aspx">Home</a></li>
                        <li class="active">Shopping View History</li>
                      </ol>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- end inner page banner -->
        <div class="section padding_layout_1 Shopping_cart_section">
          <div class="container">
            <div class="row">
              <div class="col-sm-12 col-md-12">
                <div class="product-table">

                  <table class="table" >
                    <thead>
                      <tr>
                        <th>Order ID</th>
                        <th>Product Name</th>
                        <th>Product Image</th>
                        <th class="text-center">Product Price</th>
                        <th class="text-center">Product Quantity</th>
                        <th class="text-center">Total Product Price</th>
                        <th class="text-center">Status</th>
                        <th class="text-center">Date and TIme</th>
                        <th> </th>
                      </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" OnItemCommand="Repeater1_ItemCommand" runat="server">
                        <ItemTemplate>
                        <tr>
                        <td width="30%"><p class="price_table"><%# Eval("order_id")%></p>
                        <td width="40%"><p class="price_table"><%# Eval("name")%></p>
                        <td width="70%"><div class="media"> <a class="thumbnail pull-left" href="#"> <img class="media-object" src="upload/<%# Eval("image")%>" width="50%" height="50%" alt="#"></a>
                        <div class="media-body"></td>
                        <td width="50%"><p class="price_table">RM&nbsp;<%# Eval("price")%></p></td>
                        <td width="50%"><p class="price_table text-center">&nbsp;<%# Eval("quantity")%></p></td>
                        <td width="50%"><p class="price_table">RM&nbsp;<%# Eval("total")%></p></td>
                        <td width="50%"><p class="price_table">&nbsp;<%# Eval("status")%></p></td>
                        <td width="50%"><p class="price_table">&nbsp;<%# Eval("created_at")%></p></td>
                        </tr>
                        </ItemTemplate>
                        </asp:Repeater>
                        </table>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- section -->
</asp:Content>

