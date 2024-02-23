package estm.dsic.jee.servlets;

import java.io.FileNotFoundException;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/page/*")
public class PageForwardServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Extract the page name from the URL path
        String page = request.getPathInfo().substring(1);

        // Construct the path to the JSP file
        String jspPath = "/WEB-INF/views/" + page + ".jsp";

        // Check if the requested JSP file exists
        if (getServletContext().getResource(jspPath) != null) {
            // Forward the request to the appropriate JSP file
            request.getRequestDispatcher(jspPath).forward(request, response);
        } else {
            // If the page does not exist, redirect to the error page
            response.sendRedirect(request.getContextPath() + "/page/error");
        }
    }
}

// @WebServlet("/*")
// public class PageForwardServlet extends HttpServlet {
//     protected void doGet(HttpServletRequest request, HttpServletResponse response)
//             throws ServletException, IOException {
//         // Extract the requested URL path
//         String pathInfo = request.getPathInfo();

//         if (pathInfo == null || pathInfo.equals("/")) {
//             // If the path is null or just "/", redirect to the default page
//            response.sendRedirect(request.getContextPath()+"/index.jsp");
//         } else if (pathInfo.startsWith("/page/")) {
//             // Extract the page name from the URL path
//             String page = pathInfo.substring(6); // Length of "/page/"

//             // Construct the path to the JSP file
//             String jspPath = "/WEB-INF/views/" + page + ".jsp";

//             try {
//                 // Check if the requested JSP file exists
//                 if (getServletContext().getResource(jspPath) != null) {
//                     // Forward the request to the appropriate JSP file
//                     request.getRequestDispatcher(jspPath).forward(request, response);
//                 } else {
//                     // If the page does not exist, redirect to the error page
//                     redirectToErrorPage(request, response);
//                 }
//             } catch (FileNotFoundException e) {
//                 // If the requested resource is not found, redirect to the error page
//                 redirectToErrorPage(request, response);
//             }
//         } else {
//             // If the requested URL does not match the expected pattern, redirect to the error page
//             redirectToErrorPage(request, response);
//         }
//     }

//     private void redirectToErrorPage(HttpServletRequest request, HttpServletResponse response)
//             throws ServletException, IOException {
//         response.sendRedirect(request.getContextPath() + "/page/error");
//     }
// }


