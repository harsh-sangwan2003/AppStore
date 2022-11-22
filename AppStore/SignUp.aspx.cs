using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FireSharp.Config;
using FireSharp.Response;
using FireSharp.Interfaces;

namespace AppStore
{
    public partial class SignUp : System.Web.UI.Page
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

        protected void register_Click(object sender, EventArgs e)
        {
            Client ct = new Client()
            {

                FirstName = firstName.Text,
                LastName = lastName.Text,
                Email = email.Text,
                Password = password.Text,
                Role = role.Text
            };

            var setter = client.Set("Client/" + firstName.Text, ct);

            Response.Redirect("Login.aspx");
        }
    }
}