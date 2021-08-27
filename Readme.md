<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1353)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/NorthwindNestedFields/Default.aspx) (VB: [Default.aspx](./VB/NorthwindNestedFields/Default.aspx))
* [Default.aspx.cs](./CS/NorthwindNestedFields/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/NorthwindNestedFields/Default.aspx.vb))
<!-- default file list end -->
# How to lookup a parent table's values in grid cells in Server mode
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e1353/)**
<!-- run online end -->


<p>In this example, the grid displays a list of Orders. The grid works in <a href="http://documentation.devexpress.com/#AspNet/CustomDocument4059">LINQ Server mode</a>. The Order record has a CustomerID field, while the grid displays the CompanyName values instead of IDs. This is accomplished by using the <a href="http://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxGridViewGridViewDataComboBoxColumntopic">GridViewDataComboBoxColumn</a>. The grid is bound to <a href="http://documentation.devexpress.com/#CoreLibraries/clsDevExpressDataLinqLinqServerModeDataSourcetopic">LinqServerModeDataSource</a>, while the ComboBox column fetches its lookup list from the LinqDataSource bound to the Customers table. Please note that sorting and grouping is performed against the actual value (CustomerID in this example), not against the text in grid cells.</p>

<br/>


