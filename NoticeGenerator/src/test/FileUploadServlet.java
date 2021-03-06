package test;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.util.URLEncoder;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.google.gson.Gson;

public class FileUploadServlet extends HttpServlet {

		private static final int MEMORY_THRESHOLD 	= 1024 * 1024 * 3; 	// 3MB
		private static final int MAX_FILE_SIZE 		= 1024 * 1024 * 40; // 40MB
		private static final int MAX_REQUEST_SIZE	= 1024 * 1024 * 50; // 50MB

		/**
		 * Upon receiving file upload submission, parses the request to read
		 * upload data and saves the file on disk.
		 */
		protected void doPost(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException {
			
			if (!ServletFileUpload.isMultipartContent(request)) {
				PrintWriter writer = response.getWriter();
				writer.println("Error: Form must has enctype=multipart/form-data.");
				writer.flush();
				return;
			}

			DiskFileItemFactory factory = new DiskFileItemFactory();
			factory.setSizeThreshold(MEMORY_THRESHOLD);
			factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

			ServletFileUpload upload = new ServletFileUpload(factory);
			
			upload.setFileSizeMax(MAX_FILE_SIZE);
			
			upload.setSizeMax(MAX_REQUEST_SIZE);
			try {
				List<FileItem> formItems = upload.parseRequest(request);
				if (formItems != null && formItems.size() > 0) {
					for (FileItem item : formItems) {
						System.out.println(item.getString());
						if (!item.isFormField()) {
							String content = item.getString();
							request.setAttribute("configuration", urlEncode(content));
							
						}
					}
				}
			} catch (Exception ex) {
				
			}
			RequestDispatcher d = request.getRequestDispatcher("createPolicy.jsp");
			d.forward(request, response);
		}
		
		public static String urlEncode(String string) {
			return new URLEncoder().encode(string);
		}

}
