package com.cloud.Controllers;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cloud.Models.User;
import com.cloud.Daos.UserDao;
import com.mysql.cj.x.protobuf.MysqlxCrud;

@WebServlet("/")
public class UserController extends HttpServlet{
    private static final long serialVersionUID = 1L;
    private  UserDao userDao;
    public void init()
    {
        userDao = new UserDao();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action  = request.getServletPath();
        try {
            switch (action)
            {
                case "/list_UserController" :
                    listUser(request, response);
                    break;
                case "/insert_UserController":
                    insertUser(request, response);
                    break;
                case "/edit_UserController":
                    showEditForm(request, response);
                    break;
                case "update_UserController":
                    updateUser(request, response);
                case "/delete_UserController":
                    deleteUser(request, response);
                    break;
                default:
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
                    dispatcher.forward(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    private void listUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        HttpSession session = request.getSession();
        List < User > listUser = userDao.getAllUsers();
        request.setAttribute("listUser", listUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/users.jsp");
        dispatcher.forward(request, response);
    }
    private void insertUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {

        String FullName = request.getParameter("FullName");
        String birthDateString = request.getParameter("BirthDate");
        java.sql.Date birthDate = java.sql.Date.valueOf(birthDateString);
        String Address =  request.getParameter("Address");
        String Phone = request.getParameter("Phone");
        String Email = request.getParameter("Email");
        String Password = request.getParameter("Password");
        String Role = request.getParameter("Role");
        User user = new User(FullName,birthDate,Address, Phone, Email,Password,Role);
        userDao.insertUser(user);
        response.sendRedirect("list_UserController");
    }
    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {

            int UserID = Integer.parseInt(request.getParameter("UserID"));
            userDao.deleteUser(UserID);
            response.sendRedirect("list_UserController");

    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int userID = Integer.parseInt(request.getParameter("UserID"));
        User existuser = userDao.selectUserById(userID );
        RequestDispatcher dispatcher = request.getRequestDispatcher("/usersDetails.jsp");
        request.setAttribute("User", existuser);
        dispatcher.forward(request, response);

    }
    private void updateUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int userID = Integer.parseInt(request.getParameter("UserID"));
        String FullName = request.getParameter("FullName");
        String birthDateString = request.getParameter("BirthDate");
        java.sql.Date birthDate = java.sql.Date.valueOf(birthDateString);
        String Address =  request.getParameter("Address");
        String Phone = request.getParameter("Phone");
        String Email = request.getParameter("Email");
        String Password = request.getParameter("Password");
        String Role = request.getParameter("Role");
        User updateuser = new User( userID ,FullName, birthDate,Address, Phone, Email,Password,Role);
        userDao.updateUser(updateuser );
        response.sendRedirect("list_UserController");
    }


}
