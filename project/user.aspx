<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">
<head id="Head1" runat="server">
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script language="JavaScript" src="https://www.worldcat.org/wcpa/rel20140213/html/searchapi.js" type="text/javascript"></script>
		
		<!-- Website Title & Description for Search Engine purposes -->
		<title></title>
		<meta name="description" content="">
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<!-- Mobile viewport optimized -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		
		<!-- Bootstrap CSS -->
       
        <link href="css/bootstrap.min.css" rel="stylesheet">
        
        <link href="css/bootstrap-glyphicons.css" rel="stylesheet">
		
		<!-- Custom CSS -->
		<link href="css/styles.css" rel="stylesheet">
		
		<!-- Include Modernizr in the head, before any other Javascript -->
		<script src="javascript/modernizr-2.6.2.min.js"></script>
       
    <!-- This code piece is taken from Facebook Developers-->
    <script src="javascript/user.js"></script>
       

       		
	</head>
	<body onload="noBack();">
	onpageshow="if (event.persisted) noBack();" onunload="">
	<div class="container" id="main">
         
        	
        	
        <div class= "navbar navbar-fixed-top bkhead">
            	<div class="container">
		
		<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
		<button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
            <span class="icon-bar"></span>
		</button>
		
		<div class="nav-collapse collapse navbar-responsive-collapse bkhead">
			<ul class="nav navbar-nav">
                <li><a href="index.html" target="_blank">Home</a></li>
							
				<li class="nav navbar-nav">
                    <a href="inspire.html" target="_blank">How to use GLIB</a>
                </li>
                <li>
					<a href="recommend.aspx" target="_blank">Our Recommendations</a>
                   
				</li>
                <li class="nav navbar-nav">
                    <a href="glib.html " target="_blank">GLIB Book Search</a>
				</li>
                <li class="nav navbar-nav">
					<a href="glib - JournalSearch.html" target="_blank">GLIB Journal Search</a>
                   
				</li>
                <li class="nav navbar-nav" >
					<a href="doc.html" target="_blank">Documentation</a>
                   
				</li>
            </ul>
			
			
            
			
	
		</div><!-- end nav-collapse -->
	
	</div><!-- end container -->

        </div>
       <div class="row responsive sm-col-12 glib">
          <ul class="nav navbar-nav pull-right">
                <li>
                    <div id="auth-status">
<div id="auth-loggedout">

<div class="fb-login-button" autologoutlink="true" scope="email,user_checkins">
                                                                                Login with Facebook</div>
</div>
<div id="auth-loggedin" style="display: none">
Hi, <span id="auth-displayname"></span>(<a href="index.html" id="auth-logoutlink">logout</a>)
    </div>
</div></li>

            </ul>
         </div>
        
        <div class="container">
                    <div class="row">
                <div class="panel responsive glib col-lg-3">
                <center> <div class="img-responsive pd" id="user-info"> </div> </center>
                    </div>
            <div class="panel responsive glib col-lg-9"><center>
                <h3>Welcome to your GLIB Account</h3></center>
                <hr /><hr />
                GLIB enables you to post comments,read what your friends have to say about this site and acts as a blackboard for posting your literary ideas
                Do not forget to check out the new Word Game on the portal.Hope you have a happy Glibby day ahead.Please do let us know what improvements would you want us to make.<p></p>
           <hr />
                 </div> </div>
                   
               
        <div class="row responsive col-sm-12">
    <div class="row">
                <div class="panel glib panl col-sm-12">
                <div class="panel-heading colr">The GLIB Dashboard</div>
                              
                          
                              <div class="fb-activity responsive  col-sm-4" data-site="http://net4.ccs.neu.edu/home/koulsh16/project" data-action="likes, shares"  data-height="300" data-width="340" data-colorscheme="dark" data-header="true">

                              </div>
                <div class="pull-right responsive">          
                 <iframe class="col-push-8 responsive hidden-sm pull-right" width="510" height="400" style="border:none;" src="http://output70.rssinclude.com/output?type=iframe&amp;id=863489&amp;hash=08ea60c2efd1b2a9d766ce07df5e8b19"></iframe>
                        
                      </div>      </div>
  </div>
    <div class="row">  
        <div class="col-sm-12 panel panl responsive">              
                                  
                                 <div class="fb-comments responsive col-sm-4" data-href="https://www.facebook.com/GLIB" data-width="300" data-height="300" data-numposts="3" data-colorscheme="dark">

                                
                             </div>
             
<div class="responsive col-sm-8">
    <p>The CROSSWORD Game</p>
    <iframe src="puzzle.html" width="100%" height="300">
 
</iframe>
</div>
<!-- END worldcat.org search box -->
            </div>

            </div>
    </div>
         
          
            <div class="col-12 big">
                               <div class="well">
                    <div class="page-header">
                        <h1> GLIB Book Search<small> Get your book collection on your phone now.</small></h1>
                    </div>
                    <p class="lead">Search all your favourite books here
                    </p>
                    <a href="glib.html" target="_blank"class="btn btn-large btn-primary">Click to get started</a>
                    <a href="inspire.html" target="_blank" class="btn btn-large btn-link">How to use the GLIB</a>
                </div>
            </div>

            <div class="col-12 big">
               
                    <div class="well">
                    <div class="page-header">
                        <h1> GLIB Journal Search<small> Get the latest  journals on your phone now.</small></h1>
                    </div>
                    <p class="lead">Search all the new journals relevant to your field
                    </p>
                    <a href="glib - JournalSearch.html" target="_blank"class="btn btn-large btn-primary responsive">Click to get started</a>
                    <a href="inspire.html" target="_blank" class="btn btn-large btn-link responsive">How to use the GLIB</a>
                </div>
            </div>


        </div></div>
              
            <footer class="foot">
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
			<h6>Copyright &copy; 2014 {Shivastuti}</h6>
			</div><!-- end col-sm-2 -->
			
						
			<div class="col-sm-3">
				<h6>Navigation</h6>
				<ul class="unstyled">
					<li><a href="index.html" target="_blank">Home</a></li>
					<li><a href="recommend.aspx" target="_blank">Reccomendations</a></li>
					<li><a href="doc.html" target="_blank">Project Documentation</a></li>
					<li><a href="inspire.html" target="_blank"> Demo</a></li>
				</ul>
			</div><!-- end col-sm-2 -->
			
			<div class="col-sm-3">
				<h6>Follow Us</h6>
				<ul class="unstyled">
					<li><a href="https://www.facebook.com/shivastuti.koul?ref=tn_tnmn"
                    target="_blank">Facebook</a></li>
					<li><a href="https://twitter.com/share" target="_blank" data-via="emilyvyoma">Twitter</a></li>
                     <li><a href="http://www.linkedin.com/pub/shivastuti-koul/23/ab8/506/"
                    target="_blank">LinkedIn</a></li>                  
                 
                 

				</ul>
			</div><!-- end col-sm-2 -->
			
			<div class="col-sm-3">
				<h6>Coded with <span class="glyphicon glyphicon-heart"></span> by Shivastuti Koul</h6>
			</div><!-- end col-sm-2 -->
		</div><!-- end row -->
	</div><!-- end container -->
</footer>              

        
      <script src="http://code.jquery.com/jquery.js"></script>
	
	<!-- If no online access, fallback to our hardcoded version of jQuery -->
	<script>window.jQuery || document.write('<script src="includes/js/jquery-1.8.2.min.js"><\/script>')</script>
	
	<!-- Bootstrap JS -->
	<script src="../javascript/bootstrap.min.js"></script>
         
 <!-- Custom JS -->
    <script src="javascript/script.js"></script>
            </body></html>