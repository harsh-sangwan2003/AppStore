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
    public partial class Profile : System.Web.UI.Page
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

                Label.Text = Session["Value"].ToString();

                FirebaseResponse res = client.Get(@"Client");
                Dictionary<string, Client> record = JsonConvert.DeserializeObject<Dictionary<string, Client>>(res.Body.ToString());

                if (record != null)
                {
                    foreach (var key in record)
                    {

                        if (key.Value.FirstName == Label.Text)
                        {

                            Label1.Text = key.Value.LastName;
                            Label2.Text = key.Value.Email;
                            Label3.Text = key.Value.Password;
                            Label4.Text = key.Value.Role;
                            break;
                        }
                    }
                }
                
            }

            catch
            {


            }
        }


    }
}