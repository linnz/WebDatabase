<%@page contentType="text/html;charset=utf-8"%>
<%@page language="java" import="java.io.*" %>
<jsp:useBean id="user" class="test.User" />
<%	
	try{ 
	File file=new File("data.txt");
        RandomAccessFile fout=new RandomAccessFile(file,"rw");
        user.setName(request.getParameter("username"));
	user.setPasswd(request.getParameter("userPassword"));
	user.setEmail(request.getParameter("email"));
         int flag=0;
         
          String name=null,password=null,email;
          while(file.length()!=fout.getFilePointer()){
              name=fout.readUTF();
              password=fout.readUTF();
              email=fout.readUTF();
              if(name.equals(user.getName())){
                  flag=1;
                  break;
              }
              if (email.equals(user.getEmail())){
                  flag=2;
                  break;
              }
          }
          if(flag==1){
          fout.close();
             out.print("<script language='JavaScript'>alert('该用户已存在!!');window.location.href='register.html';</script>");}
          else if(flag==2){
          fout.close();
	       out.print("<script language='JavaScript'>alert('该邮箱已注册!!');window.location.href='register.html';</script>");
          }
          else{
        fout.seek(file.length());
        fout.writeUTF(user.getName());
        fout.writeUTF(user.getPasswd());
        fout.writeUTF(user.getEmail());
        response.sendRedirect("login.html");  
        fout.close();}
	}catch(Exception e){
	}

    
%>



