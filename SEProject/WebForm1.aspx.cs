using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterUser()
        {
            SqlDataSource1.Insert();
        }
        protected void button1_Click(object sender, EventArgs e)
        {
            Label7.Visible = false;
            string pword = txtPassword.Text;
            bool upperFlag = false;
            bool digitFlag = false;
            bool symFlag = false;


            if (pword.Length >= 8 && pword.Length <= 16)
            {
                for (int i = 0; i < pword.Length; i++)
                {
                    if (Char.IsUpper(pword[i]))
                    {
                        upperFlag = true;
                    }
                    if (Char.IsDigit(pword[i]))
                    {
                        digitFlag = true;
                    }
                    if (Char.IsSymbol(pword[i]) || Char.IsPunctuation(pword[i]))
                    {
                        symFlag = true;
                    }
                }
            }

            if (upperFlag && digitFlag && symFlag)
            {
                Label7.Visible = true;
                Label7.Text = "You did it";
                RegisterUser();
                    Response.Redirect("WebForm2.aspx");
            }
            else
            {
                Label7.Visible = true;
                upperFlag = false;
                symFlag = false;
                digitFlag = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtPassword2.Text = "";
        }
    }
}