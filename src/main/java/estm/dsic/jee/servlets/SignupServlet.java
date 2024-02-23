package estm.dsic.jee.servlets;

import estm.dsic.jee.dao.UserDao;
import estm.dsic.jee.model.User;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// @WebServlet("/signup")
// public class SignupServlet extends HttpServlet {
//     private static final long serialVersionUID = 1L;

//     private static final String LOGIN_PAGE = "page/login";
//     private static final String SIGNUP_PAGE = "page/signup";

//     protected void doPost(HttpServletRequest request, HttpServletResponse response)
//             throws ServletException, IOException {
//         String email = request.getParameter("email");
//         String username = request.getParameter("username");
//         String password = request.getParameter("password");

//         if (email == null || username == null || password == null || email.isEmpty() || username.isEmpty() || password.isEmpty()) {
//             // Handle missing fields
//             response.sendRedirect(SIGNUP_PAGE + "?error=missing_fields");
//             return;
//         }

//         UserDao userDao = new UserDao();
//         User newUser = new User(0, email, username, password); // id is set to 0, it will be auto-generated

//         boolean isCreated = userDao.addUser(newUser);
//         if (isCreated) {
//             HttpSession session = request.getSession();
//             session.setAttribute("signError", null);

//             response.sendRedirect(LOGIN_PAGE); // Redirect to login page after signup
//         } else {

//              HttpSession session = request.getSession();
//              session.setAttribute("signError", "We're sorry, but an error occurred while creating your account. Please try again later.");
           
//             // Handle signup failure
//             response.sendRedirect(SIGNUP_PAGE + "?error=signup_failed");
//         }
//     }
// }

@WebServlet("signup")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String LOGIN_PAGE = "page/login";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        HttpSession session = request.getSession();
        session.setAttribute("authError", null);
        session.setAttribute("signError", null);


        if (email == null || username == null || password == null || email.isEmpty() || username.isEmpty() || password.isEmpty()) {
            // Handle missing fields
            response.sendRedirect(LOGIN_PAGE + "?error=missing_fields");
            return;
        }

        UserDao userDao = new UserDao();
        User newUser = new User(0, email, username, password); // id is set to 0, it will be auto-generated

        try {
            boolean isCreated = userDao.addUser(newUser);
            if (isCreated) {
                response.sendRedirect(LOGIN_PAGE); // Redirect to login page after signup
            } else {
                session.setAttribute("signError", "We're sorry, but an error occurred while creating your account. Please try again.");
                 
                // Handle signup failure
                response.sendRedirect(LOGIN_PAGE + "?error=signup_failed");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database error, redirect to error page
            // response.sendRedirect("page/error");
            session.setAttribute("signError", "We're sorry, but an error occurred while creating your account. Please try again.");
                       
            response.sendRedirect(LOGIN_PAGE + "?error=database_error");
        }
    }
}
