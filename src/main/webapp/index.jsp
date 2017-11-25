<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Калькулятор расхода топлива</title>
</head>
    <body>
        <h1 align="center"> Пора в путь!</h1> <!-- тег заголовка -->
<!-- описание стиля -->
         <style>
                   .fig {
                    text-align: center; /* Выравнивание по центру */
                   }
                  </style>
 <!-- добавление картинки из контекстного пути страницы и установка размеров картинки -->
 <p class="fig"><img src="${pageContext.request.contextPath}/img.jpg" height="30%"/> </p>
        <h2> Этот калькулятор расхода топлива поможет Вам спланировать Вашу поездку </h2>
<!-- Форма, содержащая в себе кнопку и техтовое поле.
 По нажатию на кнопку отправит POST запрос на сервлет-->
        <form action="servlet" method="POST">
                     <div>
                <h3> Введите количество километров, которые Вы собираетесь проехать на автомобиле</h3>
                <input type="text" name="km" value="" placeholder="км">
                 <h3> Введите средний расход топлива Вашей марки авто на 100 километров (в литрах)</h3>
                <input type="text" name="srras" value="" placeholder="л">
                 <h3> Введите стоимость топлива, установленную в Вашем регионе</h3>
                <input type="text" name="rub" value="" placeholder="руб/л">
                </div> <br>
 <!-- кнопка для отправки данных -->
            <input type="submit" value="Рассчитать" />
        </form>
    </body>
</html>
