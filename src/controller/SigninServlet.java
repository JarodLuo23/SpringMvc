package controller;

import bean.User;
import dao.SigninDao;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/signin")
public class SigninServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String un=request.getParameter("username");
        String upw=request.getParameter("pwd");
        String cookies=request.getParameter("cookies");
        HttpSession session= request.getSession();
        User user=new User(un,upw);
        SigninDao dao=new SigninDao();
        PrintWriter pw=response.getWriter();

        boolean checksignin =false;
        try {
            checksignin=dao.checkuser(user);
            if (checksignin==false){
//                response.sendRedirect("signin.jsp");
                pw.print("<script type='text/javascript'>window.alert('The account do not exist!!');window.location.href='signin.jsp';</script>");
            }
            else{
                if (cookies!=null){
                    if (cookies.equals("on")){
                        Cookie uc=new Cookie("uncookie",un);
                        Cookie upwc=new Cookie("upwdcookie",upw);
                        response.addCookie(uc);
                        response.addCookie(upwc);
                        uc.setMaxAge(60 * 60 * 24 * 7);
                        upwc.setMaxAge(60 * 60 * 24 * 7);
                        System.out.println("create cookies successful");
                    }
                }
                session.setAttribute("data",dao.showprofile(user));
                response.sendRedirect("index.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
