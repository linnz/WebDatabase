import java.io.*;
package file;
class MyObjectOutputStream extends ObjectOutputStream {
    public MyObjectOutputStream() throws IOException {
        super();
    }
    public MyObjectOutputStream(OutputStream out) throws IOException {
        super(out);
    }
    @Override
    protected void writeStreamHeader() throws IOException {
        return;
    }
}

public class User implements  Serializable{
    private String name;
    private String passwd;
    private String email;
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
   
