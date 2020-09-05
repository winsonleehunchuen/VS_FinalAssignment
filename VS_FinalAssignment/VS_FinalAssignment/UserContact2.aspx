<%@ Page Title="" Language="C#" MasterPageFile="~/UserMenu.Master" AutoEventWireup="true" CodeBehind="UserContact2.aspx.cs" Inherits="VS_FinalAssignment.UserContact2" %>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
<!-- inner page banner -->
<div id="inner_banner" class="section inner_banner_section">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="full">
          <div class="title-holder">
            <div class="title-holder-cell text-left">
              <h1 class="page-title">Contact Us</h1>
              <ol class="breadcrumb">
                <li><a href="UserHome.aspx">Home</a></li>
                <li class="active">Contact Us</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end inner page banner -->
<div class="section padding_layout_1">
  <div class="container">
    <div class="row">
      <div class="col-xl-2 col-lg-2 col-md-12 col-sm-12 col-xs-12"></div>
      <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-xs-12">
        <div class="row">
          <div class="full">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
              <div class="main_heading text_align_center">
                <h2>GET IN TOUCH</h2>
              </div>
            </div>
            <div class="contact_information">
              <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 adress_cont">
                <div class="information_bottom text_align_center">
                  <div class="icon_bottom"> <i class="fa fa-road" aria-hidden="true"></i> </div>
                  <div class="info_cont">
                    <h4>Kuala Lumpur City Centre, Kuala Lumpur, Federal Territory of Kuala Lumpur</h4>
                    <p>Malaysia</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 adress_cont">
                <div class="information_bottom text_align_center">
                  <div class="icon_bottom"> <i class="fa fa-user" aria-hidden="true"></i> </div>
                  <div class="info_cont">
                    <h4>+60123456789</h4>
                    <p>Mon-Fri 9:00am-6:00pm</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 adress_cont">
                <div class="information_bottom text_align_center">
                  <div class="icon_bottom"> <i class="fa fa-envelope" aria-hidden="true"></i> </div>
                  <div class="info_cont">
                    <h4>itnext@gmail.com</h4>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 contant_form">
              <h2 class="text_align_center">Contact Us</h2>
              <div class="form_section">
                <form class="form_contant" action="index.html">
                  <fieldset>
                  <div class="row">
                       
                    <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <asp:TextBox ID="fullnametxt" runat="server" CssClass="field_custom" placeholder="Full Name" type="text"></asp:TextBox>
                    </div>
                    <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                       <asp:TextBox ID="emailtxt" runat="server" CssClass="field_custom" placeholder="Email address" type="email"></asp:TextBox>
                    </div>
                    <div class="field col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        
                        <textarea id="msgtxt" runat="server" class="field_custom" placeholder="Feedback" type="text"></textarea>
                    </div>
                    <div class="center">
                        <asp:LinkButton ID="LinkButton1" runat="server" class="btn main_bt" OnClick="LinkButton1_Click">SUBMIT NOW</asp:LinkButton> 
                    </div>
                  </div>
                  </fieldset>
                </form>
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

