import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import static org.mockito.Mockito.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PlannerServletTest {

    // Создание заглушек с помощью аннотаций
    @Mock
    private HttpServletRequest request;

    @Mock
    private HttpServletResponse response;

    @Mock
    private RequestDispatcher dispatcher;

    private PlannerServlet servlet;

    @Before
    public void setUp() throws Exception {
        // Безопасная инициализация всех объектов с аннотацией @Mock
        MockitoAnnotations.openMocks(this);
        servlet = new PlannerServlet();
    }

    @Test
    public void testDoGetWithValidCategory() throws Exception {
        // Определение поведения методов
        when(request.getParameter("category")).thenReturn("movies");
        when(request.getRequestDispatcher("/IdeasList.jsp")).thenReturn(dispatcher);

        servlet.doGet(request, response);

        // Верификация вызовов[cite: 3]
        verify(request).setAttribute("selectedCategory", "movies");
        verify(dispatcher).forward(request, response);
    }

    @Test
    public void testDoGetWithEmptyCategory() throws Exception {
        when(request.getParameter("category")).thenReturn(null);
        when(request.getRequestDispatcher("/ErrorManager.jsp")).thenReturn(dispatcher);

        servlet.doGet(request, response);

        verify(request).setAttribute("error", "Категория не выбрана");
        verify(dispatcher).forward(request, response);
    }
}