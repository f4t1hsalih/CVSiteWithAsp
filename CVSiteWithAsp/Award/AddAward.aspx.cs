using DataSetTableAdapters;
using System;

public partial class Award_AddAward : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddAward_Click(object sender, EventArgs e)
    {
        tbl_awardTableAdapter awardTableAdapter = new tbl_awardTableAdapter();
        awardTableAdapter.InsertAward(txtAward.Text);
        Response.Redirect("/Award/ListAward.aspx");
    }
}