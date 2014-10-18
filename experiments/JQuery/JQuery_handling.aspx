﻿<%@ Page Language="C#"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Handling Click Event</title>
    <link rel="stylesheet" type="text/css" href="../../css/main.css" />
    <link rel="stylesheet" type="text/css" href="../css/smoothness/jquery-ui.min.css" />
    <script src="../js/jquery.js"></script>
    <script src="../js/jquery-ui.min.js"></script>
    <script>
        $(function () {
            $(".clickable").click(handleClick);
        });

        function handleClick(event) {
            var element = event.currentTarget;  // retrieve element that received the event
            var id = $(element).attr("id");     // get the element's id attribute
            alert("Click " + id);
        }
    </script>
</head>
    <script runat="server" language="C#">
         protected void Page_Load(object sender, EventArgs e)
         {

         }
</script>
<body>
    <div class="ninesixty">

        <h1>Click Event</h1>
        <p>This example illustrates how to handle the click event using jQuery. Consider the two DIVs below</p>
        <div id="bluediv" class="blue w100 h100 clickable"></div>
        <br/>
        <div id="reddiv" class="red w100 h100 clickable"></div>
        <p>These have been declared as follows:</p>
        <pre>
        &lt;div id=&quot;bluediv&quot; class=&quot;blue w100 h100 clickable&quot;&gt;&lt;/div&gt;
        &lt;div id=&quot;reddiv&quot; class=&quot;red w100 h100 clickable&quot;&gt;&lt;/div&gt;
        </pre>
        <p>Using jQuery, we can grab the DIVs by their class as follows:</p>
        <pre>
            $(function () {
                $(".clickable").click(handleClick);
            });

            function handleClick(event) {
                var element = event.currentTarget;  // retrieve element that received the event
                var id = $(element).attr("id");     // get the element's id attribute
                alert("Click " + id);
            }
        </pre>
        <p> We add the click functionality to the element by envoking .click() on it and providing a callback function to handle the click event.
            Note that the class "clickable" is not what makes the DIVs clickable. These classes are merely used to be referenced by jQuery in
            $(".clickable"). Once we have the DIVs in the jQuery context, we can invoke any of a multitude of functions declared by jQuery.
            The click() function adds an event handler.
        </p>
        <p>
            We will later talk about alternative ways to bind events, their pros and cons.
        </p>
        <a href="../../fileview/Default.aspx?~/jquery/events/clicking.html" target="_blank">View Source</a>
    </div>
</body>
</html>
