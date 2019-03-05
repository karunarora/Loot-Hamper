
package myBean;



public class userDetail {
    
   private String name1;
   private String name2;
   private String email1;
   private String email2;
   private String pass;
   private String gender;
   private String dob;
   
   public userDetail() {
        name1="";
        name2="";
        email1="";
        email2="";
        pass="";
        
    }

    public String getName1() {
        return name1;
    }

    public void setName1(String name1) {
        this.name1 = name1;
    }

    public void setName2(String name2) {
        this.name2 = name2;
    }

    public void setEmail1(String email1) {
        this.email1 = email1;
    }

    public void setEmail2(String email2) {
        this.email2 = email2;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }


    public String getName2() {
        return name2;
    }

    public String getDob() {
        return dob;
    }

    public String getEmail1() {
        return email1;
    }

    public String getEmail2() {
        return email2;
    }

    public String getGender() {
        return gender;
    }

    public String getPass() {
        return pass;
    }


    



}
