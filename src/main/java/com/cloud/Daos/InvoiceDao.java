package com.cloud.Daos;

import com.cloud.Models.Invoice;
import com.cloud.Models.Product;
import com.cloud.Util.HandleExeption;
import com.cloud.Util.JDBCUtil;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class InvoiceDao {
    private final String sqlGet = "SELECT * FROM ShoeStore.Invoices";
    private String sqlUpdate = "Update ShoeStore.Invoices\n" +
            "set status = ?\n" +
            "where InvoiceID =?";


    public List<Invoice> getInvoice () {
        List<Invoice> invoices = new ArrayList<>();
        Connection conn = JDBCUtil.getConnection();

        try {

            PreparedStatement ps = conn.prepareStatement(sqlGet);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Invoice invoice = new Invoice();
                invoice.setInvoiceID(rs.getInt("InvoiceID"));
                invoice.setOrderID(rs.getInt("OrderID"));
                invoice.setInvoiceDateTime(rs.getDate("InvoiceDateTime"));
                invoice.setTotal(rs.getDouble("Total"));
                invoice.setStatus(rs.getInt("Status"));
                invoice.setTypePayment(rs.getInt("TypePayment"));
                invoices.add(invoice);
            }
        } catch (SQLException e) {
            HandleExeption.printSQLException(e);
        } finally {
            JDBCUtil.closeConnection(conn);
        }
        return invoices;
    }
    public boolean updateInvoice(int idinvoice, int status){
        Connection conn = JDBCUtil.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sqlUpdate);
            ps.setInt(1,status);
            ps.setInt(2,idinvoice);
            int rowsUpdated = ps.executeUpdate();
            return rowsUpdated > 0;

        } catch (SQLException e) {
            HandleExeption.printSQLException(e);
        } finally {
            JDBCUtil.closeConnection(conn);
        }
        return false;
    }
}
