import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.servlet.*;
import org.apache.commons.fileupload.disk.*;

public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws IOException, ServletException {
		res.setContentType("text/html;charset=UTF-8");
		res.setCharacterEncoding("UTF-8");
		PrintWriter pw = res.getWriter();
		try {
			DiskFileItemFactory diskFactory = new DiskFileItemFactory();
			diskFactory.setSizeThreshold(4 * 1024);

			ServletFileUpload upload = new ServletFileUpload(diskFactory);
			upload.setSizeMax(4 * 1024 * 1024);
			List fileItems = upload.parseRequest(req);
			Iterator iter = fileItems.iterator();
			while (iter.hasNext()) {
				FileItem item = (FileItem) iter.next();
				if (item.isFormField()) {
					System.out.println("Processing table");
					processFormField(item, pw);
				} else {
					System.out.println("Processing file");

					processUploadFile(item, pw);
				}
			}
			pw.close();
		} catch (Exception e) {
			System.out.println("Exception!!!!");
			e.printStackTrace();
		}
	}

	private void processFormField(FileItem item, PrintWriter pw)
			throws Exception {
		String name = item.getFieldName();
		String value = item.getString();
		pw.println(name + " : " + value + "\r\n");
	}

	private void processUploadFile(FileItem item, PrintWriter pw)
			throws Exception {

		String filename = item.getName();
		System.out.println("Filename" + filename);
		int index = filename.lastIndexOf("\\");
		filename = filename.substring(index + 1, filename.length());

		long fileSize = item.getSize();
		System.out.println("fileSize" + fileSize);
		if ("".equals(filename) && fileSize == 0) {
			System.out.println("Filename is empty");
			return;
		}
	}

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws IOException, ServletException {
		doPost(req, res);
	}
}
