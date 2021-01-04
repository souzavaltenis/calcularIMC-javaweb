package application;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/IMC1")
public class IMC1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		double peso = Double.parseDouble(request.getParameter("peso"));
		double altura = Double.parseDouble(request.getParameter("altura"));
		double IMC = peso/(altura*altura);
		
		String msgIMC = "";
		
		if(IMC < 18.5){
			msgIMC="Abaixo do peso";
		}else if(IMC >= 18.5 && IMC < 24.9){
			msgIMC="Peso normal";
		}else if(IMC >= 25 && IMC< 29.9) {
			msgIMC = "Acima do peso";
		}else if(IMC >= 30 && IMC < 39.9) {
			msgIMC="Obesidade";
		}else if (IMC > 40) {
			msgIMC="Obesidade grave";
		}

		try (PrintWriter out = response.getWriter()){
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>IMC1 (HTML e servlet)</title>");
			out.println("</head>");
			out.println("<h1>Calculo de IMC (HTML e servlet)<br></h1>");
			out.println("<h2>Seu IMC: " + String.format("%.2f", IMC) + "</h2>");
			out.println("<h2>Sua classificação: " + msgIMC + "</h2>");
			out.println("</body>");
			out.println("</html>");
		}
	}

}
