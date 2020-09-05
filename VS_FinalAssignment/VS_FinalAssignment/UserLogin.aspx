<%@ Page Title="" Language="C#" MasterPageFile="~/UserMenu.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="VS_FinalAssignment.UserLogin" %>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <!-- inner page banner -->
<div id="inner_banner" class="section inner_banner_section">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="full">
          <div class="title-holder">
            <div class="title-holder-cell text-left">
              <h1 class="page-title">Login</h1>
              <ol class="breadcrumb">
                <li><a href="UserHome.aspx">Home</a></li>
                <li class="active">Login</li>
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
                <h2>Login</h2>
              </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 appointment_form">
              <div class="form_section">
                <form class="form_contant" action="index.html">
                  <fieldset class="row">
                  <center>
                  <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <asp:TextBox ID="usernameTxt" class="field_custom" runat="server" placeholder="Username*" type="text"></asp:TextBox>
                  </div>
                  <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <asp:TextBox ID="passwordTxt" class="field_custom" runat="server" placeholder="Password*" type="password"></asp:TextBox>
                  </div>
                  </center>
                  <div class="center">
                    <asp:LinkButton ID="LinkButton1" class="btn main_bt" runat="server" OnClick="LinkButton1_Click" >Log In</asp:LinkButton>
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


