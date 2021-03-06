<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019-01-16
  Time: 오후 2:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="kr">
<head>
    <%@ include file="/WEB-INF/jsp/include/header.jspf"%>
</head>
<body>
<%@ include file="/WEB-INF/jsp/include/navigation.jspf"%>

<div class="container" id="main">
    <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-default content-main">
            <c:if test="${loginFailed}">
                <div class="alert alert-danger" role="alert">아이디 또는 비밀번호가
                    틀립니다. 다시 로그인 해주세요.</div>
            </c:if>
            <form name="question" method="post" action="/customer/login">
                <div class="form-group">
                    <label for="customer_id">사용자 아이디</label> <input
                        class="form-control" id="customer_id" name="customer_id"
                        placeholder="Customer ID">
                </div>
                <div class="form-group">
                    <label for="customer_pw">비밀번호</label> <input type="password"
                                                                 class="form-control" id="customer_pw" name="customer_pw"
                                                                 placeholder="Password">
                </div>
                <button type="submit" class="btn btn-success clearfix pull-right">로그인</button>
            </form>
        </div>
    </div>
</div>
<script>
    function idCheck() {
        const xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("txtHint").innerHTML = this.responseText;
            }
        };
        xhttp.open("GET", "getcustomer.asp?q=" + str, true);
        xhttp.send();
    }
</script>
<%@ include file="/WEB-INF/jsp/include/footer.jspf"%>
</body>
</html>
