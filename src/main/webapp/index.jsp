<%@ page import="java.util.List" %>
<%@ page import="com.example.list_khach_hang.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <title>JSP - Hello World</title>
</head>
<body>
<h1 style="text-align: center">Danh Sach Cac Em Yeu</h1>
<%
    List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer(1,"Quỳnh Búp Bê","00-00-0000","Thiên Thai","img.png"));
    customerList.add(new Customer(2,"Lan","00-00-0000","Thiên Thai","img_1.png"));
    customerList.add(new Customer(3,"Cảnh","00-00-0000","Thiên Thai","img_2.png"));

    pageContext.setAttribute("customer", customerList);

%>
<table border="1" style="width: 100%">
    <tr>
        <td>STT</td>
        <td>NAME</td>
        <td>DATE</td>
        <td>ADDRESS</td>
        <td>IMAGE</td>
    </tr>
    <c:forEach var="ae" items="#{customer}">
        <tr>
            <td>
                <c:out value="${ae.stt}"></c:out>
            </td>
            <td>
                <c:out value="${ae.name}"></c:out>
            </td>
            <td>
                <c:out value="${ae.date}"></c:out>
            </td>
            <td>
                <c:out value="${ae.address}"></c:out>
            </td>
            <td>
                <img width="200px"  src="image/${ae.image}" >
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>