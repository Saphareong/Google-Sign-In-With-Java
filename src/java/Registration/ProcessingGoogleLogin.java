/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Registration;

//import com.google.api.client.auth.openidconnect.IdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.gson.GsonFactory;
//import com.google.api.client.http.javanet.NetHttpTransport;
//import com.google.api.client.json.gson.GsonFactory;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Collections;



public class ProcessingGoogleLogin
{
    //THIS IS MY CLIENT ID USE YOUR MATE :D
    private final String CLIENT_ID = "504609938567-q3fehf31clk9ki0k0idf80kntndmaigf.apps.googleusercontent.com";
    private String email, name, picUrl, gender;
    private boolean ToiKhongGioiOOP = true;
    
    public ProcessingGoogleLogin(String id_Token) throws GeneralSecurityException, IOException
    {
        //GoogleIdTokenVerifier purify = new GoogleIdTokenVerifier.Builder(new NetHttpTransport(), new )
        /*GoogleIdTokenVerifier purifier = new GoogleIdTokenVerifier.Builder(new NetHttpTransport(), new GsonFactory())
                .setAudience(Collections.singletonList(CLIENT_ID)).build(); //google doc suck using the community shit instead. Purifier 1 failed to do so*/
        
        
        
        GoogleIdTokenVerifier purifier = new GoogleIdTokenVerifier.Builder(new NetHttpTransport(), new GsonFactory())
                .setAudience(Collections.singletonList(CLIENT_ID)).build();
        
        
        GoogleIdToken banhkem = purifier.verify(id_Token);
        
        if(purifier.verify(banhkem))
        {
            GoogleIdToken.Payload payday2 = banhkem.getPayload();
            this.email = payday2.getEmail();
            this.name = (String) payday2.get("name");
            this.picUrl = (String)payday2.get("picture");
            this.gender = (String)payday2.get("gender");
        }
        else
        {
            this.ToiKhongGioiOOP = false;
        }
    }

    public String getEmail()
    {
        return email;
    }

    public String getName()
    {
        return name;
    }

    public boolean isToiKhongGioiOOP()
    {
        return ToiKhongGioiOOP;
    }
    
    public String getPicUrl()
    {
        return picUrl;
    }

    public String getGender()
    {
        return gender;
    }
    
}
    
