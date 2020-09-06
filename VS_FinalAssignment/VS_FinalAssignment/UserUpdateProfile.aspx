<%@ Page Title="" Language="C#" MasterPageFile="~/UserMenu.Master" AutoEventWireup="true" CodeBehind="UserUpdateProfile.aspx.cs" Inherits="VS_FinalAssignment.UserUpdateProfile" %>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
            <!-- inner page banner -->
<div id="inner_banner" class="section inner_banner_section">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="full">
          <div class="title-holder">
            <div class="title-holder-cell text-left">
              <h1 class="page-title">Update Profile</h1>
              <ol class="breadcrumb">
                <li><a href="UserHome.aspx">Home</a></li>
                <li class="active">Update Profile</li>
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
                <h2>Update Profile</h2>
              </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 appointment_form">
              <div class="form_section">
                <form class="form_contant" action="index.html">
                  <fieldset class="row">
                  <center>
                  <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                   <asp:TextBox ID="fullNameTxt" class="field_custom" runat="server" placeholder="Full Name*" type="text" required></asp:TextBox>
                  </div>
                  <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                   <asp:TextBox ID="EmailTxt" class="field_custom" runat="server" placeholder="Email*" type="text" required></asp:TextBox>
                  </div>
                  <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                   <font color="red">Can't change username.</font>
                   <asp:TextBox ID="UsernameTxt" class="field_custom" ForeColor="Red" runat="server" placeholder="Username*" type="text" ReadOnly="true"></asp:TextBox>
                  </div>
                  <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                   <asp:TextBox ID="PasswordTxt" class="field_custom" runat="server" placeholder="Password*" type="password" required></asp:TextBox>
                  </div>
                  <div class="field col-lg-6 col-md-6 col-sm-12 col-xs-12">
                   <asp:TextBox ID="ConfrimPasswordTxt" class="field_custom" runat="server" placeholder="Confrim Password*" type="password" required></asp:TextBox>
                  </div>
                  </center>
                  <div class="center">
                    <asp:LinkButton ID="LinkButton1" class="btn main_bt" runat="server" OnClick="LinkButton1_Click" >Update Profile</asp:LinkButton>
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

