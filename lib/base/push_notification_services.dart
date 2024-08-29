import 'package:googleapis_auth/auth_io.dart';

class FirebaseAccessToken {
  static String firebaseMsgScope =
      "https://www.googleapis.com/auth/firebase/firebase.messaging";
  Future<String> getToken() async {
    final client = await clientViaServiceAccount(
        ServiceAccountCredentials.fromJson(
  /*
   Replace the placeholder JSON content in the code with the actual content
   from the generated private key JSON file.
  */
//--------------------replace here--------------------//
{
  "type": "service_account",
  "project_id": "event-family",
  "private_key_id": "1681243be8b98e67d2ecfdfe164b72f8b77b0869",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC1OIEbiQqZlGUy\n000o47CzyutyOkZRtt3dbl0355UEuDXSpGryh1+i4YSDAVT29iXvpJDrX0x+LtuA\nYNYIjBW5k/qAhFN6xucodNHPR59+/8z4Ok42TtyfnyFDjkfNJlO+vh9AyiK8DsYw\n6Cny+4jyNBqvo/urce+EyZahf3hZZcTA1VLbZGA6abhOb1x8L+rI3l+MHtcXUSn5\nSuBS2A9xrA1DWVBc7sYWLYYPPjhGWftVx0N1W9NnhyQE0/8h4EjyAtWFaDQ/jODZ\nAhH7RY1ypZafCmlP+6/NoLcptDlcSuvEq30ItQXdDFSaizEshyampFmjxbiypkvI\neBKjYxuxAgMBAAECggEAAYca64kBul66Za3LWjtlK3bb+kgMfLbecvXxuj1tD6+f\n4Ik7T5UdlMly7QnPVg+oLTeFcz6H7g5mElR+qW7I5hodxASZkZDotPobJLS1XwQ4\nDaWsMCAFEyFrzd5+s3eNwC9pIwoxNcWoHRRv+hjtxCD1UqK+xei9fLCYYP8qnBJQ\nbWS4/CW/URIcZQts3x/rH4eOZ+SvIWLTmltBOdWdZZaZ10GuvcnHx7NsiPoRrhFV\n76fWXCsuoi1uQdSMwJxr/+O3y4Bqju4p18jqIYM6040gdb91Enar+h/zgLDowXif\nwoRI3U7o0LSpHtKJgZPnQDwBZjLS5geH5cryHoFgOQKBgQDk49B/TsGlIIvfZNDm\nHJHcrjJP52c/usAWEfzJfSJykD21aVt0ZiIUtDFNZWopNsDtg67kxh3jc8WDOm0P\nO/lSKMKT+h7/GOt4Za1tvVAbeXI2hVueU1lJa11YYM1o51DAT5OwEpXt1EIhD/6v\nct9s6xgu2tIKn69ooyEnYTo7bQKBgQDKr09ACHlHHdaucbH2PAlv5RJ9tkhgbBvb\nDvy7vtjzqg/aWaIeATb/7dJpIReikvMsZ9yXNdM6JyiFkFdgas1tuO7aWOoxg+R3\niIZ9lg88U5NIhxJDucyXl9ArSYWJKB344x4cYfRomoYrcMKQ9mVQfRu+RFS03FJu\nsgnP8YoS1QKBgQCixrzM/KZMF4RBf4HsU98LkLppBsjvkpDuYSZj6GDqFlg8Pkvy\n0HtmO+tf/kJsQusbPm3PdnFlAz0woQlULzOU0TXnZJZMll1HBxA6HcrtbwXhbh+E\nzgOOahM9OcJ62x4bVbxTGDSVqUDKIITgIxJvdBWDpMyBD6UABhsa1VNDVQKBgB8h\nghihtI75xEmS6PSbEBABrS9l2gQFVtn0mVj03Tm/uyOcdMwK/7mbe5/uF0U/MN53\nLWiEOedKsGyjWOhUPy1FJFqhIYdtbJ/3dkC/1aM8avjO1j1UwlneVXjwl/QTF1ds\n+uj9Gp8ebNErRpchYTpVnPdCY4hL9tVNvzgTL1PpAoGAc2SzpaK4jw3Q+W8oLWYh\nx4FuwJlqiTmGvJtEQVEt4mrm/7TxW5itlx9Ytw6FdWz2ugM7zEc4aTmqZoJ0TGzf\nHS8pGKPGfITcBGEKabOUCYipRTPFAtryczRJMvbJvPX0Yk4w6qkwwqPMmsQ8OU3T\nNMP+B5CQ/uF57Az5Hn/Ncbg=\n-----END PRIVATE KEY-----\n",
  "client_email": "fcm-admin@event-family.iam.gserviceaccount.com",
  "client_id": "117670961198118063933",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/fcm-admin%40event-family.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}
//---------------------------------------------------//
        ),
        [firebaseMsgScope]);
    final token = client.credentials.accessToken.data;
    return token;
  }
}