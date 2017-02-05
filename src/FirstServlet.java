

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import smartDevices.SerialConnection;
import smartDevices.TimedTask;

/**
 * Servlet implementation class FirstServlet
 */
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String HTML_START="<html><body>";
	public static final String HTML_END="</body></html>";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirstServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/index.jsp");
		
		//serve html file
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("button1") != null) {
				
				
				try {
					//serial.lightOn();
					SerialConnection.lightOn(5);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	            System.out.println("pressed");
	        } else if (request.getParameter("button2") != null) {
	        		SerialConnection.lightOff();
	        	System.out.println("pressed");
	        } else if (request.getParameter("button3") != null) {
	        	//the Date and time at which you want to execute
	            

	        	 DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	        	 Date date = null;
	        	 try {
					date = dateFormatter .parse("2017-02-05 02:40:00");
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	        	
				
	            //Now create the time and schedule it
	            Timer timer = new Timer();
	            timer.schedule(new TimedTask(), date);

	            
	        	System.out.println("pressed");
	        } else {
	            // ???
	        }
	        request.getRequestDispatcher("index.html").forward(request, response);
	}
}
