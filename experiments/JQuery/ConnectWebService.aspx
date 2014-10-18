<%@ Page Language="C#"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat ="server">
    <title>Web Services JSONP and FORM</title>
    <link rel="stylesheet" type="text/css" href="~/css/bootstrap.min.css" />
    <style>
        th:first-child {
            width : 1px;
        }
        input, select {
            width: 200px;
            left : 80px;
            position : absolute;
        }
    </style>
</head>
    <script runat="server" language="C#">
         protected void Page_Load(object sender, EventArgs e)
         {

         }
</script>
<body>
    <center><h1>WebServices</h1></center>
    <h2>Description</h2><div>
    This experiment highlights the fact that data can be imported from API available over the internet into our website to reflect as the output for search.
    Also we can render the data in the manner that we deem fit for user visibility.The below experiment makes use of the 
    worldweatheronline.com website to extract information about the ski areas in the areas the user looks for.</div>
    <div>The following code snippet is used to connect to the API</div>
    <div><font color="red"><pre>
        Weather for &lt;a href=&quot;http://api.worldweatheronline.com/free/v1/ski.ashx?q=47.12%2C13.13&amp;format=json&amp;key=baxetvdf2r6ve9az72rynzar&quot;&gt;My ZIP&lt;/a&gt;&lt;br/&gt;
   
    API Key: &lt;input type=&quot;text&quot; id=&quot;key&quot; /&gt;&lt;br /&gt;
    Format: &lt;select id=&quot;format&quot;&gt;
                &lt;option&gt;json&lt;/option&gt;
                &lt;option&gt;xml&lt;/option&gt;
            &lt;/select&gt;&lt;br/&gt;
    Location:   &lt;input type=&quot;text&quot; id=&quot;includeLocation&quot; value=&quot;yes&quot; /&gt;&lt;br/&gt;
    Zip:    &lt;select id=&quot;zip&quot;&gt;
                &lt;option value=&quot;01827&quot;&gt;Dunstable&lt;/option&gt;
                &lt;option value=&quot;02108&quot;&gt;Boston&lt;/option&gt;
                &lt;option value=&quot;10705&quot;&gt;Yonkers, New York&lt;/option&gt;
            &lt;/select&gt;&lt;br/&gt;
    &lt;button id=&quot;go&quot;&gt;Get Weather&lt;/button&gt;
                                                                                         </pre></font></div>

    <hr />
    <h2>Results</h2>
    <h2>Query</h2>
    Weather for <a href="http://api.worldweatheronline.com/free/v1/ski.ashx?q=47.12%2C13.13&format=json&key=baxetvdf2r6ve9az72rynzar">My ZIP</a><br/>
   
    API Key: <input type="text" id="key" /><br />
    Format: <select id="format">
                <option>json</option>
                <option>xml</option>
            </select><br/>
    Location:   <input type="text" id="includeLocation" value="yes" /><br/>
    Zip:    <select id="zip">
                <option value="01827">Dunstable</option>
                <option value="02108">Boston</option>
                <option value="10705">Yonkers, New York</option>
            </select><br/>
    <button id="go">Get Weather</button>
    <script src="../../javascript/jquery.js"></script>
    <script src="../../pure/pure.js"></script>
    <script src="../../javascript/prettyprint.js"></script>


    <h2>Response</h2>
    <div id="response"></div>

   
    <script>
        var urlTemplate = "http://api.worldweatheronline.com/free/v1/ski.ashx?q=ZIP,USA&format=FORMAT&location=INCLUDELOCATION&key=KEY";
        var keyField = $("#key");
        var formatField = $("#format");
        var includelocation = $("#includeLocation");
        var zipField = $("#zip");
        var go = $("#go");

        go.click(getWeather);

        function getWeather() {

            var formatValue = formatField.val();
            var includeLocation = includeLocation.val();
            var zipValue = zipField.val();
            var keyValue = keyField.val();

            var url = new String(urlTemplate);
            url = url.replace("FORMAT", formatValue);
            url = url.replace("INCLUDELOCATION", includeLocation);
            url = url.replace("KEY", keyValue);
            url = url.replace("ZIP", zipValue);

            var data = {
                "q": zipValue,
                "format": formatValue,
                "includelocation": includeLocation,
                "key": keyValue
            };

            $.ajax({
                url: "http://api.worldweatheronline.com/free/v1/ski.ashx",
                dataType: "jsonp",
                data: data,
                success: function (response) {
                    console.log(response);
                    var table = prettyPrint(response, { maxDepth: 10 });
                    $("#response").html(table);

                    $("thead").click(toggleTbody);
                    $("tbody").each(function () {
                        $(this).css("display", "none");
                    });
                },
                error: function (e) {
                    console.log(e);
                }
            });
        }

        function toggleTbody() {
            var thead = $(this);
            var table = thead.parent("table");
            var tbody = table.find("> tbody");
            tbody.toggle();
        }
    </script>
    <hr />
    <h2>Sources</h2>
     <a href="http://net4.ccs.neu.edu/home/koulsh16/fileview/Default.aspx?~/experiments/Week4/ConnectWebService.aspx">aspxSource</a><br/>
</body>
</html>