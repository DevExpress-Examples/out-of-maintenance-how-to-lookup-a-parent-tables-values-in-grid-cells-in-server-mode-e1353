<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/NorthwindNestedFields/Default.aspx) (VB: [Default.aspx.vb](./VB/NorthwindNestedFields/Default.aspx.vb))
* [Default.aspx.cs](./CS/NorthwindNestedFields/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/NorthwindNestedFields/Default.aspx.vb))
<!-- default file list end -->
# How to lookup a parent table's values in grid cells in Server mode


<p>In this example, the grid displays a list of Orders. The grid works in <a href="http://documentation.devexpress.com/#AspNet/CustomDocument4059">LINQ Server mode</a>. The Order record has a CustomerID field, while the grid displays the CompanyName values instead of IDs. This is accomplished by using the <a href="http://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxGridViewGridViewDataComboBoxColumntopic">GridViewDataComboBoxColumn</a>. The grid is bound to <a href="http://documentation.devexpress.com/#CoreLibraries/clsDevExpressDataLinqLinqServerModeDataSourcetopic">LinqServerModeDataSource</a>, while the ComboBox column fetches its lookup list from the LinqDataSource bound to the Customers table. Please note that sorting and grouping is performed against the actual value (CustomerID in this example), not against the text in grid cells.</p>

<br/>


