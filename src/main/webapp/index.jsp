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
<!-- Yandex.Metrika informer --> <a href="https://metrika.yandex.ru/stat/?id=46835040&amp;from=informer" target="_blank" rel="nofollow"><img src="https://informer.yandex.ru/informer/46835040/3_1_FFFFFFFF_EFEFEFFF_0_pageviews" style="width:88px; height:31px; border:0;" alt="Яндекс.Метрика" title="Яндекс.Метрика: данные за сегодня (просмотры, визиты и уникальные посетители)" class="ym-advanced-informer" data-cid="46835040" data-lang="ru" /></a> <!-- /Yandex.Metrika informer --> <!-- Yandex.Metrika counter --> <script type="text/javascript" > (function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter46835040 = new Ya.Metrika({ id:46835040, clickmap:true, trackLinks:true, accurateTrackBounce:true, webvisor:true }); } catch(e) { } }); var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = "text/javascript"; s.async = true; s.src = "https://mc.yandex.ru/metrika/watch.js"; if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); } })(document, window, "yandex_metrika_callbacks"); </script> <noscript><div><img src="https://mc.yandex.ru/watch/46835040" style="position:absolute; left:-9999px;" alt="" /></div></noscript> <!-- /Yandex.Metrika counter -->
    </body>
</html>
