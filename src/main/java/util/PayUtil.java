package util;

import com.alipay.api.AlipayApiException;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.domain.AlipayFundTransToaccountTransferModel;
import com.alipay.api.request.AlipayFundTransToaccountTransferRequest;
import com.alipay.api.response.AlipayFundTransToaccountTransferResponse;

public class PayUtil {
    //支付宝网关地址
    public static final String serverUrl = "https://openapi.alipaydev.com/gateway.do";
    //APPID
    public static final String appId = "2016102400751943";
    //开发者应用私钥
    public static final String privateKey = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCC3yn+Bs5Bg220WbIy8UFrILf8iS6X71PGHgHFD+p5jk3RtdpYSF8k+IB+q8ywM/Vfw8BKlLOVx4BfUJFTnlg7V0evoTV2Ev9a7e5C05x/MppeDnTCoidrq/tnjlipmqsGtNaho+PnikrinJ4WAnEL1ZyH85ss7SKd2LgrldrKItgJR8SgT6SH1waoklVda+SYodmDIdob/j+OoLDihDRFs3DIVhjhU+dghwEHHigZbpT/bcw3zfhEzrFUzoEGNccUrVvHFpPEbukZK3fKiZNU6f24zSHCYQ1akO99OxmFFoPbC/bu702HiQQ2lHnwYv1afRha7DCfu3EiATZc6mOrAgMBAAECggEAZnxQrCe0OcWskYF0dURM0JHMwyzCmiTHW+x/wkyWeB6ifkmE9YGnUJJyPcBYCNyHmTj4Su9sOy0CMKItTGhB/CZ7cuQxs4dpBVIyNY71jP6ZuHJlqU3GxSDnPc9RS3Bd4mCXe/mWLeo0foXbnqzGzle3vxdcO7BwXWAryaYOsh+8hfKdPsm2p7CybCZkcJOmP33vZ+jM+nmIw9vQu87+AE7Njb/CgNT5g4kbZGmDsyE2A5xVKcdb4fLgpGy7jZfXw0kkxkQTyXZ/o6hVZfUMf+2CmRAjS597bHcCudmAAZOLD6DLmvD9U26x9Vrp2iV4czv6evQiVzJJMcRNUI9msQKBgQC6uWqG6R/CwZianEeHc6t7KV/L0PRU7s+qrWYPFviJ4LzbeuH9edUs5atr3o3LKm8rJNrcdqjraqokG6+Mjl2jNb7OgYeSu+FxXdXaVG+QBdSYFfo0/CYqh903F1cwMVw7fAcv6QXyAnMAIDXuyIfz3iAZpTOwtnIk+g4u0obSLwKBgQCzbQThcsuS4BhxJtCfXoDCaCn8gftLoyDbqgcU9movs0M7NFjH6Qdrxl/sNBT5+eWt2QGHdmFZJM+hjFX0OiJlepYfS/WHi5Gphbjpxy0a6vO+nHSWgEhmCmg5aAObTDAZSZm01nYuPFRKZktkpvI4BXly1qYv01DHF8U5I1nTRQKBgQCa3Xt3x1QbQFvkJ6e/tPTNomQcdAKhiqvcABK8gy3BlQ6t7j4O8AQZR6ckQSJTFa+8FcYbwaKaFg5lAj1YEx+gZMwLFC0wSvlRACWE/jDFP8CyHtA1L8gr0CFuNsKOavH3OAfx+Y9/x/4/ZXe1wsXXQixXeMflUXxcJLSsqtk86wKBgH4yrJ8hTbvlcGuNgGjHYErcVsOqbKR7fS3jPg3pbzBTpnLq05Lv/O853NfWnfZgZMJNAn1Trw6zDHK0sPQRO4YinZovo+cNLIuOaUvMcpYfMQcdJgeA/OsAYOQXm4nMIXx3vutpeD/24NZfcqG9plnux8gU31h+Ca+usWIJ0jD9AoGBALmZAWGPes131siddFs3/LkDmlj26kA/MrAjCbuF7n5wz5awrTvlqW7qqUnIzU9E8OITjVhSwy257yzMa/wltoqgmUJ9UIJaA7II4Snf+qV1PArNZp1dFi/ujzicK68R0tKwZbT/2kdrNNQeNxVfkH9dEui0FiqOGhx55o2VWJoe";
    //支付宝公钥
    public static final String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnd8R1q4CxvwgWz+06VdYebPUgCjyb20bz7XRjMDCVmU2UNEipLxCB6NcXfpFjkd3AIqNoQgPpVlBz74h2N2v8vFUOOA5MSVCtl4/hHRe8hOIG2FeXCDMNcqivNqwsDmjkTBaf3s/F2HcYt1+bUn8U18g/2DO6bScrX6xr6s9UOfqjYykm03INogFA2xSvMiS8Vy7Aw7Tr7ATarkGztmFwCz2tzudStDtd1VgQIDZyHMv9rIbiHL448m2RF9BCu1/UbU0FySY5tFiMiRQ5KBJEpkinN9RGNpf+RfGsOEeGkG1VREsCBhV62hDTSXW/bP2jfy0Rv5+12bTmIzOw+9k/wIDAQAB";
    //参数返回格式
    public static final String format = "json";
    //商户生成签名字符串所使用的签名算法类型
    public static final String signType = "RSA2";
    //请求和签名使用的字符编码格式
    public static final String charset = "utf-8";

    //支付
    public static boolean pay(String orderId,String orderPrice,String payAccount,String payName) throws AlipayApiException {
        //初始化alipayClient
        DefaultAlipayClient alipayClient = new DefaultAlipayClient(serverUrl, appId, privateKey, format, charset, alipay_public_key, signType);
        AlipayFundTransToaccountTransferRequest request = new AlipayFundTransToaccountTransferRequest();
        AlipayFundTransToaccountTransferModel model = new AlipayFundTransToaccountTransferModel();
        //设置订单号
        model.setOutBizNo(orderId);
        //设置总金额
        model.setAmount(orderPrice);
        //设置为单笔转账  1、ALIPAY_USERID：支付宝账号对应的支付宝唯一用户号。以2088开头的16位纯数字组成。    2、ALIPAY_LOGONID：支付宝登录号，支持邮箱和手机号格式。
        model.setPayeeType("ALIPAY_LOGONID");
        //设置收款人
        model.setPayeeAccount(payAccount);
        //设置收款人姓名
        model.setPayerRealName(payName);

        request.setBizModel(model);
        AlipayFundTransToaccountTransferResponse response = alipayClient.execute(request);
        if(response.isSuccess()){
            System.out.println("调用成功");
            return true;
        } else {
            System.out.println("调用失败");
            return false;
        }
    }
}
