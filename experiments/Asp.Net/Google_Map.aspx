<%@ Page Language="C#" %>

<!DOCTYPE html>

<html lang="en">

<head runat="server">
<link rel="stylesheet" type="text/css" href="~/css/bootstrap.min.css" />
<meta name="viewport" content="initial-scale=1, minimum-scale=1">

<meta charset='utf-8' />

 <title>MapsandPageHits</title>

 <script type='text/javascript'
            src='http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js'>
    </script>

    <script type="text/javascript"
    src="http://maps.google.com/maps/api/js?sensor=false"></script>
 <script runat="server" language="C#">
         protected void Page_Load(object sender, EventArgs e)
         {

         }
</script>

<script type="text/javascript">

    var lat = 42.339026200000000000;
    var lng = -71.090478299999970000;
    var zoom = 10;

    function initialize() {
        var $mapWrapper = $(".mapWrapper");
        var mapWrapper = $mapWrapper[0];

        var newmap = new google.maps.Map(mapWrapper);
        newmap.setTilt(0);

        newmap.setMapTypeId(google.maps.MapTypeId.ROADMAP);

        var latlng = new google.maps.LatLng(lat, lng);
        newmap.setCenter(latlng);

        newmap.setZoom(zoom);
    }

    $(initialize);

</script>

<style type="text/css">
.mapWrapper
{
   
    height: 400px;
    margin-left: auto;
    margin-right: auto;
    border: 1px solid black;
}

.title {
        text-align: center;
        font-weight: bold;
        font-size: 120%;
    }
    
    .pad {
        padding: 30px;
    }
    
</style>

</head>

<body>
    <div class="container"><center>
    <h1>Google Maps and Page Hits Counter</h1></center>
    <h2>Description</h2>
    <p>This feature will be an important utility in my project.Whenever a user needs to look for the nearest location
        that provides books that he requests,a list of searched loactions will appear on the screen.These places can 
        be viewed on Google map and the directions can be found from there an then.This is a basic google map implementation.
        I intend to combine it with Google search results and look for navigation paths to the desired location in my
        next experiment.The following code snippet was used to create the Google maps:<br /><font color ="red"><pre>
    &lt;script type=&quot;text/javascript&quot;&gt;

    var lat = 42.339026200000000000;
    var lng = -71.090478299999970000;
    var zoom = 10;
    function initialize() {
        var $mapWrapper = $(&quot;.mapWrapper&quot;);
        var mapWrapper = $mapWrapper[0];
        var newmap = new google.maps.Map(mapWrapper);
        newmap.setTilt(0);
        newmap.setMapTypeId(google.maps.MapTypeId.ROADMAP);
        var latlng = new google.maps.LatLng(lat, lng);
        newmap.setCenter(latlng);
        newmap.setZoom(zoom);
    }
   $(initialize);
                  </pre>                                                                          </font>
        <p>For keeping a track of the number of page hits i.e number of unique visitors to the site,a Counter
            is created.The following code snippet is used for the same:<font color="red"><pre>
                &lt;a href=&quot;http://www.e-zeeinternet.com/&quot; target=&quot;_blank&quot;&gt;
&lt;img src=&quot;http://www.e-zeeinternet.com/count.php?page=1038946&amp;style=blushdw&amp;nbdigits=5&quot; 
alt=&quot;Free Hit Counter&quot; border=&quot;0&quot; &gt;&lt;/a&gt;&lt;br&gt;&lt;a href=&quot;http://www.e-zeeinternet.com/&quot; title=&quot;Free Hit Counter&quot; target=&quot;_blank&quot; style=&quot;font-family: Geneva, Arial, Helvetica, sans-serif; 
font-size: 10px; color: #000000; text-decoration: none;&quot;&gt;Free Hit Counter&lt;/a&gt;

                                                                                         </pre></font>
        </p>
    </p>
    <hr />
<h2>Results</h2>
<div class="title" "pad"></div>
<h4>Google Map</h4>
<div class="mapWrapper">

</div>
    <div><h4>Page Hits Counter</h4>
           <!-- Counter Code START --><a href="http://www.e-zeeinternet.com/" target="_blank">
            
        <img src="http://www.e-zeeinternet.com/count.php?page=1038946&style=blushdw&nbdigits=5" 
            alt="Free Hit Counter" border="0" ></a><br><a href="http://www.e-zeeinternet.com/" 
                title="Free Hit Counter" target="_blank" style="font-family: Geneva, Arial, Helvetica, sans-serif; 
font-size: 10px; color: #000000; text-decoration: none;">Free Hit Counter</a><!-- Counter Code END -->
    </div>
        <hr />
        <h2>Sources</h2>
         <a href="http://net4.ccs.neu.edu/home/koulsh16/fileview/Default.aspx?~/experiments/Week5/Google_Map.aspx">aspxSource</a><br/>
        <br />
</div>
</body>

</html>
