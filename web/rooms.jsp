<%@page import="java.util.List"%>
<%@page import="com.mii.entity.Message"%>
<%
    String sender = session.getAttribute("sender").toString();
    if(sender==null){
        response.sendRedirect("index.jsp");
    }
%>

<html>
    <head>
        <title>
             Chat Rooms
        </title>
    </head>
    <body>
        
        <%
    List<Message> messages = (List<Message>) application.getAttribute("messages");
    if(messages!=null){
    for(Message msg:messages){
        out.println(msg.getSender()+" : " + msg.getText() + "<br/>");
    }
    }
        %>
    <h3> Chat Rooms </h3>
        <form action="send" method="post">
        <p>Pesan: <input type="text" size="30" name="pesan"/>
            <input type="submit" value="Kirim"/>
            
        </p>
       <a href="logout">Logout</a>
    </form>
</body>
</html>
