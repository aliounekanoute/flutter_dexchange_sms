[![Dexchnage SMS](https://img.shields.io/badge/dexchange--sms-api-blue)](https://dexchange-sms.com) [![Flutter Dexchnage SMS](https://img.shields.io/badge/flutter__dexchange__sms-v0.0.1-orange)](https://pub.dev/packages/flutter_dexchange_sms)

# Flutter Dexchange SMS

A flutter package for sending SMS messages using the Dexchange SMS API

## Features

- Send SMS Message
- Send a one-time password (OTP)
- Verify OTP

## Installation

1. Add the latest version of package to your pubspec.yaml (and run ```flutter pub get flutter_dexchange_sms```):
```yaml
dependencies:
    flutter_dexchange_sms: ^0.0.3
```

2. Import the package and use it in your Flutter App.

```dart
import 'package:flutter_dexchange_sms/flutter_dexchange_sms.dart';
```

## Usage

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

## Additional information

- You can find the documentation on this [link](https://documenter.getpostman.com/view/23992877/2s93ebTrC1#intro).
- Get your api key by creating an account on this [link](https://dexchange-sms.com/auth/login).
