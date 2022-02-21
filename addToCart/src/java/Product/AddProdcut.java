/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Product;

import DB.DB;
import java.sql.*;

/**
 *
 * @author arjun
 */
public class AddProdcut {
    DB cn = new DB();
    String pname;
    String pqty;
    String pprice;
    String pimg;
 
    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPqty() {
        return pqty;
    }

    public void setPqty(String pqty) {
        this.pqty = pqty;
    }

    public String getPprice() {
        return pprice;
    }

    public void setPprice(String pprice) {
        this.pprice = pprice;
    }

    public String getPimg() {
        return pimg;
    }

    public void setPimg(String pimg) {
        this.pimg = pimg;
    }
    public void  Add(String name,String qty,String price) throws SQLException{
      
      
       String img = "https://archive.ebrschools.org/wp-content/themes/ebr/img/nofound.png";
        setPname(name);
        setPqty(qty);
        setPprice(price);
        setPimg(img);
        String qry = "insert into product values(0,'"+getPname()+"','"+getPqty()+"','"+getPprice()+"','"+getPimg()+"')";
        cn.st.executeUpdate(qry);
    }
    
    public ResultSet FetchData() throws SQLException{
        String qry = "Select * from product";
        ResultSet rs = cn.st.executeQuery(qry);
        return rs;
    }
}
