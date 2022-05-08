package com.fashion.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

@MultipartConfig
@WebServlet(name = "file-upload", value = "/file-upload")
public class FileUpload extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response){

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        Part part = request.getPart("file");
        String realPart = request.getServletContext().getRealPath("/images");
        String fileName = Path.of(part.getSubmittedFileName()).getFileName().toString();
        if (!Files.exists(Path.of(realPart)))
            Files.createDirectory(Path.of(realPart));
        part.write(realPart + File.separator + fileName);
        response.setStatus(200);
    }
}
