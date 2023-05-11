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
<div class="container-fluid" style="margin: 10px;">
    <div class="row justify-content-start">
        <div class="col-lg-6">
            <div style="background-color: white; padding: 20px;">
                <h1>Usuwanie użytkownika</h1>
                <h2>Wybrany użytkownik zostanie usunięty!</h2>
                <h3>Czy na pewno chcesz usunąć wybranego użytkownika?</h3>
                <form method="post" action="/user/delete">
                    <input type="submit" name="zgoda" value="TAK" class="btn btn-danger">
                    <input type="submit" name="zgoda" value="NIE" class="btn btn-secondary">
                </form>
            </div>
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>