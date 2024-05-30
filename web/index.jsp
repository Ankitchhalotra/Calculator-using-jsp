<%-- 
    Document   : index
    Created on : 05-Jan-2024, 6:02:50 pm
    Author     : ankit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{
                background-color: lightpink;
            }
            .cal{
              text-align: center; 
              background-color: blueviolet;
              margin: 180px;
            }
            .cal input{
               background-color: blueviolet; 
            }
            
        </style>
    </head>
    <body> 
        <div class="cal">
      <form action="index.jsp" method="post">
        <input type="text" name="num1">
        <input type="text" name="num2">
        <br>
        <br>
        <input type="submit" value="ADDTION" name="btn">
        <input type="submit" value="SUBTRACT" name="btn">
        <input type="submit" value="MULTIPLICTION" name="btn"><br>
        <input type="submit" value="DIVISION" name="btn">
        <input type="reset" value="RESET">
        </form>
        </div>
    </body>
    <% 
        //Scriptlet tag
        
    String s1 = request.getParameter("num1");
    String s2 = request.getParameter("num2");
    String btn = request.getParameter("btn");
    double res=0;
    
    if (s1 != null && s2 != null) {
       double a = Double.parseDouble(s1);
       double b = Double.parseDouble(s2);
       
       
       if(btn.equals("ADDTION")){
        res = add(a,b);
        } else if(btn.equals("SUBTRACT")){
        res = subtract(a,b);
        } else if(btn.equals("MULTIPLICTION")){
        res = multiply(a,b);
        } else if(btn.equals("DIVISION")){
        res = divide(a,b);
        }  
    }
%>


<%! 
    // Declaration tag
    double add(double num1, double num2) {
        return num1 + num2;
    }

    double subtract(double num1, double num2) {
        return num1 - num2;
    }

    double multiply(double num1, double num2) {
        return num1 * num2;
    }

    double divide(double num1, double num2) {
        if (num2 != 0) {
            return num1 / num2;
        } else {
            return Double.NaN; 
        }
    }
%>

    <%= 
   //expression tag
   
   "Result is "+res
   
%>
</html>
        





