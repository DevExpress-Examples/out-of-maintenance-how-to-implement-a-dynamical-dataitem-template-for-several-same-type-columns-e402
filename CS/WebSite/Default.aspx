<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxGridView runat="server" AutoGenerateColumns="False" DataSourceID="dsProducts"
			KeyFieldName="ProductID" ID="grid" ClientInstanceName="grid" oninit="grid_Init">
			<Columns>
                <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True" ShowNewButton="True" ShowDeleteButton="True"/>
				<dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="1">
					<EditFormSettings Visible="False" />
					<EditFormSettings Visible="False"></EditFormSettings>
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="3">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="4">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="5">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="6">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="7">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="8">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="9">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="10">
				</dx:GridViewDataCheckColumn>
			</Columns>			
		</dx:ASPxGridView>
	</div>
	<asp:SqlDataSource ID="dsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
		SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued] FROM [Products]">
	</asp:SqlDataSource>
	<asp:SqlDataSource ID="dsCategories" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
		SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]">
	</asp:SqlDataSource>
	<asp:SqlDataSource ID="dsEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
		SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone], [Photo], [Extension], [Notes], [ReportsTo], [PhotoPath] FROM [Employees]">
	</asp:SqlDataSource>
	</form>
</body>
</html>
