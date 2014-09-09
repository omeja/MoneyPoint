using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MoneyPoint
{
    public partial class frmAccount : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            // AUTO ACCOUNT NUMBER


            DateTime dt = DateTime.Now;
            

            string acct = dt.Year.ToString() + dt.Month.ToString()+dt.Hour.ToString()+dt.Minute.ToString()+dt.Second.ToString()+dt.Millisecond.ToString();
       //     string acct = dt.Year.ToString() + dt.Month.ToString() + dt.Date.ToString();

            txtaccno.Text = acct;

            //
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);

            SqlCommand command = new SqlCommand("spgetcus", con);
            command.CommandType = CommandType.StoredProcedure;

            con.Open();
            //  int rows = command.ExecuteNonQuery();
            SqlDataReader rdr = null;
            rdr = command.ExecuteReader();

            // Fill the list box with the values retrieved

            while (rdr.Read())
            {
               cbocus.Items.Add(rdr[0].ToString());
            }

            con.Close();
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {


            //

            int val = Int32.Parse(cbocus.Text);


            //
            string constring = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);

            SqlCommand command = new SqlCommand("spgetcus2", con);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@val", SqlDbType.Int).Value = val;
            con.Open();
            //  int rows = command.ExecuteNonQuery();
            SqlDataReader rdr = null;
            rdr = command.ExecuteReader();

            // Fill the list box with the values retrieved

            while (rdr.Read())
            {
               string name = rdr[0].ToString();
               Label5.Text = name;
            }

            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}