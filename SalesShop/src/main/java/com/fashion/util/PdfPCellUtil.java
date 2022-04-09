package com.fashion.util;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.Objects;

public class PdfPCellUtil {

    private static PdfPCell cell;

    public static PdfPCell getInstance()
    {
        if(cell == null) {
            cell = new PdfPCell();
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            cell.setBorderColor(BaseColor.ORANGE);
            cell.setNoWrap(true);
            cell.setPadding(5f);
        }
        return cell;
    }

    public static PdfPCell setContent(String content, int... params){
        PdfPCell cell = PdfPCellUtil.getInstance();
        if(params.length > 0)
        {
            cell.setColspan(params[0]);
            cell.setHorizontalAlignment(Element.ALIGN_RIGHT);
        }
        cell.setPhrase(new Paragraph(content));
        return cell;
    }

    public static void writeTable(Objects... params)
    {
        Document doc = new Document();
        try {
            PdfWriter.getInstance(doc, new FileOutputStream("D:\\test.pdf"));
            doc.open();
            PdfPTable table = new PdfPTable(params.length);
            for (Objects param : params) table.addCell(setContent(param.toString()));
            doc.add(table);
            doc.close();
        } catch (DocumentException | FileNotFoundException e) {
            e.printStackTrace();
        }
    }
}
