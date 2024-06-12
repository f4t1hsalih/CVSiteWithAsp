using DataSetTableAdapters;
using System;

public partial class Award_DeleteAward : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        short id = short.Parse(Request.QueryString["Delete"]);
        tbl_awardTableAdapter awardTableAdapter = new tbl_awardTableAdapter();
        awardTableAdapter.DeleteAward(id);
        Response.Redirect("/Award/ListAward.aspx");
    }
}