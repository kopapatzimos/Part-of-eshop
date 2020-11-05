<%--
  Created by IntelliJ IDEA.
  User: Tzhmos
  Date: 10/27/2020
  Time: 11:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="db" class="com.eshop.database.Database" scope="page"/>
<html>
<head>
    <title>Products</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>






    <%   ArrayList list = db.allProducts();
        if(list.size()!=0){
            for(int i = list.size() - 5; i < list.size(); i = i+5){

    %>
    <h2>Last added item:</h2>
    <div class="box2">

        <img class="product-icon" src="images/open.png">
        <div class="barcode">
            <img  src="images/barcode.png">
            <h5><%=list.get(i+1)%></h5>
        </div>

        <ul>
            <h3><i><u>Product Characteristics:</u></i></h3>

            <li><h6><%=list.get(i+2)%></h6></li>
            <li><h5><%=list.get(i+3)%></h5></li>
        </ul>
        <div class="disc"><%=list.get(i+4)%>
        </div>

    </div>
    <%
            }
        }
    %>




    <%
        if(list.size()/5==0){
    %>
    <h2>There are <%=list.size()/5%> products in the list</h2>
    <%
    }
    else if(list.size()/5==1){
    %>

    <h2>There is <%=list.size()/5%> product in the list.</h2>
    <%
    }
    else{
    %>
    <h2>There are <%=list.size()/5%> products in the list</h2>
    <%
        }
    %>




    <form action="controller" method="post">
        <input class="go-back" type="submit" name="submit" value="Go Back">

        <%
            if(list.size()!=0){
        %>

        <div class="last-view">

                <input class="table-cell view-all" type="submit" name="submit" value="View All">
        </div>

        <%
            }
        %>
    </form>


    <%
        if(request.getAttribute("status").equals("1")){
            for(int i = 0; i <list.size(); i=i+5){ //


    %>



        <div class="box2">

            <img class="product-icon" src="images/open.png">
            <div class="barcode">
                <img  src="images/barcode.png">
                <h5><%=list.get(i+1)%></h5>
            </div>

            <ul>
                <h3><i><u>Product Characteristics:</u></i></h3>

                <li><h6><%=list.get(i+2)%></h6></li>
                <li><h5><%=list.get(i+3)%></h5></li>
            </ul>
            <div class="disc"><%=list.get(i+4)%>
            </div>

        </div>

    <%
            }
    %>
    <form action="controller" method="post">
        <input class="hide" type="submit" name="submit" value="Hide">
     <%
        }
    %>


</body>
</html>
