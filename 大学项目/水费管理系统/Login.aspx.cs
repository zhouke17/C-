﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { UnobtrusiveValidationMode = UnobtrusiveValidationMode.None; }
   
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Server.Transfer("Master.aspx");
        Response.Redirect("Master.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("User.aspx");
    }
}