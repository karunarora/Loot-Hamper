<!DOCTYPE html>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            table,tr,td,label
            {
                font-family:cursive;
                padding:10px;
                alignment-adjust:auto;
            }
            table
            {
                padding:100px;
                left:100px;
                border-collapse:collapse;
               
            }
        </style>
        <link rel="icon" type="image/png" href="images/fav1.png">
    </head>
    <body bgcolor="gainsboro">
        <form action='./Sforgot' method="post">
        <div>
            <h1 style="font-family:fantasy; margin-left:5%; font-size:40px;">Recover Password</h1>
            <table align="center">
                        <tr>
                        <td><label>   Email id: </label>&nbsp;
                            <input type=email name=uname required="required"><br></td>
                        </tr>
                    <tr>
                    <td> <input type=submit value="Send Verification Code" style="padding:10px; background-color:buttonface; margin-left:32%; "></td>
                    </tr>
                </table>
        </div>
        </form>
    </body>
</html>
