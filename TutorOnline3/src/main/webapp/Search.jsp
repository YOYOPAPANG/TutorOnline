<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "janjan333";
    String userid = "root";
    String password = "1234";
    String roll_no = request.getParameter("roll_no");
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    <body>
        <h1>Search Data</h1>
        <table border="1">
            <tr>
                <td>Name</td>
                <td>Email Id</td>
                <td>Roll No</td>
            </tr>
            <%
                try {
                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                    statement = connection.createStatement();
                    String sql = "select * from user_data where roll_no=" + roll_no + "' ";
                    resultSet = statement.executeQuery(sql);
                    while (resultSet.next()) {
            %>
            <tr>
                <td><%=resultSet.getString("Videos")%></td>
                <td><%=resultSet.getString("Subjects")%></td>
                
            </tr>
            <%
                    }
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>
    </body>
</html>