﻿using DataSetTableAdapters;
using System;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tbl_aboutTableAdapter aboutAdapter = new tbl_aboutTableAdapter();
            Repeater1.DataSource = aboutAdapter.GetAbout();
            Repeater1.DataBind();
        }
    }
}