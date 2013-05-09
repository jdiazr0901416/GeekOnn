<%-- 
    Document   : insertarkeys
    Created on : 09-may-2013, 4:41:29
    Author     : Julio
--%>
<% 
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires", 0);
String userName = (String)session.getAttribute("sessionUsername");
if(userName == null){
    response.sendRedirect("index.jsp");
}else{%>
<%int idUsuario = Integer.valueOf("" + session.getAttribute("sessionIdUsuario"));%>
<%@ page import = "com.geekonn.system.SentenciasSQL" %>
<%@ page import = "twitter4j.auth.AccessToken"%>
<%@ page import = "twitter4j.auth.RequestToken"%>
<%@ page import = "twitter4j.conf.ConfigurationBuilder"%>
<%@ page import = "twitter4j.Twitter"%>
<%@ page import = "twitter4j.*"%>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "com.geekonn.twitter.*" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>
<% 
    String pin= request.getParameter("pin");
    System.out.println(pin);
        SentenciasSQL sk1=new SentenciasSQL();
        ResultSet rk1= null;
        SentenciasSQL sk2=new SentenciasSQL();
        ResultSet rk2= null;
        rk1=sk1.obtenerk1(idUsuario);
        String k1= rk1.getString("'k1'");
        rk2=sk2.obtenerk1(idUsuario);
        String k2= rk2.getString("'k2'");
        System.out.println(k1);
        System.out.println(k2);
        Object token =request.getParameter("token");
        RequestToken requestToken = (RequestToken)token;
        ConfigurationBuilder cb = new ConfigurationBuilder();
        cb.setDebugEnabled(true)
            .setOAuthConsumerKey(k1)
            .setOAuthConsumerSecret(k2);
        Twitter twitter = new TwitterFactory(cb.build()).getInstance();
        System.out.println("Obtenido request token.");
        System.out.println("Request token: " + requestToken.getToken());
        System.out.println("Request token secret: " + requestToken.getTokenSecret());
        AccessToken accessToken = null;
        accessToken = twitter.getOAuthAccessToken(requestToken, pin);
        System.out.println("Obtenido el access token.");
        System.out.println("Access token: " + accessToken.getToken());
        System.out.println("Access token secret: " + accessToken.getTokenSecret());
        System.out.println(requestToken);
        
        
%>    
<%}%>