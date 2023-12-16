package com.cloud.Daos;

import com.cloud.Models.Product;
import com.cloud.Util.HandleExeption;
import com.cloud.Util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    String sqlGetAll = "SELECT * FROM products";
    String sqlGetRandom = "SELECT * FROM Products ORDER BY RAND() LIMIT ?";
    String sqlInsert = "INSERT INTO Products (Name, Description, Price, Stock, Image, DateAdd, CategoryID) VALUES (?,?,?,?,?,?,?)";

    public List<Product> getAllProducts () {
        List<Product> products = new ArrayList<>();
        Connection conn = JDBCUtil.getConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sqlGetAll);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setProductID(rs.getInt("ProductID"));
                product.setName(rs.getString("Name"));
                product.setDescription(rs.getString("Description"));
                product.setPrice(rs.getBigDecimal("Price"));
                product.setStock(rs.getInt("Stock"));
                product.setImage(rs.getBytes("Image"));
                product.setDateAdd(rs.getDate("DateAdd"));
                product.setCategoryID(rs.getInt("CategoryID"));
                products.add(product);
            }
        } catch (SQLException e) {
            HandleExeption.printSQLException(e);
        } finally {
            JDBCUtil.closeConnection(conn);
        }
        return products;
    }

    public void addProduct(Product product) {
        Connection conn = JDBCUtil.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sqlInsert);
            ps.setString(1, product.getName());
            ps.setString(2, product.getDescription());
            ps.setBigDecimal(3, product.getPrice());
            ps.setInt(4, product.getStock());
            ps.setBytes(5,product.getImage());
            ps.setDate(6, new java.sql.Date(product.getDateAdd().getTime()));
            ps.setInt(7, product.getCategoryID());

            int rowsInserted = ps.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("A new product was inserted successfully!");
            }
            else{
                System.out.println("A new product was inserted failed!");
            }
        } catch (SQLException e) {
            HandleExeption.printSQLException(e);
        } finally {
            JDBCUtil.closeConnection(conn);
        }
    }
    public List<Product> getAllProductsRandomly (int maxSize) {
        List<Product> products = new ArrayList<>();
        Connection conn = JDBCUtil.getConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sqlGetRandom);
            ps.setInt(1, maxSize);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setProductID(rs.getInt("ProductID"));
                product.setName(rs.getString("Name"));
                product.setDescription(rs.getString("Description"));
                product.setPrice(rs.getBigDecimal("Price"));
                product.setStock(rs.getInt("Stock"));
                product.setImage(rs.getBytes("Image"));
                product.setDateAdd(rs.getDate("DateAdd"));
                product.setCategoryID(rs.getInt("CategoryID"));
                products.add(product);
            }
        } catch (SQLException e) {
            HandleExeption.printSQLException(e);
        } finally {
            JDBCUtil.closeConnection(conn);
        }
        return products;
    }

}
