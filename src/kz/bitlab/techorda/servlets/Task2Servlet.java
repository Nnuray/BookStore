package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/task2")
public class Task2Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.print("<form action = '/todo-task2' method = 'get'>");
        out.print("<input type = 'text' name = 'full_name'> FULL NAME <br><br>");
        out.print("<input type = 'number' name = 'exam'> POINTS <br><br>");
        out.print("<button>SUBMIT EXAM</button>");
        out.print("</form>");

    }
}
