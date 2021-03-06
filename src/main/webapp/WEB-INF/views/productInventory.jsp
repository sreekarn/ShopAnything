<%--
  Created by IntelliJ IDEA.
  User: sreekar nedunuri
  Date: 26-05-2020
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Inventory Page</h1>

            <p class="lead">This is product Inventory Page</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Product Image</th>
                <th>Product Name</th>
                <th>Product Category</th>
                <th>Product Description</th>
                <th>Product Price</th>
                <th>Product Quantity</th>
                <th>Product Manufacturer</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                             style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productDescription}</td>
                    <td>${product.productPrice} USD</td>
                    <td>${product.productQuantity}</td>
                    <td>${product.productManufacturer}</td>
                    <td><a href="<spring:url value="/productList/viewProduct/${product.productId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a>
                        <a href="<spring:url value="/admin/productInventory/deleteProduct/${product.productId}" />"
                        ><span class="glyphicon glyphicon-remove"></span></a>
                        <a href="<spring:url value="/admin/productInventory/editProduct/${product.productId}" />"
                        ><span class="glyphicon glyphicon-pencil"></span></a></td>
                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/admin/productInventory/addProduct" />" class="btn btn-primary">Add Product</a>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>

