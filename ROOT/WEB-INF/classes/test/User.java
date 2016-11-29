package test;
import java.io.*;


public class User implements Serializable{
    private String name;

    private String passwd;

    private String email;
    public User(){
	name=null;
	passwd=null;
 	email=null;
    }
    public void setName(String name) {

        this.name = name;

    }

    public String getName() {

        return name;

    }

    public void setPasswd(String passwd) {

        this.passwd = passwd;

    }

    public String getPasswd() {

        return passwd;

    }

    public void setEmail(String email) {

        this.email = email;

    }

    public String getEmail() {

        return email;

    }

    public boolean equals(User other){

        if(other==this){

            return true;

        }

        if(!(other instanceof User)){

            return false;

        }

        return this.name.equals(other.name)&&this.passwd.equals(other.name)&&this.email.equals(other.email);

    }

}

   
