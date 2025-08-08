<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User 수정 페이지 (user3)</title>
</head>
<body>
    <h3>User3 수정</h3>
    <a href="/ch09/user3/list.do">User3 목록이동</a>
    <form action="/ch09/user3/modify.do" method="post">
        <table border="1">
            <tr>
                <td>아이디</td>
                <td><input type="text" name="uid" readonly value="${user3DTO.uid}" placeholder="아이디 입력"/></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="name" value="${user3DTO.name}" placeholder="이름 입력"/></td>
            </tr>
            <tr>
                <td>생년월일</td>
                <td><input type="text" name="birth" value="${user3DTO.birth}" placeholder="생년월일 입력"/></td>
            </tr>
            <tr>
                <td>휴대폰</td>
                <td><input type="text" name="hp" value="${user3DTO.hp}" placeholder="휴대폰 입력"/></td>
            </tr>
            <tr>
                <td>주소</td>
                <td><input type="text" name="addr" value="${user3DTO.addr}" placeholder="주소 입력"/></td>
            </tr>
            <tr>
                <td colspan="2" align="right">
                    <input type="submit" value="User3 수정하기"/>
                </td>
            </tr>
        </table>
    </form>
    <hr>

</body>
</html>
