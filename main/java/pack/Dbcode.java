package pack;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class Dbcode {
   public static Connection con;
   public Dbcode() throws Exception{
       Class.forName("com.mysql.cj.jdbc.Driver");
       con= DriverManager.getConnection
       ("jdbc:mysql://localhost/javadmodb","root","accord");
   }
   public void conclose()throws Exception {
       con.close();
   }
public boolean login(String username,String password)throws Exception {
    String q="select * from Login where Username=? and Password=?";
    PreparedStatement p=con.prepareStatement(q);
    p.setString(1, username);
    p.setString(2, password);
    ResultSet rs=p.executeQuery();
    return rs.next();
}
public int insert(String n,long pno,String a,String d,String at) throws Exception{
   
    PreparedStatement ps=con.prepareStatement
            ("insert into customer(Name,Phoneno,Address,DOB,Acctype) values(?,?,?,?,?)");
    ps.setString(1, n);
    ps.setLong(2, pno);
    ps.setString(3, a);
    ps.setString(4, d);
    ps.setString(5, at);
   
    return ps.executeUpdate();
}
public ArrayList<Customer> view() throws Exception
{
    ArrayList<Customer> a=new ArrayList<Customer>();
    Statement s=con.createStatement();
    ResultSet rs=s.executeQuery("select * from Customer");
    while(rs.next())
    {
        Customer c=new Customer(rs.getInt(1),
                rs.getString(2), rs.getLong(3),
                rs.getString(4), rs.getString(5),
                rs.getString(6));
        a.add(c);
    }
    return a;
}
public int update(String n,long pno,String a,
        String d,String at,int id) throws Exception{
        PreparedStatement ps=con.prepareStatement
("update customer set Name=?,Phoneno=?,Address=?,DOB=?,Acctype=? where ID=?");
        ps.setString(1, n);
        ps.setLong(2, pno);
        ps.setString(3, a);
        ps.setString(4, d);
        ps.setString(5, at);
        ps.setInt(6, id);
        return ps.executeUpdate();
    }
public int delete(int id) throws Exception
{
    PreparedStatement ps=con.prepareStatement("delete from customer where id=?");
    ps.setInt(1, id);
    return ps.executeUpdate();
}
}