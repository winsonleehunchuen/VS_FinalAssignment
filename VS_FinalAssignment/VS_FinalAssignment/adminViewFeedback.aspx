﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMenu.Master" AutoEventWireup="true" CodeBehind="adminViewFeedback.aspx.cs" Inherits="VS_FinalAssignment.adminViewFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="adminViewFeedback.aspx">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Manage Feedback</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Manage Feedback</h1>
			</div>
		</div><!--/.row-->	
		
		<div class="panel panel-default">
					<div class="panel-heading">
						View Customer
						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
					<div class="panel-body">
						<form class="form-horizontal" action="" method="post">
							<fieldset>
								<div class="text-center">
                                <asp:Panel ID="Panel1" runat="server"></asp:Panel>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
	</div>	<!--/.main-->
</asp:Content>
