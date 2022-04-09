package com.fashion.model;

import com.fashion.dao.impl.AddressDAO;

public class Main {
    public static void main(String[] args) {

//        Document doc = new Document();
//        try {
//            PdfWriter.getInstance(doc, new FileOutputStream("D:\\test.pdf"));
//            doc.open();
//            PdfPTable table = new PdfPTable(5);
//            table.addCell(PdfPCellUtil.setContent("STT"));
//            table.addCell(PdfPCellUtil.setContent("Product Name"));
//            table.addCell(PdfPCellUtil.setContent("Price"));
//            table.addCell(PdfPCellUtil.setContent("Amount"));
//            table.addCell(PdfPCellUtil.setContent("Into Money"));
//            table.addCell(PdfPCellUtil.setContent("1"));
//            table.addCell(PdfPCellUtil.setContent("Bim Bim"));
//            table.addCell(PdfPCellUtil.setContent("5000"));
//            table.addCell(PdfPCellUtil.setContent("5"));
//            table.addCell(PdfPCellUtil.setContent("25000"));
//            table.addCell(PdfPCellUtil.setContent("2"));
//            table.addCell(PdfPCellUtil.setContent("Cheeses"));
//            table.addCell(PdfPCellUtil.setContent("1500"));
//            table.addCell(PdfPCellUtil.setContent("1"));
//            table.addCell(PdfPCellUtil.setContent("1500"));
//            doc.add(table);
//            doc.close();
//        } catch (DocumentException | FileNotFoundException e) {
//            e.printStackTrace();
//        }
        System.out.println(new AddressDAO().getProvinces());
    }
}
