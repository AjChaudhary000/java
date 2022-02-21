/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DB;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author arjun
 */
public class DB {
   public Statement st;
  public DB(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection c  = DriverManager.getConnection("jdbc:mysql://localhost:3306/addtocart?zeroDateTimeBehavior=convertToNull","root","");
            st = c.createStatement();
            System.out.println("my data inserted ");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DB.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DB.class.getName()).log(Level.SEVERE, null, ex);
        }
    
   }

}
