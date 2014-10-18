<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Books API Example</title>
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
    <form id="form1" runat="server">
        <div class="container">
        <h1><center>Testing data access from Google Books API</center></h1>
<h2>Description</h2>

In this experiment I tried retrieving the data by querying it inline through the code just to check the API 
        workablility.
<br>
<p>
The given code performs the styling:
</p>
<pre><font color="red">
    &lt;script&gt;
        function handleResponse(response) {
            for (var i = 0; i &lt; response.items.length; i++) {
                var item = response.items[i];
                document.getElementById(&quot;content&quot;).innerHTML += &quot;&lt;br&gt;&quot; + item.volumeInfo.title;
                console.log(handleResponse);
            }</font>
        }</pre><hr />
        <h2>Results</h2>
    
        <div id="content"></div>
    <script>
        function handleResponse(response) {
            for (var i = 0; i < response.items.length; i++) {
                var item = response.items[i];
                // in production code, item.text should have the HTML entities escaped.
                document.getElementById("content").innerHTML += "<br>" + item.volumeInfo.title;
                console.log(handleResponse);
            }
        }
    </script>
         <script src="https://www.googleapis.com/books/v1/volumes?q=flowers+inauthor:keyes&callback=handleResponse&key=AIzaSyAor9cbqnst4hbc6ErjTbUm-qbFilBBumU"></script>
    
        <hr />
        <h2>Sources</h2>
         <a href="http://net4.ccs.neu.edu/home/koulsh16/fileview/Default.aspx?~/experiments/Week6/Project_Data_Access_Test.aspx">aspxSource</a><br/>
    </div>
    </form>
</body>
</html>
