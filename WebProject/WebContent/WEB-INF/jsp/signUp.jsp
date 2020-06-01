<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String errorMsg = (String)request.getAttribute("errorMsg");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rideau</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>

    <!-- ロゴ -->
    <h1 class="logo">
      <a href="/rideau"><img class="logo" src="images/1_Primary_logo_on_transparent_203x63.png" alt="logo"></a>
    </h1>

    <!-- nav -->
    <nav class="nav">
      <ul>
        <li><a href="/rideau">ホーム</a></li>
        <li><a href="/rideau/Shop">商品検索</a></li>
        <li><a href="/rideau/Cart">カート</a></li>
        <li><a href="/rideau/MyPage">マイページ</a></li>
      </ul>
    </nav>
  </header>
   <main>
<form action = "/rideau/SignUp" method = "post" >
Emailアドレス:<input type = "text" name = "email"><br>
パスワード:<input type = "password" name = "password">(半角英数8文字以上)<br>
氏名:<input type = "text" name = "user_nm"><br>
住所:<input type = "text" name = "address"><br>
 <% if(errorMsg !=null){ %><%= errorMsg %><br><% } %>
<input type = "submit" value = "登録" class="button">
<a href = "/rideau/Login">戻る</a>
</form>
</main>
<footer>
<div class="link">
<ul>
  <li><a href="/rideau/CompanyInfo.jsp">企業概要</a></li>
  <li><a href="">お問い合わせ</a></li>
 </ul>
</div>
 <br>
  <p>&copy;Copyright Rideau All rights reserved.</p>
   </footer>
</body>
</html>