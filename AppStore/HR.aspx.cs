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
    public partial class HR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Value"] != null)
                lblMsg.Text = Session["Value"].ToString();

        }

        IFirebaseConfig fcon = new FirebaseConfig()
        {

            AuthSecret = "dQzdTIL5uoUfjSOw7lBF7HAqmvbrdC5Uqw9euO3O",
            BasePath = "https://appstore-266dc-default-rtdb.firebaseio.com/"
        };

        IFirebaseClient client;

        protected void admin_form(object sender, EventArgs e)
        {
            try
            {

                client = new FireSharp.FirebaseClient(fcon);
                FirebaseResponse res = client.Get(@"ClientList");
                Dictionary<string, Client> data = JsonConvert.DeserializeObject<Dictionary<string, Client>>(res.Body.ToString());
            }

            catch
            {


            }
        }
    }
}