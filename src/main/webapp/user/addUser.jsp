

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Users CRUD</h1>
        <a href="/user/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników
        </a>
    </div>
</div>

        <div class="col-lg-6">
            <div style="background-color: white; padding: 20px;">
                <h1>Dodaj użytkownika</h1>
                <form method="post" action="/user/add">
                    <div class="form-group">
                        <label for="newUserName">Nazwa użytkownika</label>
                        <input type="text" class="form-control" name="userName" id="newUserName">
                    </div>
                    <div class="form-group">
                        <label for="newEmail">Email</label>
                        <input type="email" class="form-control" name="email" id="newEmail">
                    </div>
                    <div class="form-group">
                        <label for="newPassword">Hasło</label>
                        <input type="password" class="form-control" name="password" id="newPassword">
                    </div>
                    <button type="submit" class="btn btn-primary">Dodaj</button>
                </form>
            </div>
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>