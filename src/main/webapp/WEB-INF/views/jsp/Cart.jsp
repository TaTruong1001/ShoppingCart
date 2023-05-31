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
   <table cellpadding="2" cellspacing="2" border="1">
       <tr>
           <th>Option</th>
           <th>Id</th>
           <th>Name</th>
           <th>Price</th>
           <th>Description</th>
           <th>Quantity</th>
           <th></th>
       </tr>
       <c:forEach var="it" items="${sessionScope.cart}">
           <tr>
               <th align="center">Remove</th>
               <th>${it.product.productId}</th>
               <th>${it.product.productName}</th>
               <th>${it.product.unitPrice}</th>
               <th>${it.product.productDescription}</th>
               <th>${it.quantity}</th>
               <th></th>

           </tr>
       </c:forEach>
   </table>
</body>
</html>