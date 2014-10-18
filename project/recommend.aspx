<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">
<head id="Head1" runat="server">
    
   <title>Recommendations</title>
		<!-- Website Title & Description for Search Engine purposes -->
		
		<meta name="description" content="">
		
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
    <script src="javascript/rec.js"></script>
        		
	</head>
	<body>
	
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
                <li class="active">
					<a href="#" target="_blank">Our Recommendations</a>
                   
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
        <div class=" row glib col-sm-12">
            <div id="auth-loggedout">

<div class="fb-login-button pull-right" autologoutlink="true" scope="email,user_checkins">
                                                                                Login with Facebook</div>
</div>
<div id="auth-loggedin" style="display: none">
Hi, <span id="auth-displayname"></span>(<a href="recommend.aspx" id="auth-logoutlink">logout</a>)
    <span><a href="user.aspx" target="_blank"> View Account</a></span>
</div>
</div>
     
    <form id="form1" runat="server"> 
        <div class="col-12">       

                <h2>A Few Must Reads</h2>
            <p>Stimulate your literary hunger by reading the below listed "MUST" books.</p>
                
            </div>
        <div class="cols-10">
    <p>
            <asp:GridView CssClass="table"
                 ID="GridView1"
                 runat="server"
                 AutoGenerateColumns="False"
                 DataKeyNames="Rid"
                 DataSourceID="pgsql"
                 EmptyDataText="There are no data records to display."
                 AllowSorting="true"
                 AllowPaging="True" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="Rid" HeaderText="Rid" ReadOnly="True" SortExpression="Rid" />
                    <asp:BoundField DataField="bookname" HeaderText="bookname" SortExpression="bookname" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                    <asp:BoundField DataField="rating" HeaderText="rating" SortExpression="rating" />
                                    </Columns>
                 <PagerSettings Mode="NumericFirstLast" />
            </asp:GridView>
         <asp:SqlDataSource
                ID="pgsql"
                runat="server" ConnectionString="<%$ ConnectionStrings:koulsh16CS %>" 
                ProviderName="<%$ ConnectionStrings:koulsh16CS.ProviderName %>" 
                SelectCommand="SELECT [Rid], [bookname], [description],[author],[rating] FROM [Table]">
         </asp:SqlDataSource>
        </p></div></form>
         <div class="row" id="featuresHeading">
            <div class="col-12">       

                <h2>The GLIB Works</h2>
                
            </div>
            </div>
         <div class ="row" id="features">
             <div class="col-sm-4 feature">
                <div class="panel">
                    <div class="panel-heading">
                        <h3 class="panel-title">CELEB SPEAK</h3>

                    </div>
                    <img src="../images/twitter.jpg" alt="Celeb Speak" class="img-circle"/>
                    <p> Catch the latest tweets from celebrities</p>
                    <a href="#myModal1" data-toggle="modal" target="_blank" class="btn btn-warning btn-block"> 
                        Get to know the buzz</a>
                     <div class="modal fade" id="myModal1">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title">HEAR WHAT THE LITERARY GENIUSES HAVE TO SAY</h4>
                                </div>
                                <div class="modal-body">
                                   <iframe width="510" height="400" style="border:none;" src="http://output78.rssinclude.com/output?type=iframe&amp;id=863476&amp;hash=7ee2ed0fa0e18161e4d4a1d5a34fdb0f"></iframe>
                                    
                                </div>
                                    <div class="modal-footer">
                                       <button class="btn btn-danger" data-dismiss="modal" type="button">
                                           Close</button>
                                    </div>
                            </div>
                        </div>
                    </div> 
  
                    
                </div>
             </div>
             <div class="col-sm-4 feature">
                <div class="panel">
                    <div class="panel-heading">
                        <h3 class="panel-title">LATEST PUBLICATIONS</h3>

                    </div>
                    <img src="../images/news.jpg" alt="News" class="img-circle" />
                    <p> Find out the latest Book releases</p>
                    <a href="#myModal2" data-toggle="modal" target="_blank" class="btn btn-danger btn-block"> Click for the News</a>
                      <div class="modal fade" id="myModal2">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title">PUBLICATION NEWS</h4>
                                </div>
                                <div class="modal-body">
                                   <iframe class="col-push-4" width="510" height="400" style="border:none;" src="http://output70.rssinclude.com/output?type=iframe&amp;id=863489&amp;hash=08ea60c2efd1b2a9d766ce07df5e8b19"></iframe>
                                    
                                </div>
                                    <div class="modal-footer">
                                       <button class="btn btn-danger" data-dismiss="modal" type="button">
                                           Close</button>
                                    </div>
                            </div>
                        </div>
                    </div>   
                    
                </div>
             </div>
             <div class="col-sm-4 feature">
                <div class="panel">
                    <div class="panel-heading">
                        <h3 class="panel-title">CONTACT US</h3>

                    </div>
                    <img src="../images/contact.jpg" alt="Contact Us" class="img-circle"/>
                    <p> Connect with us</p>
                    <a href="#myModal3" data-toggle="modal" target="_blank" class="btn btn-warning btn-block"> Click for connecting</a>
                      <div class="modal fade" id="myModal3">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title">Contact Us</h4>
                                </div>
                                <div class="modal-body">
                                    
                                        What do you think about the website and its contents?
                                        <br />
                                        How do you want us to improve?<br />
                                        Just want to chat about the literary world?
                                    
                                    <hr />
                                    <h3>Connect with us through the following links.</h3>
                                  
                <a href="https://www.facebook.com/shivastuti.koul?ref=tn_tnmn"
                    target="_blank">
                <img src="../images/fb.jpg" title="Find me on Facebook"
                        height="30" width="30" />
                 </a>
                   
                 <a href="http://www.linkedin.com/pub/shivastuti-koul/23/ab8/506/"
                    target="_blank">
                 <img src="../images/linkedin.png" title="Find me on Linkedin"
                      height="30" width="30" />
                  </a> 
                <a href="https://twitter.com/share" class="twitter-share-button" data-via="emilyvyoma" target="_blank">Tweet</a>

                <br />
                <div class="fb-like " data-href="http://net4.ccs.neu.edu/home/koulsh16/"
                    data-send="true" data-width="350" data-show-faces="true">
                </div>
           
                                    <p>You can email me at emilyvyomahallaway.shiva@gmail.com</p>    
                                                                    
                                </div>
                                    <div class="modal-footer">
                                       <button class="btn btn-danger" data-dismiss="modal" type="button">
                                           Close</button>
                                    </div>
                            </div>
                        </div>
                    </div> 
                      
                    
                </div>
             </div>
        </div>
        <div class="row" id="feature">

        </div>
        
        <div class="row" id="moreClasses">

        </div>

        </div>
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
					<li><a href="#">Reccomendations</a></li>
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
	<!-- All Javascript at the bottom of the page for faster page loading -->
		
	
	<script src="http://code.jquery.com/jquery.js"></script>
	
	<!-- If no online access, fallback to our hardcoded version of jQuery -->
	<script>window.jQuery || document.write('<script src="includes/js/jquery-1.8.2.min.js"><\/script>')</script>
	
	<!-- Bootstrap JS -->
	<script src="../javascript/bootstrap.min.js"></script>
	
	<!-- Custom JS -->
	<script src="javascript/script.js"></script>
        </body>
           </html>
	
	

   
       
