class ErrorMapper {
  static const String SERVER_BUSY = "Server sedang sibuk. Mohon coba beberapa saat lagi!";
  static const String TIME_OUT = "Sepertinya kamu udah nunggu lama, coba request lagi yaa";
  static const String NO_INTERNET = "Mohon cek koneksi internet anda!";
  static const String UNKNOWN_ERROR = "Terjadi kesalahan. Mohon coba beberapa saat lagi!";
  static const String OTP_FAIL = "Tidak dapat melakukan proses OTP. Mohon coba beberapa saat lagi!";

  static String mapError(String errorMessage) {
    if (RegExp("<html>", caseSensitive: false, multiLine: true).hasMatch(errorMessage)) {
      return SERVER_BUSY;
    } else if (RegExp("The request took longer than", caseSensitive: false, multiLine: true).hasMatch(errorMessage)) {
      return TIME_OUT;
    } else if (RegExp("Failed host lookup|socket", caseSensitive: false, multiLine: true).hasMatch(errorMessage)) {
      return NO_INTERNET;
    } else if (RegExp("is not a subtype of", caseSensitive: false, multiLine: true).hasMatch(errorMessage)) {
      return UNKNOWN_ERROR;
    } else if (RegExp("argument must", caseSensitive: false, multiLine: true).hasMatch(errorMessage)) {
      return UNKNOWN_ERROR;
    } else if (RegExp("NoneType", caseSensitive: false, multiLine: true).hasMatch(errorMessage)) {
      return UNKNOWN_ERROR;
    } else if (RegExp("The requested resource", caseSensitive: false, multiLine: true).hasMatch(errorMessage)) {
      return OTP_FAIL;
    } else if (RegExp("object has no attribute", caseSensitive: false, multiLine: true).hasMatch(errorMessage)) {
      return UNKNOWN_ERROR;
    } else if (RegExp("HttpException", caseSensitive: false, multiLine: true).hasMatch(errorMessage)) {
      return NO_INTERNET;
    }

    return errorMessage;
  }
}