(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

!function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ?
      'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + '://platform.twitter.com/widgets.js'; fjs.parentNode.insertBefore(js, fjs); }
}(document, 'script', 'twitter-wjs');

window.history.forward();
function noBack() { window.history.forward(); }

(function (d) {
    var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
    if (d.getElementById(id)) { return; }
    js = d.createElement('script'); js.id = id; js.async = true;
    js.src = "//connect.facebook.net/en_US/all.js";
    ref.parentNode.insertBefore(js, ref);
}(document));

// Init the SDK upon load
window.fbAsyncInit = function () {
    FB.init({
        appId: '1400516673559272', // App ID
        channelUrl: '//' + window.location.hostname + '/channel', // Path to your Channel File
        status: true, // check login status
        cookie: true, // enable cookies to allow the server to access the session
        xfbml: true  // parse XFBML
    });

    FB.Event.subscribe("auth.logout", function () {
        window.location = '/users/logout'
    });



    // listen for and handle auth.statusChange events
    FB.Event.subscribe('auth.statusChange', function (response) {
        if (response.authResponse) {
            // user has auth'd your app and is logged into Facebook

            FB.api('/me', function (me) {
                if (me.name) {
                    var userInfo = document.getElementById('user-info');

                    document.getElementById('auth-displayname').innerHTML = me.name;
                    userInfo.innerHTML = '<img src="https://graph.facebook.com/' + me.id + '/picture?type=large">';
                    var location = document.getElementById('location');
                    location.innerHTML = me.location;

                }
            })

            document.getElementById('auth-loggedout').style.display = 'none';
            document.getElementById('auth-loggedin').style.display = 'block';

        } else {
            // user has not auth'd your app, or is not logged into Facebook

            document.getElementById('auth-loggedout').style.display = 'block';
            document.getElementById('auth-loggedin').style.display = 'none';
        }
    });
    $("#auth-logoutlink").click(function () { FB.logout(function () { window.location.reload(); }); });
}


var currentPageIndex = 1;
var TotalResult = 0;


function SearchBooks(e) {

    var searchText = $('#txtSearchBooks').val();

    if (searchText != '' && searchText != undefined) {

        $("#tblBookSearchResults").find("tr:gt(0)").remove();
        var url = 'https://www.googleapis.com/books/v1/volumes?q=' + searchText + '&maxResults=10&startIndex=0';

        $.ajax({
            url: url,
            dataType: "jsonp",
            async: true,
            //if ajax call succeeds perform this action
            success: function (result) {

                TotalResult = result.totalItems;
                generatePages(result.totalItems / 10);
                ajax.parseJSONP(result);
            },
            //if there is an error to the ajax call perform this action
            error: function (request, error) {
                alert('Network error has occurred please try again!');
            }
        });

        var ajax = {
            parseJSONP: function (result) {
                //iterate each returned item
                $.each(result.items, function (i, row) {
                    var authors = '';
                    for (var x = 0; x < result.items[i].volumeInfo.authors.length; x++) {
                        authors = authors + result.items[i].volumeInfo.authors[x] + ',';
                    }
                    authors = authors.substring(0, authors.length - 1);
                    $('#tblBookSearchResults').append('<tr><td>' + result.items[i].volumeInfo.title + '</td><td>' + authors + '</td><td>' + result.items[i].volumeInfo.publisher + '</td><td>' + result.items[i].volumeInfo.publishedDate + '</td><td>' + result.items[i].volumeInfo.description + '</td><td><img src="' + result.items[i].volumeInfo.imageLinks.thumbnail + '"/>' + '</td><td><a href="' + result.items[i].volumeInfo.previewLink + '">Preview Link</a>' + '</td><td><a href="' + result.items[i].volumeInfo.infoLink + '">Info Link</a>' + '</td><td><button class="btn btn-default" type="button">Add to List</button></td></tr>');
                });
            }
        };
    }
}

function generatePages(number) {

    if (number > 0) {
        $('#lblPagerInfo').html("Page 1 Of " + Math.round(number));
        $('#txtPageNumber').val(currentPageIndex);
    }
}

function nextPage() {

    currentPageIndex = currentPageIndex + 1;
    $('#lblPagerInfo').html("Page " + currentPageIndex + " Of " + Math.round(TotalResult / 10));

    $('#txtPageNumber').val(currentPageIndex);

    if (currentPageIndex < TotalResult) {

        var searchText = $('#txtSearchBooks').val();

        if (searchText != '' && searchText != undefined) {

            $("#tblBookSearchResults").find("tr:gt(0)").remove();
            var url = 'https://www.googleapis.com/books/v1/volumes?q=' + searchText + '&maxResults=10&startIndex=' + (currentPageIndex - 1);

            $.ajax({
                url: url,
                dataType: "jsonp",
                async: true,
                //if ajax call succeeds perform this action
                success: function (result) {
                    ajax.parseJSONP(result);
                },
                //if there is an error to the ajax call perform this action
                error: function (request, error) {
                    alert('Network error has occurred please try again!');
                }
            });

            var ajax = {
                parseJSONP: function (result) {
                    $("#tblBookSearchResults").find("tr:gt(0)").remove();
                    //iterate each returned item
                    $.each(result.items, function (i, row) {
                        var authors = '';
                        for (var x = 0; x < result.items[i].volumeInfo.authors.length; x++) {
                            authors = authors + result.items[i].volumeInfo.authors[x] + ',';
                        }
                        authors = authors.substring(0, authors.length - 1);
                        $('#tblBookSearchResults').append('<tr><td>' + result.items[i].volumeInfo.title + '</td><td>' + authors + '</td><td>' + result.items[i].volumeInfo.publisher + '</td><td>' + result.items[i].volumeInfo.publishedDate + '</td><td>' + result.items[i].volumeInfo.description + '</td><td><img src="' + result.items[i].volumeInfo.imageLinks.thumbnail + '"/>' + '</td><td><a href="' + result.items[i].volumeInfo.previewLink + '">Preview Link</a>' + '</td><td><a href="' + result.items[i].volumeInfo.infoLink + '">Info Link</a>' + '</td><td><button class="btn btn-default" type="button">Add to List</button></td></tr>');
                    });
                }
            };
        }

    }
}

function preveiousPage() {

    currentPageIndex = currentPageIndex - 1;
    $('#lblPagerInfo').html("Page " + currentPageIndex + "Of " + Math.round(TotalResult / 10));
    $('#txtPageNumber').val(currentPageIndex);

    if (currentPageIndex != 0 && currentPageIndex < TotalResult) {

        var searchText = $('#txtSearchBooks').val();

        if (searchText != '' && searchText != undefined) {

            $("#tblBookSearchResults").find("tr:gt(0)").remove();
            var url = 'https://www.googleapis.com/books/v1/volumes?q=' + searchText + '&maxResults=10&startIndex=' + (currentPageIndex - 1);

            $.ajax({
                url: url,
                dataType: "jsonp",
                async: true,
                //if ajax call succeeds perform this action
                success: function (result) {
                    ajax.parseJSONP(result);
                },
                //if there is an error to the ajax call perform this action
                error: function (request, error) {
                    alert('Network error has occurred please try again!');
                }
            });

            var ajax = {
                parseJSONP: function (result) {
                    //iterate each returned item
                    $("#tblBookSearchResults").find("tr:gt(0)").remove();
                    //iterate each returned item
                    $.each(result.items, function (i, row) {
                        var authors = '';
                        for (var x = 0; x < result.items[i].volumeInfo.authors.length; x++) {
                            authors = authors + result.items[i].volumeInfo.authors[x] + ',';
                        }
                        authors = authors.substring(0, authors.length - 1);
                        $('#tblBookSearchResults').append('<tr><td>' + result.items[i].volumeInfo.title + '</td><td>' + authors + '</td><td>' + result.items[i].volumeInfo.publisher + '</td><td>' + result.items[i].volumeInfo.publishedDate + '</td><td>' + result.items[i].volumeInfo.description + '</td><td><img src="' + result.items[i].volumeInfo.imageLinks.thumbnail + '"/>' + '</td><td><a href="' + result.items[i].volumeInfo.previewLink + '">Preview Link</a>' + '</td><td><a href="' + result.items[i].volumeInfo.infoLink + '">Info Link</a>' + '</td><td><button class="btn btn-default" type="button">Add to List</button></td></tr>');
                    });
                }
            };
        }

    }

}

function cellClicked() {
}