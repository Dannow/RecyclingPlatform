package util;

import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import org.springframework.stereotype.Component;

@Component
public class SendMessageUtil {
    //阿里云accessKeyId
    private static final String accessKeyId="LTAI4FcgUHX77gFRFMbupA1H";
    //阿里云accessSecret
    private static final String accessSecret="MOeXYzWmXDIerhz02zDywDhKsJb64K";
    //阿里云的签名名称
    private static final String signName="回收网";
    //阿里云模版CODE
    private static final String templateCode="SMS_184831471";

    //发送短信
    public static void sendMsg(String userPhone,String code){
        DefaultProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessSecret);
        IAcsClient client = new DefaultAcsClient(profile);

        //设置参数
        CommonRequest request = new CommonRequest();
        request.setMethod(MethodType.POST);
        request.setDomain("dysmsapi.aliyuncs.com");
        request.setVersion("2017-05-25");
        request.setAction("SendSms");
        request.putQueryParameter("RegionId", "cn-hangzhou");
        request.putQueryParameter("PhoneNumbers", userPhone);
        request.putQueryParameter("SignName", signName);
        request.putQueryParameter("TemplateCode", templateCode);
        request.putQueryParameter("TemplateParam","{\"code\":"+code+"}");
        try {
            CommonResponse response = client.getCommonResponse(request);
            System.out.println(response.getData());
        } catch (ServerException e) {
            e.printStackTrace();
        } catch (ClientException e) {
            e.printStackTrace();
        }
    }
}
