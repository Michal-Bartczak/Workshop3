<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="/header.jsp" %>
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Users CRUD</h1>
        <a href="/user/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
    </div>
</div>
<div class="container-fluid" style="background-color: white; padding: 20px;">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">

    </div>
    <h2>Lista użytkowników</h2>
    <div class="table-responsive" style="margin-top: 20px;">
        <table class="table" style="margin-bottom: 0;">
            <tr>
                <th>id</th>
                <th>Nazwa użytkownika</th>
                <th>Email</th>
                <th>Akcja</th>
            </tr>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.userName}</td>
                    <td>${user.email}</td>
                    <td>
                        <a href='<c:url value="/user/delete?id=${user.id}"/>'>Usuń</a>
                        <a href='<c:url value="/user/edit?id=${user.id}"/>'>Edit</a>
                        <a href='<c:url value="/user/show?id=${user.id}"/>'>Pokaż</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

<%@ include file="/footer.jsp" %>