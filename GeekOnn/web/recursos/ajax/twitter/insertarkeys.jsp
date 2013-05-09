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
<%@ page import = "com.geekonn.twitter.*" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>
<% 
    String pin= request.getParameter("pini");
    System.out.println(pin);
    String k1="n24USls7lh8W2E2IjZRYAw";
    String k2="iKhcvByzUbb1b6SOeqaDaxgqY1JyXIhyfEdN2yrA";
    AccessToken accessToken = null;
    ConfigurationBuilder cb = new ConfigurationBuilder();
        cb.setDebugEnabled(true)
            .setOAuthConsumerKey("n24USls7lh8W2E2IjZRYAw")
            .setOAuthConsumerSecret("iKhcvByzUbb1b6SOeqaDaxgqY1JyXIhyfEdN2yrA");
    Twitter twitter = new TwitterFactory(cb.build()).getInstance();
    RequestToken requestToken = twitter.getOAuthRequestToken();
    if (pin.length() > 0){
                accessToken = twitter.getOAuthAccessToken(requestToken, pin);
    }else{
                // Si eres una aplicación de confianza (una multinacional por
                // ejemplo) no necesitas PIN, por eso aparece esta línea
                accessToken = twitter.getOAuthAccessToken(requestToken);
        }
        System.out.println("Obtenido el access token.");
        System.out.println("Access token: " + accessToken.getToken());
        System.out.println("Access token secret: " + accessToken.getTokenSecret());
%>    
<%}%>