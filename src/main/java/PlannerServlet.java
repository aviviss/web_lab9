import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/planner")
public class PlannerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String category = request.getParameter("category");
        RequestDispatcher dispatcher;

        if (category == null || category.trim().isEmpty()) {
            request.setAttribute("error", "Категория не выбрана");
            dispatcher = request.getRequestDispatcher("/ErrorManager.jsp");
        } else {
            request.setAttribute("selectedCategory", category);
            dispatcher = request.getRequestDispatcher("/IdeasList.jsp");
        }

        dispatcher.forward(request, response);
    }
}