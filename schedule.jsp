
package com.labtest.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ScheduleServlet", urlPatterns = {"/ScheduleServlet"})
public class ScheduleServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
private void listEmployee(HttpServletRequest request,
HttpServletResponse response)
throws SQLException, IOException, ServletException {
List < Employee > listEmployee =
employeeDAO.selectAllEmployees();
request.setAttribute("listEmployee", listEmployee);
RequestDispatcher dispatcher =
request.getRequestDispatcher("employeeList.jsp");
dispatcher.forward(request, response);
}

    }

}
