package com.fashion.export;

import com.fashion.model.Product;
import com.fashion.util.PdfPCellUtil;

import java.util.List;

public class ExportOrder {
    public static void exportBill(List<Product> list)
    {
        PdfPCellUtil.writeTable();
    }
}
