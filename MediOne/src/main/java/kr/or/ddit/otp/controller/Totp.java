package kr.or.ddit.otp.controller;
import dev.samstevens.totp.secret.DefaultSecretGenerator;
import dev.samstevens.totp.secret.SecretGenerator;
import dev.samstevens.totp.time.SystemTimeProvider;
import dev.samstevens.totp.time.TimeProvider;
import dev.samstevens.totp.code.CodeGenerator;
import dev.samstevens.totp.code.CodeVerifier;
import dev.samstevens.totp.code.DefaultCodeGenerator;
import dev.samstevens.totp.code.DefaultCodeVerifier;
import dev.samstevens.totp.code.HashingAlgorithm;
import dev.samstevens.totp.exceptions.QrGenerationException;
import dev.samstevens.totp.qr.QrData;
import dev.samstevens.totp.qr.QrGenerator;
import dev.samstevens.totp.qr.ZxingPngQrGenerator;
import static dev.samstevens.totp.util.Utils.getDataUriForImage;

class Totp {
    private String dataUrl;
    private String secret;

    public String generateSecret (String email) {
        SecretGenerator secretGenerator = new DefaultSecretGenerator();
        secret = secretGenerator.generate();
        
        QrData data = new QrData.Builder()
        .label(email)
        .secret(secret)
        .issuer("MED1ONE")
        .algorithm(HashingAlgorithm.SHA1)
        .digits(6)
        .period(30)
        .build();

        byte[] imageData;

        QrGenerator generator = new ZxingPngQrGenerator();
        try {
            imageData = generator.generate(data);
        }
        catch (QrGenerationException e) {
            e.printStackTrace();
            return "";
        }

        String mimeType = generator.getImageMimeType();

        dataUrl = getDataUriForImage(imageData, mimeType);

        return secret;
    }
    
    public boolean verifyQR (String key) {
        TimeProvider timeProvider = new SystemTimeProvider();
        CodeGenerator codeGenerator = new DefaultCodeGenerator();
        CodeVerifier verifier = new DefaultCodeVerifier(codeGenerator, timeProvider);

        return verifier.isValidCode(secret, key);
    }

    public String getDataUrl() {
        return dataUrl;
    }
 }
