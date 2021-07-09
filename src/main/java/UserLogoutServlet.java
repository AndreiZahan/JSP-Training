import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;

public class UserLogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
//    private UserDAO userDAO;
//
//    public void init() {
//        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
//        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
//        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
//
//        userDAO = new UserDAO(jdbcURL, jdbcUsername, jdbcPassword);
//
//    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.removeAttribute("user");

            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }

}
