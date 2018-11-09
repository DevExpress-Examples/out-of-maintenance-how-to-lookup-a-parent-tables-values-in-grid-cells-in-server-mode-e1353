<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="NorthwindNestedFields._Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Data.Linq" TagPrefix="dxdtlnq" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>How to lookup a parent table's values in grid cells in Server mode</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="NorthwindNestedFields.DataClasses1DataContext"
			Select="new (CustomerID, CompanyName)" TableName="Customers">
		</asp:LinqDataSource>
		<dxdtlnq:LinqServerModeDataSource ID="LinqServerModeDataSource1" runat="server" ContextTypeName="NorthwindNestedFields.DataClasses1DataContext"
			TableName="Orders" />
		<dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False"
			DataSourceID="LinqServerModeDataSource1">
			<Columns>
				<dxwgv:GridViewDataTextColumn FieldName="OrderID" VisibleIndex="0">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataComboBoxColumn FieldName="CustomerID" Caption="Customer's CompanyName (ComboBox)"
					VisibleIndex="1">
					<PropertiesComboBox ValueType="System.String" DataSourceID="LinqDataSource1" TextField="CompanyName"
						ValueField="CustomerID">
					</PropertiesComboBox>
				</dxwgv:GridViewDataComboBoxColumn>
				<dxwgv:GridViewDataTextColumn FieldName="EmployeeID" VisibleIndex="2">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataDateColumn FieldName="OrderDate" VisibleIndex="3">
				</dxwgv:GridViewDataDateColumn>
				<dxwgv:GridViewDataDateColumn FieldName="RequiredDate" VisibleIndex="4">
				</dxwgv:GridViewDataDateColumn>
				<dxwgv:GridViewDataDateColumn FieldName="ShippedDate" VisibleIndex="5">
				</dxwgv:GridViewDataDateColumn>
				<dxwgv:GridViewDataTextColumn FieldName="ShipVia" VisibleIndex="6">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="Freight" VisibleIndex="7">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="ShipName" VisibleIndex="8">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="ShipAddress" VisibleIndex="9">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="ShipCity" VisibleIndex="10">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="ShipRegion" VisibleIndex="11">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="ShipCountry" VisibleIndex="12">
				</dxwgv:GridViewDataTextColumn>
			</Columns>
		</dxwgv:ASPxGridView>
	</div>
	</form>
</body>
</html>