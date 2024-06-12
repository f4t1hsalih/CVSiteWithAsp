using DataSetTableAdapters;
using System;

public partial class Interests_ListInterest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl_interestTableAdapter interestTableAdapter = new tbl_interestTableAdapter();
        Repeater1.DataSource = interestTableAdapter.GetInterest();
        Repeater1.DataBind();
    }
}