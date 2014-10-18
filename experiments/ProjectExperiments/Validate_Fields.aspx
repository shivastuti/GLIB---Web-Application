<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">
<head id="Head1" runat="server">
    <title>Validate Fields</title>
    <link rel="stylesheet" type="text/css" href="~/css/bootstrap.min.css" />

</head>
<body>
    <div class="container">
         <h1 class="left_pad">
           Validating input Fields according to the type</h1>
               <hr />
        <br />
        <br />
        <form method="post" action="Validate_Fields.aspx" onsubmit="javascript:return WebForm_OnSubmit();" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJOTY3MDMwOTI4ZGQrONG8vKmh3QdTkew0CvLFBe7qIQpLqpodGTFjRF7qEw==" />
</div>

<script type="text/javascript">
    //<![CDATA[
    var theForm = document.forms['form1'];
    if (!theForm) {
        theForm = document.form1;
    }
    function __doPostBack(eventTarget, eventArgument) {
        if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
            theForm.__EVENTTARGET.value = eventTarget;
            theForm.__EVENTARGUMENT.value = eventArgument;
            theForm.submit();
        }
    }
    //]]>
</script>


<script src="../../javascript/validate.js" type="text/javascript"></script>


<script src="../../javascript/validate2.js" type="text/javascript"></script>
<script type="text/javascript">
    //<![CDATA[
    function WebForm_OnSubmit() {
        if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
        return true;
    }
    //]]>
</script>

<div class="aspNetHidden">

	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBgLU1IPnBQKvpuq2CALyveCRDwLZruWNCgKyzcaDDQLcu4S2BEbbBZLc1RMApjolJy+B3aeZW+jaX2IyuFk/ixfR0ojm" />
</div>
        <div class="left_pad right_pad">
            <h2>Description</h2>
            <p>
            The experiment invloves taking various types of fields like a username,password(first entry and retyped) and email id as
            a user input and then letting the user know if the fields are valid according to general norms.
                <br />
            </p>
        </div>
        
        <div class="left_pad right_pad">
            There are 3 text boxes shown below. The following are the conditions.
            <br />
            <ol>
                <li>None of the fields can be empty.</li>
                <li>Passwords in both the field should match.</li>
                <li>Email address inputted should be in proper format as per World Wide Web standards.</li>
            </ol>
            <p>When the submit button is hit, the same page loads. If there are any errors in the input, the same will be shown on the
        right hand side of the corresponding text box.</p>
        </div>
        <br />
        <hr />
        <div class="left_pad right_pad">
           <h2>Results</h2>
             <h3>
                 Please input the following:</h3>
            <br />
            
            <span id="luser" class="">Username : </span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input name="username" type="text" value="asdf" id="username" />
            
            <span id="username_required" style="color:Red;visibility:hidden;">   Username cannot be blank. Please try again</span>
            <br />
            <br />
            
            <span id="lpass" class="">Password : </span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input name="password" type="password" id="password" />
            
            <span id="password_required" style="color:Red;visibility:hidden;">   Password cannot be blank. Please try again</span>
            <br />
            <br />
            
            <span id="lrepassword" class="">Retype Password : </span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input name="repassword" type="password" id="repassword" />
            
            <span id="retype_required" style="color:Red;visibility:hidden;">   Retype Password field cannot be blank. Please try again</span>
            <span id="retype_password_compare" style="color:Red;display:none;">   Passwords should match</span>
            <br />
            <br />
            
            <span id="lemail" class="">Email : </span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input name="email" type="text" value="sdf@fsdf.com" id="email" />
            
            <span id="email_regex" style="color:Red;display:none;">   Email address is not valid</span>
            <br />
            <br />
            <input type="submit" name="submit" value="Submit" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;submit&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="submit" />
        </div>
    
           <hr />
        
        <h2>Sources </h2>
               <a href="../../fileview/default.aspx?~/experiments/Week8/Validate_Fields.aspx">aspxSource</a><br/>
        <br />
        
        
<script type="text/javascript">
    //<![CDATA[
    var Page_Validators =  new Array(document.getElementById("username_required"), document.getElementById("password_required"), document.getElementById("retype_required"), document.getElementById("retype_password_compare"), document.getElementById("email_regex"));
    //]]>
</script>

<script type="text/javascript">
    //<![CDATA[
    var username_required = document.all ? document.all["username_required"] : document.getElementById("username_required");
    username_required.controltovalidate = "username";
    username_required.errormessage = "   Username cannot be blank. Please try again";
    username_required.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    username_required.initialvalue = "";
    var password_required = document.all ? document.all["password_required"] : document.getElementById("password_required");
    password_required.controltovalidate = "password";
    password_required.errormessage = "   Password cannot be blank. Please try again";
    password_required.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    password_required.initialvalue = "";
    var retype_required = document.all ? document.all["retype_required"] : document.getElementById("retype_required");
    retype_required.controltovalidate = "repassword";
    retype_required.errormessage = "   Retype Password field cannot be blank. Please try again";
    retype_required.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    retype_required.initialvalue = "";
    var retype_password_compare = document.all ? document.all["retype_password_compare"] : document.getElementById("retype_password_compare");
    retype_password_compare.controltovalidate = "repassword";
    retype_password_compare.errormessage = "   Passwords should match";
    retype_password_compare.display = "Dynamic";
    retype_password_compare.evaluationfunction = "CompareValidatorEvaluateIsValid";
    retype_password_compare.controltocompare = "password";
    retype_password_compare.controlhookup = "password";
    var email_regex = document.all ? document.all["email_regex"] : document.getElementById("email_regex");
    email_regex.controltovalidate = "email";
    email_regex.errormessage = "   Email address is not valid";
    email_regex.display = "Dynamic";
    email_regex.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    email_regex.validationexpression = "(.+)@(\\w+)\\.(\\w+)";
    //]]>
</script>


<script type="text/javascript">
    //<![CDATA[

    var Page_ValidationActive = false;
    if (typeof(ValidatorOnLoad) == "function") {
        ValidatorOnLoad();
    }

    function ValidatorOnSubmit() {
        if (Page_ValidationActive) {
            return ValidatorCommonOnSubmit();
        }
        else {
            return true;
        }
    }
    //]]>
</script>
</form>
    </div>
</body>
</html>
