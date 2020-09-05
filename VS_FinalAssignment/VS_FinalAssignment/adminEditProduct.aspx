<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMenu.Master" AutoEventWireup="true" CodeBehind="adminEditProduct.aspx.cs" Inherits="VS_FinalAssignment.adminEditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="adminViewProduct.aspx">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Manage Product</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Manage Product</h1>
			</div>
		</div><!--/.row-->	
		
		<div class="panel panel-default">
					<div class="panel-heading">
						Update Product
						<ul class="pull-right panel-settings panel-button-tab-right">
							<li class="dropdown"><a class="pull-right dropdown-toggle" data-toggle="dropdown" href="#">
								<em class="fa fa-cogs"></em>
							</a>
								<ul class="dropdown-menu dropdown-menu-right">
									<li>
										<ul class="dropdown-settings">
											<li><a href="adminViewProduct.aspx">
												<em class="fa fa-cog"></em> View Product
											</a></li>
											<li class="divider"></li>
											<li><a href="adminAddProduct.aspx">
												<em class="fa fa-cog"></em> Add Product
											</a></li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
					<div class="panel-body">
						<form class="form-horizontal" action="" method="post">
							<fieldset>

								<div class="form-group">
									<label class="col-md-2 control-label" for="name">Product Name</label>
									<div class="col-md-9">
										<asp:TextBox ID="name" runat="server" class="form-control" placeholder="Type your product name..."></asp:TextBox>

										<br />
									</div>
								</div>
							
								<div class="form-group">
									<label class="col-md-2 control-label" for="email">Product Price</label>
									<div class="col-md-9">
										<asp:TextBox ID="price" runat="server" class="form-control" placeholder="Type your product price..."></asp:TextBox>
										<br />
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-2 control-label" for="message">Product Description</label>
									<div class="col-md-9">
										<textarea id="description" rows="5" name="description" class="form-control" runat="server" placeholder="Type your product description..."></textarea>
										<br />
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-2 control-label" for="message">Insert Image</label>
									<div class="col-md-9">
										<asp:FileUpload ID="FileUpload1" runat="server" />
										<br />
									</div>
								</div>

								<div class="form-group">
									<div class="col-md-11 widget-right">
                                        <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-primary btn-md pull-right" OnClick="LinkButton1_Click" >Update</asp:LinkButton>
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
