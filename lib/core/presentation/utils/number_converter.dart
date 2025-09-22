/// أداة تحويل الأرقام العربية إلى إنجليزية
class NumberConverter {
  /// خريطة تحويل الأرقام العربية إلى إنجليزية
  static const Map<String, String> _arabicToEnglish = {
    '٠': '0',
    '١': '1',
    '٢': '2',
    '٣': '3',
    '٤': '4',
    '٥': '5',
    '٦': '6',
    '٧': '7',
    '٨': '8',
    '٩': '9',
  };

  /// تحويل الأرقام العربية إلى إنجليزية
  static String convertArabicToEnglish(String input) {
    String result = input;
    _arabicToEnglish.forEach((arabic, english) {
      result = result.replaceAll(arabic, english);
    });
    return result;
  }

  /// التحقق من أن النص يحتوي على أرقام فقط (عربية أو إنجليزية)
  static bool isNumeric(String input) {
    final converted = convertArabicToEnglish(input);
    return RegExp(r'^[0-9]+$').hasMatch(converted);
  }

  /// تنظيف النص لاحتوائه على أرقام إنجليزية فقط
  static String cleanNumericInput(String input) {
    // تحويل الأرقام العربية إلى إنجليزية
    String cleaned = convertArabicToEnglish(input);

    // إزالة أي أحرف غير رقمية
    cleaned = cleaned.replaceAll(RegExp(r'[^0-9]'), '');

    return cleaned;
  }
}
