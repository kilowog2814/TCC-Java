package Banco;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class DAO {

    public Connection con;
    public PreparedStatement pstmt;
    public ResultSet rs;
    public  CallableStatement cstmt;
    

    public Connection OpenDatabase() throws Exception {
        try {
            String url = "jdbc:sqlserver://localhost:1433;databaseName=HOTEL;user=aluno;password=etesp";
            con = DriverManager.getConnection(url);
            return con;
        } catch (SQLException sql) {
            JOptionPane.showMessageDialog(null, sql);
            return null;
        }
    }

    public void CloseDatabase() throws Exception {
        if (con != null) {
            con.close();
        }
    }
}
