# Usage

```dart
import 'package:flutter_dexchange_sms/flutter_dexchange_sms.dart';

FlutterDexchangeSms dexchangeSms = FlutterDexchangeSms(apiKey: 'YOUR API KEY');

// To send an sms

try {
    SendSmsResponse response = dexchangeSms.sendSms(request: SendSmsRequest(
        number: ["221777460452", "777460452"],
        signature: "DSMS",
        content: "YO\nCV ?"
    ));
} on DexchangeApiException catch(e) {
    print(e.toString()); // Handle the exception here
}

// To send otp sms

try {
    SendOTPResponse response = dexchangeSms.sendOTP(request: SendOTPRequest(
        number: "221777460452",
        service: "DEMO",
        lang: "en" // this field is optional
    ));
} on DexchangeApiException catch(e) {
    print(e.toString()); // Handle the exception here
}

// To verifty OTP

try {
    SendVerifyOTPResponse response = dexchangeSms.sendVerifyOTP(request: SendVerifyOTPRequest(
        number: "221777460452",
        service: "DEMO",
        otp: "214045"
    ));
} on DexchangeApiException catch(e) {
    print(e.toString()); // Handle the exception here
}

```
