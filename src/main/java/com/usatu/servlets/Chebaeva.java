package com.usatu.servlets; //место, где пространства будут располагаться
//подключаем библиотеки для использования необходимых методов
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest; //запрос
import javax.servlet.http.HttpServletResponse; //ответ
import java.io.IOException;
/*автоматически создаётся открытый класс Chebaeva (который "расширяет" HttpServlet).
extends - наследование методов класса HttpServlet, этот класс представляет
реализацию для всех методов интерфейса HttpServlet*/

public class Chebaeva extends HttpServlet {
    // переопределяем метод doGet, метод срабатывает при отправке запроса типа get на сервер
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /*запускаем метод родительского класса, т.е. фактически
        ничего нового мы не написали в этом методе
        а воспользовались реализацией класса-родителя*/
        super.doGet(req,resp);
    }
    // переопределяем метод doPost, метод срабатывает при отправке запроса методов post на сервер
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Получение значения, переданного с клиента, в виде строки
        String req1Attribute = req.getParameter("km");
        String req2Attribute = req.getParameter("srras");
        String req3Attribute = req.getParameter("rub");
/*try - ключевое слово, спользуемое для отметки начала блока кода,
 который потенциально может привести к ошибке. Если операция прошла успешно,
 то выполняем программу далее до окончания блока try{}
 Если в строке не было целое число (например было буквы),
 то произойдет ошибка и сразу же начнет выполняться блок catch{}*/
try {
/* Double.parseDouble - конвертация в число, т.к.
вводимые данные хранятся в виде строки*/
        double km = Double.parseDouble(req1Attribute);
//double число с плавающей точкой
        double srras = Double.parseDouble(req2Attribute);
        double rub = Double.parseDouble(req3Attribute);
        double ras = (srras * km / 100);
        double sum = (ras*rub);

/*String.format Преобразует значения объектов в строки и округляет их до сотых
Записываем в виде атрибута полученный результат
атрибут имеет вид <ключ> <значение>    */
            req.setAttribute("ras", "Вам понадобится - " +  String.format("%.2f",ras) + " л топлива");
            req.setAttribute("sum", "Затраты составят - " +  String.format("%.2f",sum) + " руб.");
        } catch (NumberFormatException exception) {
            /*
            Если произошла ошибка при переводе в численный тип,
            то в атрибут пишем сообщение с ошибкой
             */
            req.setAttribute("ras",  " Нужно написать цифрами. Попробуйте снова.");
            req.setAttribute("sum",  "");
        }
         /*
        Перенаправляем наш запрос на вторую страницу,
        где, собственно, и будем выводить наш ответ
         */
        req.getRequestDispatcher("result.jsp").forward(req, resp);
    }
}
