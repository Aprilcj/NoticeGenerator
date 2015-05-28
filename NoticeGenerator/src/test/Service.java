package test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

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
		request.setAttribute("formJson", data);
		data = urlDecode(data);
		FormData formData = new Gson().fromJson(data.toString(),
				FormData.class);
		
		request.setAttribute("formdata", formData);
		request.setAttribute("test", formData.personal_information.get(0));
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
	
	public static String urlDecode(String string) {
		try {
			return URLDecoder.decode(string, "utf-8");
		} catch (UnsupportedEncodingException e) {
			return string;
		}
	}

}
