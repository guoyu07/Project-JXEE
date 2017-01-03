<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="org.apache.commons.fileupload.FileItem,org.apache.commons.fileupload.FileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="java.io.File" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.FileUploadException" %>
<%

    //文件保存目录路径
    String savePath = pageContext.getServletContext().getRealPath("/") + "upload/";

    //文件保存目录URL
    String saveUrl = request.getContextPath() + "/upload/";

    //定义允许上传的文件扩展名
    HashMap<String, String> extMap = new HashMap<>();
    extMap.put("image", "gif,jpg,jpeg,png,bmp");
    extMap.put("file", "doc,docx,xls,xlsx,ppt,htm,html,txt,zip,rar,gz,bz2");

    //最大文件大小
    long maxSize = 3145728;

    response.setContentType("text/html; charset=UTF-8");

    if (!ServletFileUpload.isMultipartContent(request)) {
        out.println(getError("请选择文件。"));
        return;
    }
    //检查目录
    File uploadDir = new File(savePath);
    if (!uploadDir.isDirectory()) {
        out.println(getError("上传目录不存在。" + savePath));
        return;
    }
    //检查目录写权限
    if (!uploadDir.canWrite()) {
        out.println(getError("上传目录没有写权限。"));
        return;
    }

    String dirName = request.getParameter("dir");
    if (dirName == null) {
        dirName = "image";
    }
    if (!extMap.containsKey(dirName)) {
        out.println(getError("目录名不正确。"));
        return;
    }
//创建文件夹
    savePath += dirName + "/";
    saveUrl += dirName + "/";
    File saveDirFile = new File(savePath);

    boolean mkdirs = false;
    if (!saveDirFile.exists()) {
        mkdirs = saveDirFile.mkdirs();
    }

    if (!mkdirs) {
        out.println("保存文件夹创建失败。");
    }

    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
    String ymd = sdf.format(new Date());
    savePath += ymd + "/";
    saveUrl += ymd + "/";
    File dirFile = new File(savePath);
    if (!dirFile.exists()) {
        mkdirs = dirFile.mkdirs();
    }
    if (!mkdirs) {
        out.println("文件夹创建失败。");
    }

    FileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);
    upload.setHeaderEncoding("UTF-8");
    List<FileItem> items = null;
    try {
        items = upload.parseRequest(request);
    } catch (FileUploadException e) {
        e.printStackTrace();
    }
    for (Object item1 : items) {
        FileItem item = (FileItem) item1;
        String fileName = item.getName();
        long fileSize = item.getSize();
        if (!item.isFormField()) {
            //检查文件大小
            if (item.getSize() > maxSize) {
                out.println(getError("上传文件大小超过限制。"));
                return;
            }
            //检查扩展名
            String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
            if (!Arrays.<String>asList(extMap.get(dirName).split(",")).contains(fileExt)) {
                out.println(getError("上传文件扩展名是不允许的扩展名。\n只允许" + extMap.get(dirName) + "格式。"));
                return;
            }

            SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
            String newFileName = df.format(new Date()) + "_" + new Random().nextInt(1000) + "." + fileExt;
            try {
                File uploadedFile = new File(savePath, newFileName);
                item.write(uploadedFile);
            } catch (Exception e) {
                out.println(getError("上传文件失败。"));
                return;
            }

            JSONObject obj = new JSONObject();
            obj.put("error", 0);
            obj.put("url", saveUrl + newFileName);
            out.println(obj.toJSONString());
        }
    }
%>
<%!
    private String getError(String message) {
        JSONObject obj = new JSONObject();
        obj.put("error", 1);
        obj.put("message", message);
        return obj.toJSONString();
    }
%>