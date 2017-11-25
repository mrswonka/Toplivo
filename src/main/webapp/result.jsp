<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Калькулятор расхода топлива</title>
</head>
    <body>
  <!-- описание стиля -->
   <style>
      .fig {
       text-align: center; /* Выравнивание по центру */
        }
   </style>
   <p class="fig">
<!-- добавление картинки из контекстного пути страницы и установка размеров картинки -->
    <img src="${pageContext.request.contextPath}/image.jpeg" height="50%" class="image-center" />
        </p>
        <!-- Выводим сообщение, полученное от сервлета,
         для этого производим поиск по <ключ>-->
        <h1 align="center"> ${ras}</h1>
        <h1 align="center"> ${sum}</h1>
        <!-- Форма, содержащая в себе кнопку,
         которая перенаправит нас на исходную страницу-->
        <form action=index.jsp method="POST">
        <p class="fig">    <button type="submit">Заново</button>  </p>
        </form>
    </body>
</html>
