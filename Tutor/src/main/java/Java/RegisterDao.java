/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

import Database.Users;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class RegisterDao {

    public String registerUser(Users registerBean) {
        String userName = registerBean.getUsername();
        String password = registerBean.getPassword();
        String firstName = registerBean.getFname();
        String lastName = registerBean.getLname();
        String email = registerBean.getEmail();

        Connection con = null;
        PreparedStatement preparedStatement = null;
        try {
            con = Connector.getInstance();
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
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
    }
}
