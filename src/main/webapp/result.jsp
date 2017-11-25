<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Калькулятор расхода топлива</title>
</head>
    <body>
   <style>
      .fig {
       text-align: center; /* Выравнивание по центру */
        }
   </style>
   <p class="fig">
    <img src="${pageContext.request.contextPath}/image.jpeg" height="50%" class="image-center" />
        </p>
        <h1 align="center"> ${ras}</h1>
        <h1 align="center"> ${sum}</h1>
        <form action=index.jsp method="POST">
        <p class="fig">    <button type="submit">Заново</button>  </p>
        </form>
    </body>
</html>
