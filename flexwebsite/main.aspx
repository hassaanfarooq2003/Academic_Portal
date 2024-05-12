<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="_Default" %>

 <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title></title>

        <link rel="stylesheet" href="~/lib/bootstrap/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="~/css/site.css" asp-append-version="true" />
        <link rel="stylesheet" href="~/WebApplication1.styles.css" asp-append-version="true" />
        <link rel="stylesheet" href="~/css/StyleSheet.css" /><!-- stylesheet for loginpage-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Comic+Neue:wght@400;700&display=swap" rel="stylesheet">
        <style>
            * {
                margin: 0px;
                padding: 0px;
                box-sizing: border-box;
            }

            body,
            html {
                font-family: 'Comic Neue', cursive;
                 
            }
            /*------------------------------------------------------------------
[  LOGIN   Button ]*/
            button {
                outline: none !important;
                border: none;
                background: transparent;
            }

            button:hover {
                cursor: pointer;
            }

            iframe {
                border: none !important;
            }

            .container-login100-form-btn {
                display: -webkit-box;
                display: -webkit-flex;
                display: -moz-box;
                display: -ms-flexbox;
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
            }

            .wrap-login100-form-btn {
                width: 100%;
                display: block;
                position: relative;
                z-index: 1;
                border-radius: 25px;
                overflow: hidden;
                margin: 0 auto;

                box-shadow: 0 5px 30px 0px rgba(3, 216, 222, 0.2);
                -moz-box-shadow: 0 5px 30px 0px rgba(3, 216, 222, 0.2);
                -webkit-box-shadow: 0 5px 30px 0px rgba(3, 216, 222, 0.2);
                -o-box-shadow: 0 5px 30px 0px rgba(3, 216, 222, 0.2);
                -ms-box-shadow: 0 5px 30px 0px rgba(3, 216, 222, 0.2);
            }

            .login100-form-bgbtn {
                position: absolute;
                z-index: -1;
                width: 300%;
                height: 100%;
                background: #a64bf4;
                background: -webkit-linear-gradient(right, #00dbde, #fc00ff, #00dbde, #fc00ff);
                background: -o-linear-gradient(right, #00dbde, #fc00ff, #00dbde, #fc00ff);
                background: -moz-linear-gradient(right, #00dbde, #fc00ff, #00dbde, #fc00ff);
                background: linear-gradient(right, #00dbde, #fc00ff, #00dbde, #fc00ff);
                top: 0;
                left: -100%;

                -webkit-transition: all 0.4s;
                -o-transition: all 0.4s;
                -moz-transition: all 0.4s;
                transition: all 0.4s;
            }

            .login100-form-btn {

                font-size: 16px;
                color: #fff;
                line-height: 1.2;
                text-transform: uppercase;

                display: -webkit-box;
                display: -webkit-flex;
                display: -moz-box;
                display: -ms-flexbox;
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 0 20px;
                width: 100%;
                height: 50px;
            }

            .wrap-login100-form-btn:hover .login100-form-bgbtn {
                left: 0;
            }

            /*----------------------------------END----------------------------------------------*/
            #Text1 {
                width: 398px;
            }

        .sign-up-form {
    width: 400px;
    box-shadow: 0 0 3px 0 lightblue;
    background: #ffffff;
    padding: 40px;
    margin-top: 10%; /* Only change the top margin */
    margin-bottom: 8%; /* Keep the original bottom margin */
    margin-left: auto;
    margin-right: auto;
    text-align: center;
    border-radius: 25px;
       position: absolute;
    top: 30%;
    left: 50%;
    transform: translate(-50%, -50%);
}

            .sign-up-form h1 {
                color: Background;
                margin-bottom: 40px;
                text-align: center;
            }

            .input-box {
                border-radius: 20px;
                padding: 10px;
                margin: 10px 0;
                width: 90%;
                border: 1px solid lightblue;
            }

            .image-column {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                /* Adjust as needed */
            }

            .image-column img {
                max-width: 50%;
                /* Adjust as needed */
                height: auto;
            }

            /* New style for the form */
            .form-column {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                /* Adjust as needed */
            }
            /*Footer*/
            .footer 
            {
            /*Setting the width to 100%*/
            width: 100%;
            /*Algining the text in the center*/
            text-align: center;
            /*Creating the spaces in 30px top*/
            padding: 30px;
            background-color: lightblue;
            }
            /*Header*/
.header {
    /* Reduce the min-height to adjust the size of the header. */
    min-height: 80vh; /* Adjust this value as needed. */
    width: 100%;
    /* Replace pic.jpg with your actual image URL. */
    background-image: linear-gradient(rgba(4,9,30,0.7),rgba(4,9,30,0.7)),url(pic.jpg);
    background-position: center;
    background-size: cover;
    position: relative;
}
        </style>
    </head>
        <form id="form1" runat="server">
    <section class="header"> 
        <div class="sign-up-form">
            <h1 class="text">Welcome User</h1>
           
            <div class="container-login100-form-btn">
                <div class="wrap-login100-form-btn">
                    <div class="login100-form-bgbtn"></div>
                    <button id="customLoginBtn1" class="login100-form-btn" type="submit" runat="server" onserverclick="customLoginBtn1_Click">
                       Academic</button>
                </div>
            </div>

            <div class="container-login100-form-btn">
                <div class="wrap-login100-form-btn" style="margin-top: 10px;">
                    <div class="login100-form-bgbtn"></div>
                    <button id="customLoginBtn2" class="login100-form-btn" type="submit" runat="server" onserverclick="customLoginBtn2_Click">
                       Faculty</button>
                </div>
            </div>

            <div class="container-login100-form-btn">
                <div class="wrap-login100-form-btn" style="margin-top: 10px;">
                    <div class="login100-form-bgbtn"></div>
                    <button id="customLoginBtn3" class="login100-form-btn" type="submit" runat="server" onserverclick="customLoginBtn3_Click">
                       Student</button>
                </div>
            </div>
        </div>
    </section>
</form>

        <section class="footer">
        <h4>About us</h4>
        <div class="Contact">
            <ul>Number: (051)1111244622</ul>             <!--Showing the information-->
            <ul>Email: myfoodwebsite@gmail.com</ul>
            <ul>Address: DHA PHASE 2 Sector C ISB</ul>
            <ul>Number: (051)1111244622</ul>

        </div>
        <div class="SocialMedia">
            <span class="icons">&nbsp;</div>
    </section>
    </body>

    </html>