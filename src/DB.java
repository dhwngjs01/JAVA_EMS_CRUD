import java.sql.*;
import java.io.IOException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author user
 */
public class DB {
    String driver = "org.mariadb.jdbc.Driver";
    String url = "jdbc:mariadb://localhost:3306/java_ems_crud";
    String userId = "java_ems_crud";
    String userPw = "java_ems_crud";
    
    Connection conn;
    Statement stmt;
    ResultSet rs;
    
    public void dbOpen() throws IOException, SQLException {
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, userId, userPw);
            stmt = conn.createStatement();
        } catch (ClassNotFoundException e){
            System.out.println("드라이버 로드 실패");
        }
    }
    
    public void dbClose() throws IOException {
        try {
            stmt.close();
            conn.close();
        } catch(Exception e){
            System.out.println("SQLException : " + e.getMessage());
        }
    }
}
