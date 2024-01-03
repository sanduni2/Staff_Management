package staff_Management;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class salary
 */
@WebServlet("/Salary")
public class salary extends HttpServlet {
	private static final long serialVersionUID = 1L;            //servlet = controll
       
    /**                                          
     * @see HttpServlet#HttpServlet()
     */
    public salary() {
        super();
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
		String empID=request.getParameter("empID");
		String empName=request.getParameter("empName");
		String baseSal=request.getParameter("baseSal");
		String allowances=request.getParameter("allowances");
		String deduction=request.getParameter("deduction");
		String total=request.getParameter("total");
		
		salMember salmember=new salMember(empID, empName, baseSal, allowances, deduction, total);
		salDao sDao=new salDao();
		String result=sDao.insert(salmember);
		response.getWriter().print(result);
	}

}
