<%@ Page Language="C#"%>

<!DOCTYPE html>
<script runat="server" language="C#">
    protected void Page_Load(object sender, EventArgs e)
    {
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Aspx Experiment</title>
    <link rel="stylesheet" type="text/css" href="~/css/bootstrap.min.css" />
    
    
</head>
  
<body>
    <form id="form1" runat="server">
        
            <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Sticky header through the page.</a>
    </div></div>
        <div class="container"><br /><br />
             <div class="row apps">
    <div class="col-md-12">
            <div class="collapse navbar-collapse">
    <ul class="nav navbar-nav">
        <li><a href="#">Blog</a></li>
        <li><a href="#about">Contacts</a></li>
        <li class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">ShivaHome <span class="caret"></span></a>
    <ul class="dropdown-menu" aria-labelledby="themes">
        <li><a tabindex="-1" href="http://bootswatch.com/" target="_blank">Bootswatch</a></li>
        <li><a tabindex="-1" href="http://bootsnipp.com/" target="_blank">Bootsnip</a></li>
    </ul>
</li>
               <li class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Links <span class="caret"></span></a>
    <ul class="dropdown-menu" aria-labelledby="themes">
        <li><a tabindex="-1" href="http://bootswatch.com/" target="_blank">Bootswatch</a></li>
        <li><a tabindex="-1" href="http://bootsnipp.com/" target="_blank">Bootsnip</a></li>
    </ul>
</li>
    </ul>
               
    </div>
</div>
</div>
     
        <h1><center>Responsive Content Experiments</center></h1></div>

        <div class="container"></div>
        <div class="main container">
               <div class="row">
                <div class="col-lg-12"><h2>Description</h2>This experiment highlights the 
                    presence of sticky header,Navigation toolbars with drop downs,and organising the
                    data into grids as rows and columns.Also the responsiveness for different devices
                    is highlighted in the experiment. The code snippet used to  design the experiemnt is as 
                    follows.Also the experiments are done using bootstrap and referred from Prof. Annunziato's site
                    for the topics that need to be covered.<br /><pre>
                    <font color ="red"> 
 Code for a sticky header<br /><hr />
     &lt;div class=&quot;navbar navbar-inverse navbar-fixed-top&quot; role=&quot;navigation&quot;&gt;
        &lt;div class=&quot;navbar-header&quot;&gt;
            &lt;a class=&quot;navbar-brand&quot; href=&quot;#&quot;&gt;.....&lt;/a&gt;
    &lt;/div&gt;&lt;/div&gt;
        &lt;div class=&quot;container&quot;&gt;&lt;br /&gt;&lt;br /&gt;
             &lt;div class=&quot;row apps&quot;&gt;
    &lt;div class=&quot;col-md-12&quot;&gt;
            &lt;div class=&quot;collapse navbar-collapse&quot;&gt;
    &lt;ul class=&quot;nav navbar-nav&quot;&gt;
        &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Blog&lt;/a&gt;&lt;/li&gt;<br />
  Code for a Drop down<br /><hr />
        &lt;li&gt;&lt;a href=&quot;#about&quot;&gt;Contacts&lt;/a&gt;&lt;/li&gt;
        &lt;li class=&quot;dropdown&quot;&gt;
    &lt;a class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot; href=&quot;#&quot;&gt;ShivaHome &lt;span class=&quot;caret&quot;&gt;&lt;/span&gt;&lt;/a&gt;
    &lt;ul class=&quot;dropdown-menu&quot; aria-labelledby=&quot;themes&quot;&gt;
        &lt;li&gt;&lt;a tabindex=&quot;-1&quot; href=&quot;http://bootswatch.com/&quot; target=&quot;_blank&quot;&gt;Bootswatch&lt;/a&gt;&lt;/li&gt;
        &lt;li&gt;&lt;a tabindex=&quot;-1&quot; href=&quot;http://bootsnipp.com/&quot; target=&quot;_blank&quot;&gt;Bootsnip&lt;/a&gt;&lt;/li&gt;
    &lt;/ul&gt;
&lt;/li&gt;<br />
 Code for resizing for different devices<br /><hr />
 &lt;div class=&quot;container&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;main container&quot;&gt;
               &lt;div class=&quot;row&quot;&gt;
                &lt;div class=&quot;col-lg-12&quot;&gt;&lt;h2&gt;Description&lt;/h2&gt;This experiment highlights the ........
                    
                &lt;/div&gt;
                    
                &lt;/div&gt;</font></pre>
                    <hr />
                </div>
                    
                </div>

        <h2>Results - Grid Systems (Large,Medium,Small and Extra Small(respectively))</h2>

        <!-- Use rows and columns to organize your content -->
            <div class="row">
                <div class="col-lg-12"><h3>Large Devices</h3><hr />
                  </div></div>
            <div class="row">
          <div class="col-lg-4">
              <h4>Three Columns</h4>
              These three columns are using class .col-lg-4, so that 4 x 3 columns = 12.
              The md in the class name refers to 'medium'. Other alternative column
              class names would be .col-xs-4 and .col-lg-4 where xs stands for
              'extra small' and 'large'.
          </div>
          <div class="col-lg-4">
              <h4>Different Sizes</h4>
              Extra small, medium, and large refer to the intended target device
              screen width. Together they define several break points where the
              styles take effect. For instance, large is intended for desktops
              with large screens of 1170 pixels.
          </div>
          <div class="col-lg-4">
              <h4>Different Devices</h4>
              Medium is intended for desktops with screens larger than 970 pixels.
              Small is intended for tablet devices with screens larger than 750
              pixels. Extra small is intended for phones with screen widths
              less than 750 pixels.
          </div>
        </div>
            <hr />
 <div class="row">
                <div class="col-md-12"><h3>Medium Devices</h3><hr />
                  </div></div>
            <div class="row">
          
        <div class="row">
          <div class="col-md-8">
              <h4>Rows</h4>
              Bootstrap grids allow laying out pages in terms of horizontal
              grids and vertical rows. Each row is composed of 12 eaqual width columns.
              Bootstrap declares several column classes that configure the
              width of the columns. For each row, column widths must add up to 12.
              For instance this column has column class .col-md-8 and the column
              immediately to the right of this column has class .col-md-4.
          </div>
          <div class="col-md-4">
              <h4>Columns</h4>
              The 8 and 4 add up to 12. This column has column class .col-md-4.
              Together with the column to the left, adds up to 12.
          </div>
        </div>
<hr />
         <div class="row">
                <div class="col-sm-12"><h3>Small Devices</h3><hr />
                  </div></div>
            <div class="row">
        <div class="row">
          <div class="col-sm-6">
              <h4>Responsive</h4>
              These two columns have class .col-sm-6 so they have the same
              width. The rows and columns are responsive and friendly to
              various types of devices. As you resize the Web page, the
              columns and rows reposition to adapt to the new width of the
              Web page.
          </div>
          <div class="col-sm-6">
              <h4>Smaller Devices</h4>
              As you resize the Web page the columns resize to stack so they
              make better use of the page width in smaller devices.
          </div>
        
           
            </div></div>

        <hr />
<div class="row">
                <div class="col-xs-12"><h3>Extra Small Devices</h3><hr />
                  </div></div>
            <div class="row">
                <div class="row">
        <div class="row">
          <div class="col-xs-1">.col-lg-1</div>
          <div class="col-xs-1">.col-lg-1</div>
          <div class="col-xs-1">.col-lg-1</div>
          <div class="col-xs-1">.col-lg-1</div>
          <div class="col-xs-1">.col-lg-1</div>
          <div class="col-xs-1">.col-lg-1</div>
          <div class="col-xs-1">.col-lg-1</div>
          <div class="col-xs-1">.col-lg-1</div>
          <div class="col-xs-1">.col-lg-1</div>
          <div class="col-xs-1">.col-lg-1</div>
          <div class="col-xs-1">.col-lg-1</div>
          <div class="col-xs-1">.col-lg-1</div>
        </div>
                 
          <div class="col-xs-12">
              <h4>Rows</h4>
              Bootstrap grids allow laying out pages in terms of horizontal
              grids and vertical rows. Each row is composed of 12 eaqual width columns.
              Bootstrap declares several column classes that configure the
              width of the columns. 
          </div>


    </div> <!-- .main.container -->
            <hr /><h2>Sources</h2>
        <a href="http://net4.ccs.neu.edu/home/koulsh16/fileview/Default.aspx?~/experiments/Week3/aspx_template.aspx" target="_blank">aspx code</a>
               

    
    </form>
</body>
</html>
