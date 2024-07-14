package org.example.exercice4;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.exercice4.Cat;


import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "addCatServlet",value = "/cat/add")
public class CatForm extends HttpServlet {
    private List<Cat> cats;

    @Override
    public void init() throws ServletException {
        cats = new ArrayList<>();
        cats.add(new Cat("Watson","Européen","Thon", LocalDate.now()));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("cats", cats);
        req.getRequestDispatcher("/WEB-INF/catList.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String breed = req.getParameter("breed");
        String meal = req.getParameter("meal");
        LocalDate birth = LocalDate.parse(req.getParameter("birth"));
        Cat cat = new Cat(name, breed, meal, birth);
        cats.add(cat);
        doGet(req,resp);
    }
}
