package pl.coderslab.users;

import pl.coderslab.utils.User;
import pl.coderslab.utils.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserEdit", value = "/user/edit")
public class UserEdit extends HttpServlet {
    private int id;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String param1 = request.getParameter("id");
        id = Integer.parseInt(param1);

        getServletContext().getRequestDispatcher(request.getContextPath() + "/user/edit.jsp")
                .forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        user.setId(id);
        user.setUserName(request.getParameter("userName"));
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));
        UserDao dao = new UserDao();
        dao.updateUser(user);
        response.sendRedirect(request.getContextPath() + "/user/list");
    }
}
