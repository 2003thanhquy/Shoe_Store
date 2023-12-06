package com.cloud.Daos;

import com.cloud.Models.User;
import com.cloud.Util.JDBCUtil;
import com.cloud.Util.HandleExeption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    String sqlInsert = "INSERT INTO users (FullName, BirthDate, Address, Phone, Email, Password, Role) VALUES (?, ?, ?, ?, ?, ?, ?)";
    String sqlGetAll = "SELECT * FROM users";
    String sqlUpdate = "UPDATE users SET FullName = ?, BirthDate = ?, Address = ?, Phone = ?, Email = ?, Password = ?, Role = ? WHERE UserID = ?";
    String DELETE_User_By_UserID = "DELETE FROM users WHERE UserID = ?";
    public List<User> getAllUsers () {
        List<User> users = new ArrayList<>();
        Connection conn = JDBCUtil.getConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sqlGetAll);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setUserID(rs.getInt("UserID"));
                user.setFullName(rs.getString("FullName"));
                user.setBirthDate(rs.getDate("BirthDate"));
                user.setAddress(rs.getString("Address"));
                user.setPhone(rs.getString("Phone"));
                user.setEmail(rs.getString("Email"));
                user.setRole(rs.getString("Role"));
                users.add(user);
            }
        } catch (SQLException e) {
            HandleExeption.printSQLException(e);
        } finally {
            JDBCUtil.closeConnection(conn);
        }
        return users;
    }
    public boolean insertUser(User user) {
        Connection conn = JDBCUtil.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sqlInsert);
            ps.setString(1, user.getFullName());
            ps.setDate(2, new java.sql.Date(user.getBirthDate().getTime()));
            ps.setString(3, user.getAddress());
            ps.setString(4, user.getPhone());
            ps.setString(5, user.getEmail());
            ps.setString(6, user.getPassword());
            ps.setString(7, user.getRole());

            int rowsInserted = ps.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("A new user was inserted successfully!");
            }
        } catch (SQLException e) {
            HandleExeption.printSQLException(e);
            return false;
        } finally {
            JDBCUtil.closeConnection(conn);
        }
        return true;
    }
    public boolean updateUser(User user) {
        Connection conn = JDBCUtil.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sqlUpdate);
            ps.setString(1, user.getFullName());
            ps.setDate(2, new java.sql.Date(user.getBirthDate().getTime()));
            ps.setString(3, user.getAddress());
            ps.setString(4, user.getPhone());
            ps.setString(5, user.getEmail());
            ps.setString(6, user.getPassword());
            ps.setString(7, user.getRole());
            ps.setInt(8, user.getUserID());
            int rowsUpdated = ps.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.closeConnection(conn);
        }
        return false;
    }
    public boolean deleteUser(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection conn = JDBCUtil.getConnection();
             PreparedStatement statement = conn.prepareStatement(DELETE_User_By_UserID);)
        {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

}
