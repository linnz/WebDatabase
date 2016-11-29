<%@page contentType="text/html;charset=utf-8"%>
<%@page language="java" import="java.io.*" %>
<jsp:useBean id="user" class="test.User" />
<%	
	try{ 
	File file=new File("data.txt");
        RandomAccessFile fout=new RandomAccessFile(file,"r");
        user.setName(request.getParameter("username"));
	user.setPasswd(request.getParameter("password"));
	user.setEmail(request.getParameter("email"));
         int flag=0;
         
          String name=null,password=null,email;
          while(file.length()!=fout.getFilePointer()){
              name=fout.readUTF();
              password=fout.readUTF();
              email=fout.readUTF();
             if(name.equals(user.getName())){
                  flag=1;
		  if(password.equals(user.getPasswd())){
		flag=2;
		}
                  break;
              }
            
          }
          if(flag==1){
          fout.close();
             out.print("<script language='JavaScript'>alert('密码错误!!');window.location.href='login.html';</script>");}
          else if(flag==0){
          fout.close();
	       out.print("<script language='JavaScript'>alert('该用户不存在!!');window.location.href='login.html';</script>");
          }
          else{
        fout.close();
        response.sendRedirect("index.html");  
        }
	}catch(Exception e){
	}

    
%>



