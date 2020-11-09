/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

import database.Subjects;
import database.Videos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;

/**
 *
 * @author ASUS
 */
public class ClassroomDAO {

    private static DBConnection db1;
    private static Connection connection;

    public List<Videos> getVideos() {
        List<Videos> video = new ArrayList<Videos>();
        ResultSet rs = null;
        Statement statement = null;

        try {
            db1 = new DBConnection();
            connection = db1.createConnection();
            String sql = "select * from videos";
            statement = connection.createStatement();
            rs = statement.executeQuery(sql);
            while (rs.next()) {
                Subjects subs = new Subjects();
                Videos videos = new Videos();
                videos.setVideoName(rs.getString("VideoName"));
                videos.setVideoURL(rs.getString("VideoURL"));
                subs.setSubjectName(rs.getString("Subjects_SubjectName"));
                videos.setSubjectsSubjectName(subs);
                video.add(videos);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return video;
    }
}
