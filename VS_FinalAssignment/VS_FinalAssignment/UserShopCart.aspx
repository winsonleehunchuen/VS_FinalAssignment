﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UserMenu.Master" AutoEventWireup="true" CodeBehind="UserShopCart.aspx.cs" Inherits="VS_FinalAssignment.UserShopCart" %>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <!-- inner page banner -->
        <div id="inner_banner" class="section inner_banner_section">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <div class="full">
                  <div class="title-holder">
                    <div class="title-holder-cell text-left">
                      <h1 class="page-title">Shopping</h1>
                      <ol class="breadcrumb">
                        <li><a href="UserHome.aspx">Home</a></li>
                        <li class="active">Shopping </li>
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
                        <th>Product</th>
                        <th>Name</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Description</th>
                        <th> </th>
                      </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" OnItemCommand="Repeater1_ItemCommand" runat="server">
                        <ItemTemplate>
                        <tr>
                        <td width="70%"><div class="media"> <a class="thumbnail pull-left" href="#"> <img class="media-object" src="upload/<%# Eval("image")%>" width="50%" height="50%" alt="#"></a>
                        <div class="media-body"></td>
                        <td width="40%"><h4 class="media-heading"><%# Eval("name")%></h4>
                        <span>Status: </span><span class="text-success">In Stock</span></td>
                        <td width="30%" style="text-align: center"><br />
                        <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>                                     
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                        <td width="50%"><p class="price_table">RM&nbsp;<%# Eval("price")%></p></td>
                        <td width="100%"><p class="price_table text-center "><%# Eval("description")%></p></td>
                        <td width="100%""><asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("id") %>' CommandName="AddToCart" class="bt_main" >Add&nbsp;to&nbsp;Cart</asp:LinkButton></td>
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


