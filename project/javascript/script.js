/*

My Custom JS
============

Author:  Shivastuti koul
Updated: April 2014
Notes:	 Hand coded for GLIB

*/
$("document").ready(function () {
    // Initialize the SDK upon load
    /*FB.init({
        appId: 1400516673559272, // App ID
        channelUrl: '//' + window.location.hostname + '/channel', // Path to your Channel File
        scope: 'id,name,gender,user_birthday,email', // This to get the user details back from Facebook
        status: true, // check login status
        cookie: true, // enable cookies to allow the server to access the session
        xfbml: true  // parse XFBML
    });
    // listen for and handle auth.statusChange events
    FB.Event.subscribe('auth.statusChange', OnLogin);*/
});

// This method will be called after the user login into facebook.
function OnLogin(response) {
    if (response.authResponse) {
        FB.api('/me?fields=id,name,gender,email,birthday', LoadValues);
    }
}

//This method will load the values to the labels
function LoadValues(me) {
    if (me.name) {
        document.getElementById('displayname').innerHTML = me.name;
        document.getElementById('FBId').innerHTML = me.id;
        document.getElementById('DisplayEmail').innerHTML = me.email;
        document.getElementById('Gender').innerHTML = me.gender;
        document.getElementById('DOB').innerHTML = me.birthday;
        document.getElementById('auth-loggedin').style.display = 'block';
    }
}
$(function () {
    var textfield = $("input[name=user]");
    $('button[type="submit"]').click(function (e) {
        e.preventDefault();
        //little validation just to check username
        if (textfield.val() != "") {
            $("#output").addClass("alert alert-success animated fadeInUp").html("Welcome back " + "<span style='text-transform:uppercase'>" + textfield.val() + "</span>");
            $("#output").removeClass(' alert-danger');
            $("input").css({
                "height": "0",
                "padding": "0",
                "margin": "0",
                "opacity": "0"
            });
            //change button text 
            $('button[type="submit"]').html("continue")
            .removeClass("btn-info")
            .addClass("btn-default").click(function () {
                $("input").css({
                    "height": "auto",
                    "padding": "10px",
                    "opacity": "1"
                }).val("");
            });

            //show avatar
            $(".avatar").css({
                "background-image": "url('http://api.randomuser.me/0.3.2/portraits/women/35.jpg')"
            });
        } else {
            //remove success mesage replaced with error message
            $("#output").removeClass(' alert alert-success');
            $("#output").addClass("alert alert-danger animated fadeInUp").html("sorry enter a username ");
        }
        //console.log(textfield.val());

    });
});

var outputresult = ' ';
var title;
var author;
var img_url;


$(function () {
    $(".sub").click(booksearch);
});

function booksearch() {

    var nameb = $(".titlee").val();
    $(".titlee").val("");
    apisearch(nameb);
}

function apisearch(nameb) {



    $.post('HTTP_Handler.ashx', { "booksearh": encodeURI(nameb) }, renderbooks);

}


function renderbooks(GoodreadsResponse, status) {

    if (status == "success") {
        console.log("break");
        $("#results").empty();

        $(GoodreadsResponse).find('work').each(function () {
            title = $(this).find('best_book').find('title').text();
            author = $(this).find('best_book').find('author').find('name').text();
            authorid = $(this).find('best_book').find('author').find('id').text();
            img_url = $(this).find('best_book').find('image_url').text();
            id = $(this).find('best_book').find('id').first().text();






            displayformat();

        });

        $("#results").append(outputresult);



    }
}




function displayformat() {
    outputresult += '<div class="row findbook" style="padding:20px;">';
    outputresult += '<div class="col-md-8">';
    outputresult += '<span class="label label-warning" style="color:white;">' + '<a href= "restricted/description.aspx?iname=' + id + '" target= "_blank"><b>' + title + '</b></a>' + '</span>' + "&nbsp;&nbsp;&nbsp;&nbsp" + "By" + "&nbsp;&nbsp;&nbsp;&nbsp";
    outputresult += '<a href = "restricted/author_info.aspx?aid=' + authorid + '" target = "_blank"><b>' + '<span class="label label-warning">' + author + '</span>' + '</b></a>' + '<br/><br/>';

    outputresult += '<a href= "restricted/releases.aspx?tname=' + title + '&iname=' + id + '" target = "_blank"><b>' + '<span class="label label-primary">' + 'Get Reviews' + '</span>' + '</b></a>' + '<br/><br/>';
    outputresult += '<a href= "restricted/add.aspx?tname=' + title + '&iname=' + id + '&aid=' + authorid + '&aname=' + author + '&img=' + img_url + '" target = "_blank"><b>' + '<span class="label label-info">' + 'Add to your stack ' + '</span>' + '</b></a>' + '</br>' + '</div>';
    outputresult += '<div class="col-md-4" style="padding-left:200px;">' + '<img src ="' + img_url + '" width = "60" height = +80"> ' + '<br/>' + '</div>';
    outputresult += '</div>' + '<hr/>';
}


$(function () {
    $('#alertMe').click(function(e) {
        e.preventDefault();
        $('#successAlert').slideDown();
    });

});

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));

      //Function to be called on Button Click
      function getbook_onclick(file) {

          $(document).ready(function () {
              var book_url = "Books/";
              book_url += file;
              $.ajax({
                  url: book_url,
                  contentType: "application/json",
                  dataType: "json",
                  success: getData
              });
          });

          var content;
          var cost;
          var subtitle;
          $("#book_found").empty();

          function getData(data) {

              var books = data.items;

              if (books == null) {
                  var error = "Sorry! No Results Found";
                  content = error;
                  $("#book_found").append(content);
              }

              else {


                  $.each(books, function (index, book) {

                      if (book.saleInfo.listPrice) {
                          cost = book.saleInfo.listPrice.amount;
                      }

                      else {
                          cost = "20";
                      }

                      if (book.volumeInfo.subtitle) {
                          subtitle = book.volumeInfo.subtitle;
                      }
                      else {
                          subtitle = " ";
                      }

                      if (book.volumeInfo.averageRating) {
                          rating = book.volumeInfo.averageRating
                      }

                      else {
                          rating = "2.5";
                      }

                      content = '<div class="wrapper"><div class="book_image"><img width="130px" height="200px" src=' + book.volumeInfo.imageLinks.thumbnail +
                     '/></div><div class="info"><p>' + book.volumeInfo.title +
                     '</p><h4>' + subtitle +
                     '</h4>By <i> ' + book.volumeInfo.authors +
                     '</i><br/><br/>' + book.searchInfo.textSnippet +
                     '</div><div class="buy"><br/><br/><h4>Our Rating : ' + rating +
                     '<br/></h4><a href="shoppingCart.aspx?id=' + book.id +
                                                 '&title=' + book.volumeInfo.title +
                                                 '&price=' + cost +
                                                 '"><img src="images/add_to_cart.gif" width="100px" height="25px"/></a><br/><h3>$' + cost +
                                                 '&nbsp;Only</h3></div> </div><div class="clear"><br/></div>';

                      $("#sliders").empty();
                      $("#book_found").append(content);

                      $(".wrapper").css({ "color": "black", "width": "100%" });
                      $(".book_image").css({ "padding": "2px", "text-align": "center", "background-color": "white", "color": "black", "float": "left", "width": "135px", "height": "230px" });
                      $(".info").css({ "overflow": "auto", "padding-left": "3px", "padding-right": "5px", "text-align": "left", "color": "black", "float": "left", "width": "330px", "height": "230px" });
                      $(".buy").css({ "padding-left": "7px", "padding-right": "3px", "text-align": "left", "color": "white", "float": "left", "width": "135px", "height": "230px" });
                      $(".clear").css({ "clear": "both" });
                      $(".buy a").css({ "color": "green" });
                      $(".buy h4").css({ "color": "#CC6600" });
                      $(".info p").css({ "font-size": "18px", "text-decoration": "underline", "font-weight": "bolder" });




                  });
              }
          }

      }


       function searchBooks() {

          $(document).ready(function () {
              var content;
              query = $(".searchbox").val();
              var cost;
              var rating;
              $("#book_found").empty();
              if (query) {

                  $.getJSON("../Experiments/httphandler.ashx", { "search": encodeURI(query) }, function (data) {
                      var books = data.items;

                      if (books == null) {
                          var error = "Sorry! No Results Found";
                          content = error;
                          $("#book_found").append(content);
                      }

                      else {

                          $.each(books, function (index, book) {

                              if (book.saleInfo.listPrice) {
                                  cost = book.saleInfo.listPrice.amount;
                              }

                              else {
                                  cost = "20";
                              }

                              if (book.volumeInfo.subtitle) {
                                  subtitle = book.volumeInfo.subtitle;
                              }
                              else {
                                  subtitle = " ";
                              }

                              if (book.volumeInfo.averageRating) {
                                  rating = book.volumeInfo.averageRating
                              }

                              else {
                                  rating = "2.5";
                              }

                              content = '<div class="wrapper"><div class="book_image"><img width="130px" height="200px" src=' + book.volumeInfo.imageLinks.thumbnail +
                      '/></div><div class="info"><p>' + book.volumeInfo.title +
                      '</p><h4>' + subtitle +
                      '</h4>By <i> ' + book.volumeInfo.authors +
                      '</i><br/><br/>' + book.searchInfo.textSnippet +
                      '</div><div class="buy"><br/><br/><h4>Our Rating : ' + rating +
                      '<br/></h4><a href="shoppingCart.aspx?id=' + book.id +
                                                  '&title=' + book.volumeInfo.title +
                                                  '&price=' + cost +
                                                  '"><img src="images/add_to_cart.gif" width="100px" height="25px"/></a><br/><h3>$' + cost +
                                                  '&nbsp;Only</h3></div> </div><div class="clear"><br/></div>';
                              $("#sliders").empty();
                              $("#book_found").append(content);

                              $(".wrapper").css({ "color": "black", "width": "100%" });
                              $(".book_image").css({ "padding": "2px", "text-align": "center", "background-color": "white", "color": "black", "float": "left", "width": "135px", "height": "230px" });
                              $(".info").css({ "overflow": "auto", "padding-left": "3px", "padding-right": "5px", "text-align": "left", "color": "black", "float": "left", "width": "330px", "height": "230px" });
                              $(".buy").css({ "padding-left": "7px", "padding-right": "3px", "text-align": "left", "color": "white", "float": "left", "width": "135px", "height": "230px" });
                              $(".clear").css({ "clear": "both" });
                              $(".buy a").css({ "color": "green" });
                              $(".buy h4").css({ "color": "#CC6600" });
                              $(".info p").css({ "font-size": "18px", "text-decoration": "underline", "font-weight": "bolder" });

                          });
                      }
                  });
              }
              else {

                  alert("Please enter a Search Query and Click Search ")
              }
          });
      }

        $(".slideshow > div:gt(0)").hide();

setInterval(function () {
    $('.slideshow > div:first')
.fadeOut(1000)
.next()
.fadeIn(1000)
.end()
.appendTo('.slideshow');
}, 3000);

    
    $(".slideshow2 > div:gt(0)").hide();

setInterval(function () {
    $('.slideshow2 > div:first')
.fadeOut(1000)
.next()
.fadeIn(1000)
.end()
.appendTo('.slideshow2');
}, 3000);

     $(".slideshow3 > div:gt(0)").hide();

setInterval(function () {
    $('.slideshow3 > div:first')
.fadeOut(1000)
.next()
.fadeIn(1000)
.end()
.appendTo('.slideshow3');
}, 3000);

 
         