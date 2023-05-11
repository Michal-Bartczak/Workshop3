<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="/header.jsp" %>
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Users CRUD</h1>
        <a href="/user/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
    </div>
</div>


<div class="container-fluid" style="margin: 10px;">
    <div class="row justify-content-start">
        <div class="col-lg-6">
            <div style="background-color: white; padding: 20px;">
                <h1>Edycja użytkownika</h1>
                <form method="post" action="/user/edit">
                    <div class="form-group">
                        <label for="userName">Nazwa użytkownika</label>
                        <input type="text" class="form-control" name="userName" id="userName">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" name="email" id="email">
                    </div>
                    <div class="form-group">
                        <label for="password">Hasło</label>
                        <input type="password" class="form-control" name="password" id="password">
                    </div>
                    <button type="submit" class="btn btn-primary">Edytuj</button>
                </form>
            </div>
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>

<style>
    .col-lg-6 {
        margin-right: 20px;
    }
</style>
