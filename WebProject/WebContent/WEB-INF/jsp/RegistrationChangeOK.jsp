<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<%User loginUsr = (User) session.getAttribute("user");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rideau | 登録情報完了</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="wrapper">
<header>

    <!-- ロゴ -->
    <div class="logo">
      <a href="/rideau"><img class="logo" src="images/1_Primary_logo_on_transparent_203x63.png" alt="logo"></a>
    </div>>

    <!-- nav -->
    <nav class="nav">
      <ul>
        <li><a href="/rideau">Top</a></li>
        <li><a href="/rideau/Shop">Search</a></li>
        <li><a href="/rideau/Cart">Cart</a></li>
        <li><a href="/rideau/MyPage">Mypage</a></li>
      </ul>
    </nav>
  </header>
   <main>
<h1>登録内容変更しました</h1>

<div class="contents">
<form action ="/rideau/MyPage">
<div class ="submitStyle">
<input type="submit" value="マイページへ" class="button">
</div>
</form>
</div>

</main>
<footer>
<div class="link">
<ul>
  <li><a href="/rideau/CompanyInfo.jsp">企業概要</a></li>
  <li><a href="/rideau/Contact">お問い合わせ</a></li>
 </ul>
</div>
 <br>
  <p>&copy;Copyright Rideau All rights reserved.</p>
   </footer>
</div>
</body>
</html>