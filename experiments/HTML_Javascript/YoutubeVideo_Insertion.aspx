<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <title>You Tube Video Insertion</title>
    <link rel="stylesheet" type="text/css" href="~/css/bootstrap.min.css" />
</head>
<body>
    <div class="container">
       <h1>You Tube Video Insertion</h1>
        <h2>
         Description   
        </h2>
        <hr />
        <p>
            <p>
                This experiment shows how to embed a video in the web page.
                The easiest way to upload videos on the website would be to upload it on YouTube and then link it to the webpage suign iframe tag.
                The src attribute of the tag should specify the link to the source of the video.<br />
                We can customise the video screen by specifying the width and height attributes.</p>
                If you wish to add videos to make your website more user friendly, you can embedd relevant videos.
                <br />
                For e.g. A website showing a national Geographic feed of oceanic life.The tag that enables this would be:
            </p>
        <pre><font color="red">
            &lt;iframe width=&quot;560&quot;
            height=&quot;315&quot; 
            src=&quot;//www.youtube.com/embed/cH9WfO_LBu8&quot; 
            frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;
            </font>
        </pre>
                
            
            
            <h2>Results</h2>
        <hr />
        <div>
           <iframe width="560" height="315" src="//www.youtube.com/embed/cH9WfO_LBu8" frameborder="0" allowfullscreen></iframe>
        </div>
        <h2>Source</h2>
        <hr />
        <p>
            <b>View Source: </b><a href="../../fileview/default.aspx?~/experiments/Week7/YoutubeVideo_Insertion.aspx"
                target="_blank"><code>aspx Source</code> </a>
        </p>
       
    </div>
</body>
</html>
