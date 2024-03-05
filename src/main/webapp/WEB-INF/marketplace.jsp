<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/style.css" />
<meta charset="UTF-8">
<title>UMart Home</title>
</head>
<body>
    <div class="container mt-4">
        <div class="text-center">
            <div class="text-center my-4">
				<img src="/images/umartlogo.png">
			</div>
			
        </div>
        <div class="text-right">
            <a href="/umart/seller/home" class="btn btn-primary fw-bold fs-5 mt-4 mx-2">Return to Dashboard</a>
            <a href="/logout" class="btn btn-primary fw-bold fs-5 mt-4 mx-2">Log Out</a>
        </div>
        <div class="fw-bold fs-5 mt-4" id="customer-head">
            <p>New Products For You</p>
            <p>Welcome, <c:out value="${sellerLoggedIn.userName}"></c:out>!</p>
        </div>
        <div>
            <table class="table table-bordered table-striped table-hover table-light">
                <thead class="">
                    <tr>
                        <th>Image</th>
                        <th>Title</th>
                        <th>Brand</th>
                        <th>Category</th>
                        <th>Price</th>
                        <th>Seller</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="product" items="${products}">
                        <tr>
                            <td class="align-middle"><img src="${product.imageUrl}"></td>
                            <td class="align-middle"><a href="/umart/product/${product.id}"><c:out value="${product.title}"></c:out></a></td>
                            
                            <td class="align-middle"><c:out value="${product.brand}"></c:out></td>
                            <td class="align-middle"><c:out value="${product.category}"></c:out></td>
                            <td class="align-middle">$<c:out value="${product.price}"></c:out></td>
                            <td class="align-middle"><c:out value="${product.creator.userName}"></c:out></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="d-flex justify-content-around">
        
        <div class="col">
        <div class="fw-bold fs-5 mt-4" id="customer-head">
            <p>Shop by Category</p>
            
        </div>
            <table class="table table-bordered table-striped table-hover table-light">
                <thead class="">
                    <tr>
                        
                        <th>Category</th>
                        
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="product" items="${products}">
                        <tr>
                           
                            <td><a href="/umart/category/${product.category}"><c:out value="${product.category}"></c:out></a></td>
                            
                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
         
        <div class="col">
        <div class="fw-bold fs-5 mt-4" id="customer-head">
            <p>Shop by Brand</p>
            
        </div>
            <table class="table table-bordered table-striped table-hover table-light">
                <thead class="">
                    <tr>
                        
                        <th>Brand</th>
                        
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="product" items="${products}">
                        <tr>
                           
                            <td><a href="/umart/brand/${product.brand}"><c:out value="${product.brand}"></c:out></a></td>
                            
                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        </div>
    </div>
</body>
</html>