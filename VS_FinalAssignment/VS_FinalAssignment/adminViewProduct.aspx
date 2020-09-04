<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMenu.Master" AutoEventWireup="true" CodeBehind="adminViewProduct.aspx.cs" Inherits="VS_FinalAssignment.adminViewProduct" %>
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
						View Product
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
								<div class="text-center">
                                <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="a">LinkButton</asp:LinkButton>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
	</div>	<!--/.main-->
	
</asp:Content>
