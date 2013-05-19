/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geekonn.twitter;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.SQLException;
import twitter4j.conf.ConfigurationBuilder;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.auth.AccessToken;
import twitter4j.auth.RequestToken;
import com.geekonn.system.SentenciasSQL;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
 
/**
 * @author Antonio Suárez Cortés
 */
public class TwitterJ implements Serializable
{
    /**
     * @param args
     * @throws IOException
     * @throws TwitterException
     */
 public TwitterJ() throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException {
    }
    public void damek1 (int userId)throws IOException, TwitterException, SQLException,ClassNotFoundException, IllegalAccessException,InstantiationException{
        ConfigurationBuilder cb = new ConfigurationBuilder();
        cb.setDebugEnabled(true)
            .setOAuthConsumerKey("n24USls7lh8W2E2IjZRYAw")
            .setOAuthConsumerSecret("iKhcvByzUbb1b6SOeqaDaxgqY1JyXIhyfEdN2yrA");
        Twitter twitter = new TwitterFactory(cb.build()).getInstance();
        System.out.println("imprimirTwitter"+twitter);
        /* *************************************************************************** */
        
        // Si están seteados el Token y el TokenSecret la siguiente
        // linea lanzará IllegalStateException
        RequestToken requestToken = twitter.getOAuthRequestToken();
        System.out.println("Obtenido request token.");
        System.out.println("Request token: " + requestToken.getToken());
        System.out.println("Request token secret: " + requestToken.getTokenSecret());
        AccessToken accessToken = null;
        String fichero="hola";
        
        /*ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(fichero));
        oos.writeObject(twitter);
        oos.close();
        
        ObjectInputStream ois = new ObjectInputStream(new FileInputStream(fichero));
        Object aux = ois.readObject();
        System.out.println("debe ser igual"+aux);  // Se escribe en pantalla el objeto
        aux = ois.readObject();
        ois.close();*/
        /*BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        while (null == accessToken)
        {*/
            String osName = System.getProperty("os.name");
            String url = requestToken.getAuthorizationURL();
            System.out.println("La siguiente URL será abierta en su navegador:");
            System.out.println(requestToken.getAuthorizationURL());
            if (osName.contains("Windows"))
                Runtime.getRuntime().exec("rundll32 url.dll,FileProtocolHandler " + url);
            else
                if (osName.contains("Mac OS"))
                    Runtime.getRuntime().exec("open " + url);
                else
                    if (osName.indexOf("nix") >= 0 || osName.indexOf("nux") >= 0)
                    {
 
                        String[] browsers =
                        { "epiphany", "firefox", "mozilla", "konqueror", "netscape", "opera", "links", "lynx" };
 
                        StringBuffer cmd = new StringBuffer();
                        for (int i = 0; i < browsers.length; i++)
                            cmd.append((i == 0 ? "" : " || ") + browsers[i] + " \"" + url + "\" ");
 
                        Runtime.getRuntime().exec(new String[]
                        { "sh", "-c", cmd.toString() });
                    }
            /*System.out.print("Introduce el PIN y pulsa enter.\n[PIN]: ");
            String pin = br.readLine();
 
            if (pin.length() > 0)
                accessToken = twitter.getOAuthAccessToken(requestToken, pin);
            else
                // Si eres una aplicación de confianza (una multinacional por
                // ejemplo) no necesitas PIN, por eso aparece esta línea
                accessToken = twitter.getOAuthAccessToken(requestToken);
        }*/
        System.out.println("Obtenido el access token.");
        System.out.println("Access token: " + accessToken.getToken());
        System.out.println("Access token secret: " + accessToken.getTokenSecret());
    }

}