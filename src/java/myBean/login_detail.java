
package myBean;


public class login_detail {

    private String loginMail;
   private String loginPass;
   
   public login_detail() {
       loginMail="";
       loginPass="";
   }

    public String getLoginMail() {
        return loginMail;
    }

    public void setLoginMail(String loginMail) {
        this.loginMail = loginMail;
    }

    public String getLoginPass() {
        return loginPass;
    }

    public void setLoginPass(String loginPass) {
        this.loginPass = loginPass;
    }
   
    
    public boolean Lvalidate()
{
    boolean chk =true;
   
   if(loginMail=="" || loginPass==""){
        
        loginPass="";
        chk=false;
   }
    
    return chk;
    
}
   
}
