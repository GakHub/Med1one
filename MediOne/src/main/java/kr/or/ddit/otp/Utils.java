package kr.or.ddit.otp;
	import java.security.SecureRandom;

import org.apache.commons.codec.binary.Base32;
import org.apache.commons.codec.binary.Hex;

import de.taimos.totp.TOTP;
	
public class Utils {
	
//	public static void main(String[] args) {  //시크릿 키 생성하는 곳
//		String secretKey = generateSecretKey();
//		System.out.println("Generated Secret Key: " + secretKey);
//	}
	
	public static String generateSecretKey() { // 랜던 키 생성함 -> 인코딩함 -> 비밀키로 변환
        SecureRandom random = new SecureRandom();
        byte[] bytes = new byte[20];
        random.nextBytes(bytes);
        Base32 base32 = new Base32();
        return base32.encodeToString(bytes);
    }

    public static String getTOTPCode(String secretKey) { //비밀키 디코딩 -> 배열 값 얻음
        Base32 base32 = new Base32();
        byte[] bytes = base32.decode(secretKey);
        String hexKey = Hex.encodeHexString(bytes);
        return TOTP.getOTP(hexKey);
    }
}
