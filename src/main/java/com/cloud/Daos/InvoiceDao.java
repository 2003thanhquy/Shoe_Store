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

    public List<Invoice> getAllInvoices () {
        String sql = "SELECT * FROM Invoices";
        List<Invoice> invoices = new ArrayList<>();
        Connection conn = JDBCUtil.getConnection();

        try {

            PreparedStatement ps = conn.prepareStatement(sql);
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
}
