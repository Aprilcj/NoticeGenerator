package test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

public class Service extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String data = request.getParameter("content");
		FormData formData = new Gson().fromJson(data.toString(),
				FormData.class);
		
		request.setAttribute("formdata", formData);
		for(int i = 0; i< formData.getPersonal_information().size(); i++){
			System.out.println(formData.getPersonal_information().get(i));
		}
		RequestDispatcher d = request.getRequestDispatcher("policy.jsp");
		d.forward(request, response);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
