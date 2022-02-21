/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DB;

import java.sql.*;
import java.util.ArrayList;


/**
 *
 * @author arjun
 */
public class DB {
     Statement st;
      int id;
    int aid;

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }
   String pname;
   String pprice;
   String pimage;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPprice() {
        return pprice;
    }

    public void setPprice(String pprice) {
        this.pprice = pprice;
    }

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage;
    }
    
     public void Connect() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom?zeroDateTimeBehavior=convertToNull", "root", "");
        st = con.createStatement();
        System.out.println("Connection .......");
    }

    public ArrayList<DB> DisplayProduct() throws ClassNotFoundException, SQLException{
   Connect();
      ArrayList<DB> data = new ArrayList<DB>();
       ResultSet rs =  st.executeQuery("Select * from produact");
       while(rs.next()){
            DB prod = new DB();
            prod.setId(rs.getInt("id"));
             prod.setPname(rs.getString("pname"));
             prod.setPprice(rs.getString("pprice"));
             prod.setPimage( rs.getString("pimage"));
            data.add(prod);     
       }
      
       return data;
   }
     public ArrayList<DB> DisplayProductDetails(int id) throws ClassNotFoundException, SQLException{
   Connect();
      ArrayList<DB> data = new ArrayList<DB>();
       ResultSet rs =  st.executeQuery("Select * from produact where id = "+id+"");
       while(rs.next()){
            DB prod = new DB();
            prod.setId(rs.getInt("id"));
             prod.setPname(rs.getString("pname"));
             prod.setPprice(rs.getString("pprice"));
             prod.setPimage( rs.getString("pimage"));
            data.add(prod);     
       }
      
       return data;
   }
}
