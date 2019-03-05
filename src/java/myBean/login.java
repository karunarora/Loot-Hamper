
package myBean;

import javax.ejb.Stateless;


@Stateless
public class login {

   private String loginMail;
   private String loginPass;

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
   
   
}
