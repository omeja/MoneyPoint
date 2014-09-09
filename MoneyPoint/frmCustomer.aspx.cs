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
    public partial class frmCustomer : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {

            //Random r = new Random();
            //int n = r.Next();
         //   billno = billno + 1;
           // txtcusno.Text = n.ToString();
            Label6.Text = "";
        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {

                //
                // string cusno = this.txtcusno.Text;
                string custitle = this.cbotitle.Text;
                string cusname = this.txtcusname.Text;
                string cusadd = this.txtaddress.Text;
                string custel = this.txttel.Text;

                //


                //  Session["ID2"] = ID2;



                string constring = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
                SqlConnection con = new SqlConnection(constring);

                SqlCommand command = new SqlCommand("spaddcustomer", con);
                command.CommandType = CommandType.StoredProcedure;
               // command.Parameters.Add("@customernumber", SqlDbType.VarChar).Value = txtcusno.Text;
                command.Parameters.Add("@title", SqlDbType.VarChar).Value = custitle.ToUpper();
                command.Parameters.Add("@customername", SqlDbType.VarChar).Value = cusname.ToUpper();
                command.Parameters.Add("@address", SqlDbType.VarChar).Value = cusadd.ToUpper();
                command.Parameters.Add("@contact", SqlDbType.VarChar).Value = custel.ToUpper();
              

                con.Open();
                int rows = command.ExecuteNonQuery();
                con.Close();

                // clear fields
               // this.txtcusno.Text = "";
                this.cbotitle.Text = "";
                this.txtcusname.Text = "";
                this.txtaddress.Text= "";
                this.txttel.Text = "";

                //
                SqlCommand command2 = new SqlCommand("spgettop", con);
                command2.CommandType = CommandType.StoredProcedure;

                con.Open();
                //  int rows = command.ExecuteNonQuery();
                SqlDataReader rdr = null;
                rdr = command2.ExecuteReader();


              
                //
                while (rdr.Read())
                {

                    string x = rdr[0].ToString();

                    if (rows == 1)
                    {
                        Label6.Text = "Customer Saved Succesfully with Customer Number:"+""+x ;
                    }
                    else
                    {
                        Label6.Text = "Error";
                    }
                }

                con.Close();
            }
            catch (Exception ex)
            {
                throw;
            }
        }

      
      
    }
}