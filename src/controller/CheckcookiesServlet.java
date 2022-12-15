package controller;

import bean.User;
import dao.SigninDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.sql.SQLException;

@WebServlet("/Createcookies")
public class CheckcookiesServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        SigninDao dao = new SigninDao();
        HttpSession session = request.getSession();
        PrintWriter pw = response.getWriter();
        if (session.getAttribute("data") == null) {
            if (cookies.length!= 1) {
                System.out.println(cookies.length);
                for (Cookie c:cookies) {
                    System.out.println(c.getName()+": "+c.getValue());
                }
                String un = null, upw = null;
                for (Cookie c : cookies) {
                    if (("uncookie").equals(c.getName())) {
                        un = c.getValue();
                    }
                    if (("upwdcookie").equals(c.getName())) {
                        upw = c.getValue();
                    }
                    User user = new User(un, upw);
                    System.out.println("1212");
                    System.out.println("1"+un+"2"+upw);
                    System.out.println(c.getName()+" "+c.getValue()+c.getName()+" "+c.getValue());
                    try {
                        session.setAttribute("data", dao.showprofile(user));

                    } catch (ClassNotFoundException e) {
                        e.printStackTrace();
                    } catch (SQLException throwables) {
                        throwables.printStackTrace();
                    }
                }
                pw.print("<script type='text/javascript'>window.location.href='profile.jsp';</script>");
            } else {
                pw.print("<script type='text/javascript'>window.alert('Please login in first!!');window.location.href='index.jsp';</script>");
//            window.alert("Please login in first!!");
            }
        }else {
            pw.print("<script type='text/javascript'>window.location.href='profile.jsp';</script>");
        }

//        if (session.getAttribute("data") == null) {
//            pw.print("<script type='text/javascript'>window.alert('Please login in first!!');window.location.href='index.jsp';</script>");
////            window.alert("Please login in first!!");
//        } else {
//            pw.print("<script type='text/javascript'>window.location.href='profile.jsp';</script>");
//        }
//            window.location.href="profile.jsp";

    }
}

