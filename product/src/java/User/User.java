/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package User;
import DataBase.DB;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author arjun
 */
public class User {
    DB cn = new DB();

    
    public int AddUsers(String uname,String upass){
       int index = 0;
        try {
          index =   cn.st.executeUpdate("Insert into user values(0,'"+uname+"','"+upass+"')");
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return index;
}
   public int UserCheck(String uname,String upass){
       int index = 0;
        try {
          ResultSet rs =  cn.st.executeQuery("Select * from user where uname = '"+uname+"' and upass = '"+upass+"'");
          if(rs.next()){
            index = 1;
        }else{
            index = 0;
        }
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return index;
}
    
}
