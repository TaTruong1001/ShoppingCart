<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<style>
    <%@include file="/resources/css/main.css" %>
</style>
    <jsp:include page="Header.jsp" />

<body>
<div class="contain pt-10">
    <div class="mt-10">
        <h2>My Shopping Cart</h2>
        <p>
            <c:out value="${msg}" />
        </p>
        <c:if test="${empty cartItem}">
        <p>No data</p>
        </c:if>
        <c:if test="${not empty cartItem}">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Desciption</th>
                <th scope="col">unitPrice</th>
                <th scope="col">Quantity</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="cartItem" items="${cartItem}" varStatus="e">
                <tr>
                    <td>${cartItem.productId}</td>
                    <td>${cartItem.productName}</td>
                    <td>${cartItem.productDescription}</td>
                    <td>${cartItem.unitPrice }</td>
                    <td>${cartItem.orderDetails.quantity }</td>
                    <td><button class="btn btn-sm btn-primary"
                                onclick="location.href='removeCart/${product.productId}'">Remove from cart</button></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        </c:if>

        <div>
        </div>
</body>
</html>