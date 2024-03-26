/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pack;

import java.sql.*;
import java.sql.ResultSet;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Tanya
 */
@Controller
public class HomeController {
    @RequestMapping("/homepage")
    public String home()
    {
        System.out.println("i am homepage");
        return"homepage";
    }
    @RequestMapping("/adminlogin")
    public  String showform()
    {
        System.out.println("i am adminlogin");
        return "adminlogin";
        //return adminlogin.jsp
    }
    @RequestMapping(value="/processform",method=RequestMethod.POST)
    public  String Handleform(@RequestParam("b") String y,
            @RequestParam("c") String z,Model object1) throws SQLException
    {
        String m="",l="";
        Connection con=null;
        PreparedStatement stmt=null;
        try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
stmt=con.prepareStatement("select * from admin where username=? and password=?");  
stmt.setString(1,y);//1 specifies the first parameter in the query  
stmt.setString(2,z);  

       

         ResultSet rs=stmt.executeQuery();
       while(rs.next())
       {
            m=rs.getString("username");
            l=rs.getString("password");
            object1.addAttribute("us", rs.getString("username"));
             
       }
       
       
        }
        
        
        
        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
            
        }
        finally
        {
         stmt.close();
         con.close();
        }
        if(y.equals(m) && z.equals(l))
       {
           return "welcomeadmin";
       }
       else
       {
           object1.addAttribute("ero", "*invalid credentials!!");
           return "error";
           
       }
        
        
    }
    
    
    @RequestMapping("/employeelogin")
    public  String showform1()
    {
        System.out.println("i am employeelogin");
        return "employeelogin";
        //return employeelogin.jsp
    }
    
    String r="";
    @RequestMapping(value="/processform1",method=RequestMethod.POST)
    public  String Handleform1(@RequestParam("a") String p,
            @RequestParam("d") String q,Model object1) throws SQLException
    {
        String o="",k="";
        Connection con=null;
        PreparedStatement stmt=null;
        try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
stmt=con.prepareStatement("select * from employee where empname=? and password=?");  
stmt.setString(1,p);//1 specifies the first parameter in the query  
stmt.setString(2,q);  


         ResultSet rs=stmt.executeQuery();
       while(rs.next())
       {
            o=rs.getString("empname");
            k=rs.getString("password");
            r=rs.getString("empid");
            object1.addAttribute("us", rs.getString("empname"));
             
       }
       
       
        }
        
        
        
        
        catch(Exception x)
        {
            System.out.println(x.getMessage());
        }
        
        finally
        {
         stmt.close();
         con.close();
        }
        
        if(p.equals(o) && q.equals(k))
       {
           return "welcomeemployee";
       }
       else
       {
           object1.addAttribute("eror", "*Invalid credentials!!");
           return "erroremp";
       }
    }
    
    
    @RequestMapping("/addemployee")
    public  String showform3()
    {
        System.out.println("i am addemployee");
        return "addemployee";
        //return employeesignup.jsp
    }
    
    
    @RequestMapping(value="/processform3",method=RequestMethod.POST)
    public  String Handleform3(@RequestParam("g") String s,
            @RequestParam("h") String t,@RequestParam("i") String u,Model object1) throws SQLException 
    {
        
               
//        object1.addAttribute("msg"," New Employee added successfully ");
        Connection con=null;
        PreparedStatement stmt=null;
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
stmt=con.prepareStatement("insert into employee values(?,?,?)");  
  
stmt.setString(1,s);//1 specifies the first parameter in the query  
stmt.setString(2,t); 
stmt.setString(3,u); 



         stmt.executeUpdate();
        }
        
        
        
        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
           
        }
      
        finally
      {
          stmt.close();
          con.close();
      }
        
        return"addemployee";
    }
    
    @RequestMapping("/emdisplay")
    public  String showform11()
    {
        System.out.println("i am emdisplay");
        return "emdisplay";
        //return gdisplay.jsp
    }
    
    @RequestMapping("/dsalary")
    public  String showform19()
    {
        System.out.println("i am dsalary");
        return "dsalary";
        //return gdisplay.jsp
    }
    
    
     @RequestMapping("/Edetails")
    public  String showform4()
    {
        System.out.println("i am employeedetails");
        return "Edetails";
        //return Edetails.jsp
    }
    
    @RequestMapping(value="/processform4",method=RequestMethod.POST)
    public  String Handleform4( @RequestParam("a") String  x,
            @RequestParam("b") String y,
            @RequestParam("c") String z,
            @RequestParam("d") String  p,
            @RequestParam("e") String q,
            @RequestParam("f") String r,
            @RequestParam("g") String s,
            @RequestParam("h") String t,
            @RequestParam("i") String u,
            @RequestParam("j") String v,
            @RequestParam("k") String w,
            @RequestParam("l") String m,
            
            Model object1) throws SQLException 
    {
        
      
        object1.addAttribute("msg","Employee record inserted Successfully ");
        Connection con=null;
        PreparedStatement stmt=null;
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
stmt=con.prepareStatement("insert into edetails values(?,?,?,?,?,?,?,?,?,?,?,?)");  
stmt.setInt(1, Integer.parseInt(x));
stmt.setString(2,y);//1 specifies the first parameter in the query  
stmt.setString(3,z); 
stmt.setString(4,p);//1 specifies the first parameter in the query  
stmt.setInt(5, Integer.parseInt(q));
stmt.setString(6,r);//1 specifies the first parameter in the query  
stmt.setString(7, s);
stmt.setString(8,t);
stmt.setString(9,u);
stmt.setInt(10, Integer.parseInt(v));
stmt.setInt(11, Integer.parseInt(w));
stmt.setString(12,m);

         stmt.executeUpdate();
         

                
            
        }
        
        
        
        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
        }
        
      finally
      {
          stmt.close();
          con.close();
      }

        return"erdisplay";
        
    }
    
    @RequestMapping("/erdisplay")
    public  String showform12()
    {
        System.out.println("erdisplay");
        return "erdisplay";
    }

    
    @RequestMapping("/outputdisp")
    public  String showform7(Model object1) throws SQLException
    {
        System.out.println("i am outputdisp");
        
        Connection con=null;
        PreparedStatement stmt=null;
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
stmt=con.prepareStatement("select * from edetails where empid=?");  
stmt.setInt(1, Integer.parseInt(r));
ResultSet rs=stmt.executeQuery();
       while(rs.next())
       {
           object1.addAttribute("EPID", rs.getString("EMPID"));
             object1.addAttribute("EN", rs.getString("ENAME"));
             object1.addAttribute("CI", rs.getString("CITY"));
             object1.addAttribute("DA", rs.getString("DATE_OFJOINING"));
             object1.addAttribute("PI", rs.getString("PINCODE"));
             object1.addAttribute("EM", rs.getString("EMAILID"));
             object1.addAttribute("MO", rs.getString("MOBILENO"));
             object1.addAttribute("ST", rs.getString("STATE"));
             object1.addAttribute("GN", rs.getString("GENDER"));
             object1.addAttribute("GI", rs.getString("GRADE_ID"));
             object1.addAttribute("DI", rs.getString("DEPT_ID"));
             object1.addAttribute("DP", rs.getString("DEPARTMENT"));
             
       }
        }
        
        
        
        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
        }
        
      finally
      {
          stmt.close();
          con.close();
      }
        return "outputdisp";
}

    @RequestMapping("/outputgradedisp")
    public  String showform8()
    {
        System.out.println("i am gdisplay");
        return "gdisplay";
        //return gdisplay.jsp
    }
    
    
    
    @RequestMapping(value="/displayform1",method=RequestMethod.POST)
    public  String Handleform8( @RequestParam("k") String  x,
          
          Model object1) throws SQLException 
    {
        
        Connection con=null;
        PreparedStatement stmt=null;
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
stmt=con.prepareStatement("select * from GRADE where GRADE_ID=?");  
  stmt.setInt(1, Integer.parseInt(x));
ResultSet rs=stmt.executeQuery();
       while(rs.next())
       {
           object1.addAttribute("GID", rs.getString("GRADE_ID"));
           object1.addAttribute("DID", rs.getString("DEPT_ID"));
           object1.addAttribute("DNA", rs.getString("DEPARTMENT_NAME"));
           object1.addAttribute("NA", rs.getString("GRADE_NAME"));
           object1.addAttribute("SN", rs.getString("GRADE_SHORT_NAME"));
           object1.addAttribute("GB", rs.getString("GRADE_BASIC"));
           object1.addAttribute("GTA", rs.getString("GRADE_TA"));
           object1.addAttribute("GDA", rs.getString("GRADE_DA"));
           object1.addAttribute("GHRA", rs.getString("GRADE_HRA"));
           object1.addAttribute("GMA", rs.getString("GRADE_MA"));
           object1.addAttribute("GPF", rs.getString("GRADE_PF"));
           object1.addAttribute("GPT", rs.getString("GRADE_PT"));
  }
        }
           
        catch(Exception k)
        {
            System.out.println(k.getMessage());
        }
        finally
      {
          stmt.close();
          con.close();
      }
        return "outputgradedisp";
    }
    
    @RequestMapping("/depdisplay")
    public  String showform13()
    {
        System.out.println("i am depdisplay");
        return "depdisplay";
        //return depdisplay.jsp
    }
    
    @RequestMapping("/passupdate")
    public  String form()
    {
        System.out.println("i am update");
        return "userpassupdate";
        //return update.jsp
    }
    @RequestMapping(value="/updateform",method=RequestMethod.POST)
    public  String Handleformm( 
            @RequestParam("a") String y,
            @RequestParam("b") String z,Model object1) throws SQLException 
    {
        
         
       
        object1.addAttribute("msg","record updateed Successfully ");
        Connection con=null;
        PreparedStatement stmt=null;
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
stmt=con.prepareStatement("update employee set empname=?,password =? where empid=?");  
  stmt.setInt(3, Integer.parseInt(r));
stmt.setString(1,y);//1 specifies the first parameter in the query  
stmt.setString(2,z);  

         stmt.executeUpdate(); //it is used for all insert , update ,delete 
        }
         
        
        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
        }
        
        finally
      {
          stmt.close();
          con.close();
      }
        
        return"userpassupdate";
    }
    
    
    @RequestMapping(value="/deleteform",method=RequestMethod.POST)
    public  String Handleformm( @RequestParam("a") String  x,
            Model object1) throws SQLException 
    {
        
         
       
        object1.addAttribute("msg","record deleted Successfully ");
        Connection con=null;
        PreparedStatement stmt=null;
        try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");
stmt=con.prepareStatement("delete from employee where empid=?");  
  stmt.setInt(1, Integer.parseInt(x));


         stmt.executeUpdate(); //it is used for all insert , update ,delete 
        }
       catch(Exception k)
        {
            System.out.println(k.getMessage());
        }
        finally
        {
            stmt.close();
            con.close();
        }
        
        return"emdisplay";
}
    
    @RequestMapping("/forgotpass")
    public  String form2()
    {
        System.out.println("i am fogotpass");
        return "askusername";
        //return askusername.jsp
    }
    @RequestMapping(value="/processform11",method=RequestMethod.POST)
    public  String Handleformm1( @RequestParam("a") String  x,
            @RequestParam("b") String y,
             Model object1) throws SQLException 
    {
        
         
       
        object1.addAttribute("msg","record updateed Successfully ");
        Connection con=null;
        PreparedStatement stmt=null;
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
stmt=con.prepareStatement("update admin set password=? where username=?");  
  
stmt.setString(2,x);//1 specifies the first parameter in the query  
stmt.setString(1,y);  

         stmt.executeUpdate(); //it is used for all insert , update ,delete 
        }
         
        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
        }
        
        finally
      {
          stmt.close();
          con.close();
      }
        
        return"adminlogin";
    }
    
    @RequestMapping("/dashboard")
    public  String form3()
    {
        System.out.println("i am dashboard");
        return "welcomeadmin";
        
    }
    
    @RequestMapping("/Edashboard")
    public  String form4()
    {
        System.out.println("i am Edashboard");
        return "welcomeemployee";
        
    }
    
    @RequestMapping("/leaveapplication")
    public  String displayform15()
    {
        System.out.println("I am leave application");
        return "leaveapplication";
    }  
    @RequestMapping(value="/displayform15",method=RequestMethod.POST)
    public  String displayform15( 
            @RequestParam("k") String y,
            @RequestParam("g") String z,
            @RequestParam("h") String w,
            @RequestParam("i") String r,Model object1) throws SQLException 
    {
        
         
       
        object1.addAttribute("msg","leave applied sucssefully ");
        Connection con=null;
        PreparedStatement stmt=null;
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
stmt=con.prepareStatement("insert into leave(empid,st,till,reason) values (?,?,?,?)");  
  
stmt.setString(1,y);//1 specifies the first parameter in the query  
stmt.setString(2,z);
stmt.setString(3,w);//1 specifies the first parameter in the query  
stmt.setString(4,r);

         stmt.executeUpdate(); //it is used for all insert , update ,delete 
        }
         
        
        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
        }
        
        finally
      {
          stmt.close();
          con.close();
      }
        
        return"welcomeemployee";
    }
    @RequestMapping("/vstatus")
      public  String showform11(Model object1) throws SQLException
    {
        System.out.println("i am vstatus");
        Connection con=null;
        PreparedStatement stmt=null;
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
stmt=con.prepareStatement("select * from leave where empid=?");  
  stmt.setInt(1, Integer.parseInt(r));
ResultSet rs=stmt.executeQuery();
       while(rs.next())
       {
           object1.addAttribute("st", rs.getString("st"));
             object1.addAttribute("till", rs.getString("till"));
             object1.addAttribute("reason", rs.getString("reason"));
             object1.addAttribute("status", rs.getString("status"));
             
             
       }
        }
        
        
        
        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
        }
      finally
      {
          stmt.close();
          con.close();
      }
        
        return "vstatus";
}
     @RequestMapping("/leaveapp")
    public  String displayform16()
    {
        System.out.println("I am leave application details");
        return "leaveapp";
    }  
    @RequestMapping(value="/approve",method=RequestMethod.POST)
    public  String Handleform3( @RequestParam("a") String  x,
            Model object1) throws SQLException 
    {
        
         
       
        Connection con=null;
        PreparedStatement stmt=null;
        try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");
stmt=con.prepareStatement("update leave set status='approve' where empid=?");  
  stmt.setInt(1, Integer.parseInt(x));


         stmt.executeUpdate(); //it is used for all insert , update ,delete 
        }
       catch(Exception k)
        {
            System.out.println(k.getMessage());
        }
        finally
        {
            stmt.close();
            con.close();
        }
        
        return"leaveapp";
}
    
    @RequestMapping("/update")
    public  String form7()
    {
        System.out.println("i am edetailsupdate");
        return "update";
        
    }

    /**
     *
     * @param u
     * @param y
     * @param z
     * @param w
     * @param a
     * @param b
     * @param c
     * @param d
     * @param e
     * @param f
     * @param g
     * @param h
     * @param object1
     * @return
     * @throws SQLException
     */
    
    @RequestMapping(value="/updform",method=RequestMethod.POST)
    public  String Handleformm5( @RequestParam("id") int  u,
            @RequestParam("name") String  y,
            @RequestParam("city") String  z,
            @RequestParam("date") String  w,
            @RequestParam("pincode") String  a,
            @RequestParam("email") String  b,
            @RequestParam("mobile") String  c,
            @RequestParam("state") String  d,
            @RequestParam("gender") String  e,
            @RequestParam("gid") String  f,
            @RequestParam("did") String  g,
            @RequestParam("dept") String  h,
            
            Model object1) throws SQLException 
    {
        
        Connection con=null;
        PreparedStatement stmt=null; 
   
        try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");
stmt=con.prepareStatement("update edetails set ENAME=?,CITY=?,DATE_OFJOINING=?,PINCODE=?,EMAILID=?,MOBILENO=?,STATE=?,GENDER=?,GRADE_ID=?,DEPT_ID=?,DEPARTMENT=? where EMPID=?");  
  stmt.setInt(12,u);
  stmt.setString(1,y);//1 specifies the first parameter in the query  
stmt.setString(2,z); 
stmt.setString(3,w);//1 specifies the first parameter in the query  
stmt.setInt(4, Integer.parseInt(a));
stmt.setString(5,b);//1 specifies the first parameter in the query  
stmt.setString(6, c);
stmt.setString(7,d);
stmt.setString(8,e);
stmt.setInt(9, Integer.parseInt(f));
stmt.setInt(10, Integer.parseInt(g));
stmt.setString(11,h);


         stmt.executeUpdate(); //it is used for all insert , update ,delete 
        }
       catch(Exception k)
        {
            System.out.println(k.getMessage());
        }
        
        finally
        {
            stmt.close();
            con.close();
        }
        
        return"erdisplay";
}
    
    @RequestMapping("/sfc")
    public  String form10()
    {
        System.out.println("i am salc");
        return"salarycalf";
        
}
    
        @RequestMapping("/grdisplay")
    public  String form11()
    {
        System.out.println("i am grdisplay");
        return"grdisplay";
        
}
    
     @RequestMapping(value="/processform31",method=RequestMethod.POST)
    public  String Handleform9( @RequestParam("id") String  x,
            @RequestParam("n") String y,
            @RequestParam("sm") String f,
            @RequestParam("ye") String m,
            @RequestParam("s") String z,
            @RequestParam("ta") String  p,
            @RequestParam("da") String q,
            @RequestParam("hra") String r,
            @RequestParam("pf") String s,
            @RequestParam("ma") String t,
            @RequestParam("pt") String u,
            @RequestParam("net") String v,
            
            Model object1) throws SQLException 
    {
        
      
        object1.addAttribute("msg","salary record inserted Successfully ");
        Connection con=null;
        PreparedStatement stmt=null;
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
stmt=con.prepareStatement("insert into salary values(?,?,?,?,?,?,?,?,?,?,?,?)");  
stmt.setInt(1, Integer.parseInt(x));
stmt.setString(2,y);//1 specifies the first parameter in the query  
stmt.setString(3,f);
stmt.setInt(4,Integer.parseInt(m)); 
stmt.setInt(5,Integer.parseInt(z)); 
stmt.setInt(6,Integer.parseInt(p));//1 specifies the first parameter in the query  
stmt.setInt(7, Integer.parseInt(q));
stmt.setInt(8,Integer.parseInt(r));//1 specifies the first parameter in the query  
stmt.setInt(9, Integer.parseInt(s));
stmt.setInt(10,Integer.parseInt(t));
stmt.setInt(11,Integer.parseInt(u));
stmt.setString(12, v);

         stmt.executeUpdate();
         

                
            
        }
        
        
        
        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
        }
        
      finally
      {
          stmt.close();
          con.close();
      }

        return"salarycalf";
        
}
    
    @RequestMapping("/salarydisplay")
    public  String showform10(Model object1) throws SQLException
    {
        System.out.println("i am salarydisp");
        
        Connection con=null;
        PreparedStatement stmt=null;
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
stmt=con.prepareStatement("select * from salary where empid=?");  
stmt.setInt(1, Integer.parseInt(r));
ResultSet rs=stmt.executeQuery();
       while(rs.next())
       {
           
             object1.addAttribute("empid", rs.getString("empid"));
             
             
       }
        }
        
        
        
        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
        }
        
      finally
      {
          stmt.close();
          con.close();
      }
        return "salarydisplay";
}
    
    

}

    


