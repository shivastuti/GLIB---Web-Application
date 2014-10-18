using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;


public partial class project_search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod]

    public static String result(string searchtext)
    {
        var document = new XmlDocument();
        document.Load("http://www.sherpa.ac.uk/romeo/api29.php?jtitle=" + searchtext + "&qtype=contains");
        return document.OuterXml;
    }
}