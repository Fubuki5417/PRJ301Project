package dal;

/**
 *
 * @author huyho
 */
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.User;

public class userDAO extends DBContext {

    public User checkUser(String user_email, String user_pass) {
        try {
            String sql = "select * from users where user_email = ? and user_pass = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user_email);
            ps.setString(2, user_pass);
            ResultSet rs = ps.executeQuery();
              while (rs.next()) {
                User user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                return user;
            }
        } catch (Exception e) {
        }
        return null;
    }
    
     public void updateUser(int user_id, String user_name, String user_pass) {
      String sql = "update users set user_name =? , user_pass = ? where user_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user_name);
            ps.setString(2, user_pass);
            ps.setInt(3, user_id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
     
    public User checkAcc(String user_email) {
        try {
            String sql = "select * from users where user_email = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user_email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void setAdmin(int user_id, String isAdmin) {
        String sql = "update users set isAdmin= ? where user_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, isAdmin.toUpperCase());
            ps.setInt(2, user_id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
     public void signup(String user_email, String user_pass){
            try {
                String sql = "insert into users values(?,?,?,?)";
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setString(1, "");
                ps.setString(2, user_email); 
                ps.setString(3, user_pass);
                ps.setString(4, "False"); 
                ps.executeUpdate();
            } catch (Exception e) {
            };
    }
     
    public List<User> getUser() {
        List<User> list = new ArrayList<>();
        String sql = "select * from users";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
    