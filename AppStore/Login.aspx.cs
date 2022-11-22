using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FireSharp.Config;
using FireSharp.Response;
using FireSharp.Interfaces;
using Newtonsoft.Json;

namespace AppStore
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        IFirebaseConfig fcon = new FirebaseConfig()
        {

            AuthSecret = "dQzdTIL5uoUfjSOw7lBF7HAqmvbrdC5Uqw9euO3O",
            BasePath = "https://appstore-266dc-default-rtdb.firebaseio.com/"
        };

        IFirebaseClient client;

        protected void form1_Load(object sender, EventArgs e)
        {
            try
            {

                client = new FireSharp.FirebaseClient(fcon);

            }

            catch
            {


            }
        }

        protected void insert_btn_Click(object sender, EventArgs e)
        {

            Session["Value"] = firstName.Text;

            FirebaseResponse res = client.Get(@"Client");
            Dictionary<string, Client> data = JsonConvert.DeserializeObject<Dictionary<string, Client>>(res.Body.ToString());
            bool flag = checkData(data);

            if (flag)
                redirect();

            else
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid email or password!')", true);
        }

        bool checkData(Dictionary<string, Client> record) {

            if (record == null)
                return false;

            foreach (var key in record) {

                if ((key.Value.Email == email.Text) && 
                    (key.Value.Password == password.Text) && 
                    (key.Value.FirstName == firstName.Text) && 
                    (key.Value.Role == role.Text))
                    return true;

            }

            return false;
        
        }

        void redirect() {


            if (role.Text == "Guest")
                Response.Redirect("Guest.aspx");

            else if (role.Text == "Admin")
                Response.Redirect("Admin.aspx");

            else if (role.Text == "HR")
                Response.Redirect("HR.aspx");

            else if (role.Text == "Finance")
                Response.Redirect("Finance.aspx");
        }
    }
}