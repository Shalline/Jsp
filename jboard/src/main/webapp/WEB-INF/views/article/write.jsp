<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="./_header.jsp" %>
<body>
    <div id="wrapper">
        <header>
            <h3>
                <a href="/index.html" class="title">Board Project</a>
            </h3>
            <p>
                <a href="../user/info.html" class="info">홍길동</a>님 반갑습니다.
                <a href="#">[로그아웃]</a>
            </p>
        </header>
        <main id="article">
            <section class="write">
                <nav>
                    <h1>글쓰기</h1>
                </nav>
                <form action="#">
                    <table border="0">                        
                        <tr>
                            <th>제목</th>
                            <td><input type="text" name="title" placeholder="제목을 입력하세요."/></td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td>
                                <textarea name="content"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <th>파일</th>
                            <td>
                                <p>
                            		최대 2개 파일 첨부 가능, 각 파일당 최대 10MB까지 가능
                            	</p>
                                <input type="file" name="file1"/>
                                <input type="file" name="file2"/>
                            </td>
                        </tr>
                    </table>
                    
                    <div>
                        <a href="./list.html" class="btn btnCancel">취소</a>
                        <input type="submit" value="작성완료" class="btn btnComplete"/>
                    </div>
                </form>

            </section>
        </main>
        <%@ include file="./_footer.jsp" %>
    </div>    
</body>
</html>