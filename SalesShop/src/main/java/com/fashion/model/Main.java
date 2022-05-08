package com.fashion.model;


import com.fashion.dao.impl.CategoryDAO;
import com.fashion.util.PdfPCellUtil;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

public class Main {

    public static void main(String[] args) {
        Category category = new CategoryDAO().findOne(2);
        System.out.println(category.getCategoryName());
        Document doc = new Document();
        try {
            PdfWriter.getInstance(doc, new FileOutputStream("D:\\test.pdf"));
            doc.open();
            PdfPTable table = new PdfPTable(7);
            table.addCell(PdfPCellUtil.setContent("STT"));
            table.addCell(PdfPCellUtil.setContent("Name"));
            table.addCell(PdfPCellUtil.setContent("Color"));
            table.addCell(PdfPCellUtil.setContent("Size"));
            table.addCell(PdfPCellUtil.setContent("Price"));
            table.addCell(PdfPCellUtil.setContent("Amount"));
            table.addCell(PdfPCellUtil.setContent("Into Money"));
            table.addCell(PdfPCellUtil.setContent("1"));
            table.addCell(PdfPCellUtil.setContent("Adidas"));
            table.addCell(PdfPCellUtil.setContent("Red"));
            table.addCell(PdfPCellUtil.setContent("M"));
            table.addCell(PdfPCellUtil.setContent("5000"));
            table.addCell(PdfPCellUtil.setContent("5"));
            table.addCell(PdfPCellUtil.setContent("25000"));
            doc.add(table);
            doc.close();
        } catch (DocumentException | FileNotFoundException e) {
            e.printStackTrace();
        }
    }
}
