package pack;
public class Customer {

	   private int id;
	   private String n;
	   private long pno;
	   private String a,d,at;
	   public Customer(int id, String n, long pno, String a, String d, String at) {
	       super();
	       this.id = id;
	       this.n = n;
	       this.pno = pno;
	       this.a = a;
	       this.d = d;
	       this.at = at;
	   }
	   public int getId() {
	       return id;
	   }
	   public void setId(int id) {
	       this.id = id;
	   }
	   public String getN() {
	       return n;
	   }
	   public void setN(String n) {
	       this.n = n;
	   }
	   public long getPno() {
	       return pno;
	   }
	   public void setPno(long pno) {
	       this.pno = pno;
	   }
	   public String getA() {
	       return a;
	   }
	   public void setA(String a) {
	       this.a = a;
	   }
	   public String getD() {
	       return d;
	   }
	   public void setD(String d) {
	       this.d = d;
	   }
	   public String getAt() {
	       return at;
	   }
	   public void setAt(String at) {
	       this.at = at;
	   }
	   
	}