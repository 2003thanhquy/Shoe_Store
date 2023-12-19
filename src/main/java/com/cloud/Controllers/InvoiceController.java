package com.cloud.Controllers;

import com.cloud.Daos.InvoiceDao;
import com.cloud.Models.Invoice;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/invoice")
public class InvoiceController extends HttpServlet {
    InvoiceDao invoiceDao;
    public void init(){
        invoiceDao = new InvoiceDao();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getInvoice(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        updateInvoice(request,response);
    }
    void updateInvoice(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
            int idinvoice =Integer.parseInt( request.getParameter("idinvoice"));
            int status = Integer.parseInt(request.getParameter("status"));
    }
    void getInvoice(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        List<Invoice> lstData = invoiceDao.getInvoice();
        int page = 1;
        if (request.getParameter("page") != null) {
            page = Integer.parseInt(request.getParameter("page"));
        }
        int pageSize = 5;
        int totalRows = lstData.size();
        int totalPages = (int) Math.ceil((double) totalRows / pageSize);

        List<Invoice> currentPageData = getCurrentPageData(lstData, page, pageSize);

        request.setAttribute("lstData", currentPageData);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages", totalPages);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/invoice.jsp");
        dispatcher.forward(request, response);

    }
    private List<Invoice> getCurrentPageData(List<Invoice> dataList, int page, int pageSize) {
        int startIndex = (page - 1) * pageSize;
        int endIndex = Math.min(startIndex + pageSize, dataList.size());
        return dataList.subList(startIndex, endIndex);
    }
}