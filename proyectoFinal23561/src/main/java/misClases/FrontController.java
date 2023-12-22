package misClases;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FrontController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String accion=null;
		
		//tickets
		TicketDAO ticketDAO=null;
		
		try {
			ticketDAO=new TicketDAO();
		}
		
		catch (ClassNotFoundException e) {
			System.out.println(e);
		}
		
		//oradores
		OradorDAO oradorDAO=null;
				
		try {
			oradorDAO=new OradorDAO();
		}
				
		catch (ClassNotFoundException e) {
			System.out.println(e);
		}
		
		RequestDispatcher dispatcher=null;
		accion=request.getParameter("accion");
		
		if(accion==null || accion.isEmpty()) {
			dispatcher=request.getRequestDispatcher("vistas/conferencia.jsp");
		}
		else if(accion.equals("comprar")) {
			dispatcher=request.getRequestDispatcher("vistas/comprar-tickets.jsp");
		}
		else if(accion.equals("backoffice")) {
			dispatcher=request.getRequestDispatcher("vistas/backoffice.jsp");
		}
		else if(accion.equals("eliminar")) {
			int id=Integer.parseInt(request.getParameter("id"));
			ticketDAO.eliminar(id);
			dispatcher=request.getRequestDispatcher("vistas/panel-tickets.jsp");
		}
		else if(accion.equals("eliminarOrador")) {
			int id=Integer.parseInt(request.getParameter("id"));
			oradorDAO.eliminar(id);
			dispatcher=request.getRequestDispatcher("vistas/panel-oradores.jsp");
		}
		else if(accion.equals("volver")) {
			dispatcher=request.getRequestDispatcher("vistas/conferencia.jsp");
		}
		else if(accion.equals("insertar")) {
			String nombre=request.getParameter("nombre");
			String apellido=request.getParameter("apellido");
			String mail=request.getParameter("mail");			
			int cant=Integer.parseInt(request.getParameter("cant"));			
			int categoria=Integer.parseInt(request.getParameter("categoria"));
			
			float total=0;
			int valorTicket= 200;
			
			switch(categoria) {
			  case 1:
				  total=cant*(valorTicket - (valorTicket * 0.8f)); //categoria "Estudiante" - descuento del 80%
			    break;
			  case 2:
				  total=cant*(valorTicket - (valorTicket * 0.5f)); //categoria "Trainee" - descuento del 50%
			    break;
			  case 3:
				  total=cant*(valorTicket - (valorTicket * 0.15f)); //categoria "Junior" - descuento del 15%
				break;
			}
			
			Ticket ticket=new Ticket(0,nombre,apellido,mail,cant,categoria,total);
			ticketDAO.insertarTicket(ticket);
			dispatcher=request.getRequestDispatcher("vistas/comprar-tickets.jsp");	
			
		}
		else if(accion.equals("insertarOrador")) {
			String nombreOrador=request.getParameter("nombre");
			String apellidoOrador=request.getParameter("apellido");
			String tematica=request.getParameter("tematica");			
			
			Orador orador=new Orador(0,nombreOrador,apellidoOrador,tematica);
			oradorDAO.insertarOrador(orador);
			dispatcher=request.getRequestDispatcher("vistas/conferencia.jsp");
		}
		else if(accion.equals("panelTickets")) {
			dispatcher=request.getRequestDispatcher("vistas/panel-tickets.jsp");
		}
		else if(accion.equals("panelOradores")) {
			dispatcher=request.getRequestDispatcher("vistas/panel-oradores.jsp");
		}
		
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}