/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

import Database.Users;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class RegisterDao {

    public String registerUser(Users registerUser) {
        String userName = registerUser.getUsername();
        String password = registerUser.getPassword();
        String firstName = registerUser.getFname();
        String lastName = registerUser.getLname();
        String email = registerUser.getEmail();

        Connection con = null;
        PreparedStatement preparedStatement = null;
        try {
            con = DBConnection.createConnection();
            String query = "insert into Users(Username,Password,Fname,Lname,Email) values (?,?,?,?,?)"; //Insert user details into the table 'USERS'
            preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
            preparedStatement.setString(1, userName);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, firstName);
            preparedStatement.setString(4, lastName);
            preparedStatement.setString(5, email);

            int i = preparedStatement.executeUpdate();

            if (i != 0) //Just to ensure data has been inserted into the database
            {
                return "SUCCESS";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "เอ้ะ กรุณากรอกข้อมูลให้ถูกต้องด้วยครับ/ค่ะ";  // On failure, send a message from here.
    }
//    public int registerUser(Users user) throws ClassNotFoundException {
//        String INSERT_USERS_SQL = "INSERT INTO users"
//                + "  (Username, Password, Fname, Lname, Email) VALUES " + " (?, ?, ?, ?,?);";
//
//        int result = 0;
//
//        Class.forName("com.mysql.jdbc.Driver");
//
//        try (Connection connection = DriverManager
//                .getConnection("jdbc:mysql://localhost:3306/tutoronlineprojectsus?useSSL=false", "root", "1234");
//                // Step 2:Create a statement using connection object
//                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
//            preparedStatement.setInt(1, 1);
//            preparedStatement.setString(2, user.getUsername());
//            preparedStatement.setString(3, user.getPassword());
//            preparedStatement.setString(4, user.getFname());
//            preparedStatement.setString(5, user.getLname());
//            preparedStatement.setString(6, user.getEmail());
//
//            System.out.println(preparedStatement);
//            // Step 3: Execute the query or update query
//            result = preparedStatement.executeUpdate();
//
//        } catch (SQLException e) {
//            // process sql exception
//            printSQLException(e);
//        }
//        return result;
//    }
//
//    private void printSQLException(SQLException ex) {
//        for (Throwable e : ex) {
//            if (e instanceof SQLException) {
//                e.printStackTrace(System.err);
//                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
//                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
//                System.err.println("Message: " + e.getMessage());
//                Throwable t = ex.getCause();
//                while (t != null) {
//                    System.out.println("Cause: " + t);
//                    t = t.getCause();
//                }
//            }
//        }
//    }

}
