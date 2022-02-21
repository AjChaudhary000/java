/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Product;
import DataBase.DB;
import User.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author arjun
 */
public class Product {
    DB con = new DB();
    public int AddProduct(String pname,String pqty,String pprice){
       int index = 0;
        try {
            index =   con.st.executeUpdate("Insert into product values(0,'"+pname+"','"+pqty+"','"+pprice+"')");
        } catch (SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
        return index;
}
    public ResultSet ViewProduct(){
        ResultSet rs = null;
     try {
           rs =  con.st.executeQuery("Select * from product");
         
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
      return rs;
    }
   public ResultSet AddToCartViewProduct(int id){
        ResultSet rs = null;
     try {
           rs =  con.st.executeQuery("Select * from product where pid="+id+"");
         
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
      return rs;
    }
}
