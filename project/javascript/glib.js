  <script type="text/javascript">


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


    </script>   

    <script type="text/javascript">

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

    </script>   
     
     <script type="text/javascript">

         $(".slideshow > div:gt(0)").hide();

         setInterval(function () {
             $('.slideshow > div:first')
    .fadeOut(1000)
    .next()
    .fadeIn(1000)
    .end()
    .appendTo('.slideshow');
         }, 3000);

    </script>
    
    <script type="text/javascript">

        $(".slideshow2 > div:gt(0)").hide();

        setInterval(function () {
            $('.slideshow2 > div:first')
    .fadeOut(1000)
    .next()
    .fadeIn(1000)
    .end()
    .appendTo('.slideshow2');
        }, 3000);

    </script>

     <script type="text/javascript">

         $(".slideshow3 > div:gt(0)").hide();

         setInterval(function () {
             $('.slideshow3 > div:first')
    .fadeOut(1000)
    .next()
    .fadeIn(1000)
    .end()
    .appendTo('.slideshow3');
         }, 3000);

    </script>   
         