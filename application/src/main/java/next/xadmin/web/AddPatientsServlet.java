package next.xadmin.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import next.xadmin.bean.Contact;
import next.xadmin.bean.Patient;
import next.xadmin.database.ContactDao;
import next.xadmin.database.PatientDao;

@WebServlet("/AddPatients")
public class AddPatientsServlet extends HttpServlet{

	public AddPatientsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String docName = request.getParameter("docName");
		String speciality = request.getParameter("speciality");
		String rapport=request.getParameter("rapport");
		
		Patient patient=new Patient(firstName, lastName, docName, speciality, rapport);
		
		PatientDao patientDao = new PatientDao();
		boolean result = patientDao.insertPatient(patient);
		
		if(result) {
			response.sendRedirect("AddPatients.jsp");
		}
		else {
			response.sendRedirect("AddPatients.jsp");
		}
		
	}

}
