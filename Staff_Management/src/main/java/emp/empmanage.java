package emp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class empmanage
 */
@WebServlet("/empmanage")
public class empmanage extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public empmanage() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		String name=request.getParameter("lastname");
		String lastname=request.getParameter("lastname");
		String officecode=request.getParameter("officecode");
		String email=request.getParameter("email");
		String jobtitle=request.getParameter("jobtitle");
		Empmember empmanage=new Empmember(id, name, lastname, officecode, email, jobtitle);
		EmpDao sDao=new EmpDao();
		String result=sDao.insert(empmanage);
		response.getWriter().print(result);
	}

}
