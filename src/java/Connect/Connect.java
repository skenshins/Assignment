/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Administrator
 */
public class Connect {

    public static java.sql.Connection con;

    public static java.sql.Connection getConnection() {
        System.out.println("-------- SQL Server JDBC Connection ------------");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            System.out.println("Bạn chưa thêm thư viện JDBC");
            e.printStackTrace();
        }

        System.out.println("Bạn đã đăng ký thành công thư viện JDBC");
        java.sql.Connection con = null;

        try {
            con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=Personel", "sa", "");

        } catch (SQLException e) {
            System.out.println("Thông tin database không chính xác");
            e.printStackTrace();
        }

        if (con != null) {
            System.out.println("Kết nối database thành công");
        } else {
            System.out.println("Kết nối database thất bại");
        }
        return con;
    }
}
