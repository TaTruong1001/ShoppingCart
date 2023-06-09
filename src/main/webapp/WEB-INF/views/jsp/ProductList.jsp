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
    <!-- Input group -->
    <form:form action="search" method="get">
    <div class="d-flex ">
        <div class="input-group w-auto">
            <input name="searchInput" type="text" class="form-control" placeholder="Search input" aria-label="Search input"/>
            <button class="btn btn-primary" type="submit"  data-mdb-ripple-color="dark">Search
            </button>
        </div>
    </div>
    </form:form>

    <div class="mt-10">
        <p>
            <c:out value="${msg}" />
        </p>
        <c:if test="${empty productList}">
        <p>No data</p>
        </c:if>
        <c:if test="${not empty productList}">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">productId</th>
                <th scope="col">productName</th>
                <th scope="col">productDesciption</th>
                <th scope="col">unitPrice</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="product" items="${productList}" varStatus="e">
                <tr>
                    <td>${product.productId}</td>
                    <td>${product.productName}</td>
                    <td>${product.productDescription}</td>
                    <td>${product.unitPrice }</td>
                    <td><button class="btn btn-sm btn-primary"
                                onclick="location.href='addCart/${product.productId}'">Add to cart</button></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        </c:if>

        <div>
        </div>
</body>

</html>