using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoneyPoint
{
    public partial class frmCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                //
                string regno = this.txtregno.Text;
                string fname = this.txtfname.Text;
                string lname = this.txtlname.Text;
                string dob = this.txtdob.Text;
                string dis = this.txtdis.Text;
                string nat = this.txtnat.Text;
                string cls = this.txtcls.Text;
                string term = this.cboterm.Text;
                string yr = this.txtyr.Text;
                //


                //  Session["ID2"] = ID2;



                string constring = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
                SqlConnection con = new SqlConnection(constring);

                SqlCommand command = new SqlCommand("spaddregister", con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@regno", SqlDbType.VarChar).Value = regno;
                command.Parameters.Add("@fname", SqlDbType.VarChar).Value = fname;
                command.Parameters.Add("@lname", SqlDbType.VarChar).Value = lname;
                command.Parameters.Add("@birthdate", SqlDbType.Date).Value = dob;
                command.Parameters.Add("@district", SqlDbType.VarChar).Value = dis;
                command.Parameters.Add("@nationality", SqlDbType.VarChar).Value = nat;
                command.Parameters.Add("@class", SqlDbType.VarChar).Value = cls;
                command.Parameters.Add("@term", SqlDbType.VarChar).Value = term;
                command.Parameters.Add("@year", SqlDbType.VarChar).Value = yr;


                con.Open();
                int rows = command.ExecuteNonQuery();
                con.Close();

                // clear fields
                // this.txtcode.Text = "";
                //this.cbocountry.Text = "";
                //this.txttitle.Text = "";
                ////this.cbocategory.SelectedItem.Value= "";
                //this.txtdetails.Text = "";
                //this.txtbudget.Text = "";
                //this.txtdt.Text = "";



                //if (rows == 1)
                //{

                //    MessageBox.Show("Data Saved Succesfully");
                //}
                //else
                //{
                //    MessageBox.Show("Data FAILED to Save!!");
                //} 
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}