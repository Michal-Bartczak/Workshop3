<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>

<div class="container-fluid" style="padding: 20px;">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Users CRUD</h1>
        <a href="/user/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
    </div>

    <div class="mt-4">
        <div class="card">
            <div class="card-body">
                <table class="table">
                    <tr>
                        <th>ID</th>
                        <td>${user.id}</td>
                    </tr>
                    <tr>
                        <th>Username</th>
                        <td>${user.userName}</td>
                    </tr>
                    <tr>
                        <th>Email</th>
                        <td>${user.email}</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>
