using DataSetTableAdapters;
using System;

public partial class Award_ListAward : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl_awardTableAdapter awardTableAdapter = new tbl_awardTableAdapter();
        Repeater1.DataSource = awardTableAdapter.GetAward();
        Repeater1.DataBind();
    }
}