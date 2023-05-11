package pl.coderslab.users;

import pl.coderslab.utils.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteUser", value = "/user/delete")
public class DeleteUser extends HttpServlet {
    private int id;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String param1 = request.getParameter("id");
        id = Integer.parseInt(param1);
        getServletContext().getRequestDispatcher(request.getContextPath() + "/user/delete.jsp")
                .forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String check = request.getParameter("zgoda");
        if ("TAK".equals(check)) {
            UserDao dao = new UserDao();
            dao.deleteUser(id);
            response.sendRedirect(request.getContextPath() + "/user/list");
        } else {
            response.sendRedirect(request.getContextPath() + "/user/list");
        }


    }
}
