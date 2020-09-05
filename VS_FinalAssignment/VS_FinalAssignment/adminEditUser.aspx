<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMenu.Master" AutoEventWireup="true" CodeBehind="adminEditUser.aspx.cs" Inherits="VS_FinalAssignment.adminEditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="adminViewProduct.aspx">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Manage Customer</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Manage Customer</h1>
			</div>
		</div><!--/.row-->	
		
		<div class="panel panel-default">
					<div class="panel-heading">
						Update Customer
						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
					<div class="panel-body">
						<form class="form-horizontal" action="" method="post">
							<fieldset>

								<div class="form-group">
									<label class="col-md-2 control-label" for="name">Full Name</label>
									<div class="col-md-9">
										<asp:TextBox ID="name" runat="server" class="form-control" placeholder="Type your Full name..."></asp:TextBox>

										<br />
									</div>
								</div>
							
								<div class="form-group">
									<label class="col-md-2 control-label" for="email">Email</label>
									<div class="col-md-9">
										<asp:TextBox ID="email" runat="server" class="form-control" placeholder="Type your Email..."></asp:TextBox>
										<br />
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-2 control-label" for="message">Username</label>
									<div class="col-md-9">
										<asp:TextBox ID="username" runat="server" class="form-control" placeholder="Type your Username..."></asp:TextBox>
										<br />
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-2 control-label" for="message">Password</label>
									<div class="col-md-9">
										<asp:TextBox ID="password" runat="server" class="form-control" placeholder="Type your Password..."></asp:TextBox>
										<br />
									</div>
								</div>

								<div class="form-group">
									<div class="col-md-11 widget-right">
                                        <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-primary btn-md pull-right" OnClick="LinkButton1_Click">Update</asp:LinkButton>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
	</div>

	
	<script>
		window.onload = function () {
	var chart1 = document.getElementById("line-chart").getContext("2d");
	window.myLine = new Chart(chart1).Line(lineChartData, {
	responsive: true,
	scaleLineColor: "rgba(0,0,0,.2)",
	scaleGridLineColor: "rgba(0,0,0,.05)",
	scaleFontColor: "#c5c7cc"
	});
};
    </script>
</asp:Content>
