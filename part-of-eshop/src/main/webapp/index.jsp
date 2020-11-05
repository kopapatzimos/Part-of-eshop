<%--
  Created by IntelliJ IDEA.
  User: Tzhmos
  Date: 10/27/2020
  Time: 8:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="css/style.css">
    <title>Form</title>
</head>
<body>

<form action="controller" method="post">

    <div class="box">
        <h1>Insert your product!</h1>
        <table>
            <tr>
                <td><input class="table-cell" type="text" name="barcode" placeholder="Barcode(10 digits needed)"></td>

            </tr>

            <tr>
                <td><input class="table-cell" type="text" name="name" placeholder="Name of product"></td>

            </tr>

            <tr>
                <td><input class="table-cell" type="text" name="color" placeholder="Color of product"></td>

            </tr>

            <tr>
                <td>
                    <label for="description">Description</label><br>
                    <input class="table-cell descr" id="description" type="text" name="description" placeholder="Description">
                </td>

            </tr>
            <tr>
                <td><input class="table-cell submit"type="submit" name="submit" value="Insert"></td>
            </tr>
            <tr>
                <td><input class="table-cell view" type="submit" name="submit" value="View"></td>
            </tr>

        </table>

        <h5 class="error">${msg}</h5>

    </div>
</form>

</body>
</html>
