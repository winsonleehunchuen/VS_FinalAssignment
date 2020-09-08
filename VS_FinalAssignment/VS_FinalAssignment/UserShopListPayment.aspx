<%@ Page Title="" Language="C#" MasterPageFile="~/UserMenu.Master" AutoEventWireup="true" CodeBehind="UserShopListPayment.aspx.cs" Inherits="VS_FinalAssignment.UserShopListPayment" %>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
     <!-- inner page banner -->
        <div id="inner_banner" class="section inner_banner_section">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <div class="full">
                  <div class="title-holder">
                    <div class="title-holder-cell text-left">
                      <h1 class="page-title">Shopping Cart</h1>
                      <ol class="breadcrumb">
                        <li><a href="UserHome.aspx">Home</a></li>
                        <li class="active">Shopping Cart</li>
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
                        <th class="text-center">Total</th>
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
                        <td width="30%" style="text-align: center"><p class="price_table"><%# Eval("quantity")%></p>
                        </td>
                        <td width="50%"><p class="price_table">RM&nbsp;<%# Eval("price")%></p></td>
                        <td width="50%"><p class="price_table">RM&nbsp;<%# Eval("total")%></p></td>
                        <td width="100%""><asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("cart_id") %>' CommandName="Delete" class="bt_main" ><i class="fa fa-trash"></i></asp:LinkButton></td>
                        </tr>
                        </ItemTemplate>
                        </asp:Repeater>
                        </table>

          <div class="row">
          <div class="col-md-6">
            <div class="row mb-5">
              <div class="col-md-6">
                <a href="UserShopCart.aspx" class="btn btn-outline-primary btn-sm btn-block text-primary">Continue Shopping</a>
              </div>
            </div>
          </div>
          <div class="col-md-6 pl-5">
            <div class="row justify-content-end">
              <div class="col-md-7">
                <div class="row">
                  <div class="col-md-12 text-right border-bottom mb-5">
                    <h3 class="text-black h4 text-uppercase">Cart Totals</h3>
                  </div>
                </div>
                
                <div class="row mb-5">
                  <div class="col-md-6">
                    <span class="text-black">Total</span>
                  </div>
                  <div class="col-md-6 text-right">
                    RM <strong class="text-black" id="cart_total" runat="server"></strong>
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-12">
                    <!-- Set up a container element for the button -->
                    <div id="paypal-button-container"></div>

                    <!-- Include the PayPal JavaScript SDK -->
                    <script src="https://www.paypal.com/sdk/js?client-id=AcACrvD1tAFNtATsmBMsP3B-KTCu-mZRdlnxlYy6KflvERi3-Q6PqZaS1RdyWWc_AruFizoejh4dPiV_&currency=MYR"></script>

                    <script>
                        // Render the PayPal button into #paypal-button-container
                        paypal.Buttons({
                            style: {
                                layout: 'horizontal'
                            },

                            // Set up the transaction
                            createOrder: function (data, actions) {
                                return actions.order.create({
                                    purchase_units: [{
                                        amount: {
                                            value:<%= total()%>                                     
                                                }
                                    }]
                                });
                            },

                            // Finalize the transaction
                            onApprove: function (data, actions) {
                                return actions.order.capture().then(function (details) {
                                    // Show a success message to the buyer
                                    alert('Transaction completed by ' + details.payer.name.given_name + '!');
                                    window.location = 'UserShopPayment.aspx';
                                });
                            }


                        }).render('#paypal-button-container');
                    </script>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- section -->
   
</asp:Content>

