

import 'package:easy_localization/easy_localization.dart';

class AppValidation {}

extension EamailValidation on AppValidation {
  static RegExp forPasswo = RegExp(
    (r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'),
  );

  String? firstNameValidator(String value) {
    if (value.isEmpty) {
      return 'kFNameNullError'.tr();
    } else if (value.length < 3) {
      return 'kFNameShortError'.tr();
    } else if (!RegExp(r"^[a-zA-Z]+$").hasMatch(value)) {
      return 'kFNameDigitError'.tr();
    }

    return null;
  }

  String? lastNameValidator(String value) {
    if (value.isEmpty) {
      return 'kLNameNullError'.tr();
    } else if (value.length < 3) {
      return 'kLNameShortError'.tr();
    } else if (!RegExp(r"^[a-zA-Z]+$").hasMatch(value)) {
      return 'kLNameDigitError'.tr();
    }

    return null;
  }

  String? userIdOrEmialIdValodator(String value) {
    if (value.isEmpty) {
      return 'kLUserIdOrEmailIdError'.tr();
    } else if (value.length < 3) {
      return 'kLUserIdOrEmailIdShortError'.tr();
    }
    return null;
  }

  String? userIdValidator(String value) {
    if (value.isEmpty) {
      return 'kLUserIdError'.tr();
    } else if (value.length < 3) {
      return 'KLUserIdShortError'.tr();
    }

    return null;
  }

  String? helpQueryValidator(String value) {
    if (value.isEmpty) {
      return 'Fieldsrequired'.tr();
    } else if (value.length < 15) {
      return 'tellusDetail'.tr();
    }

    return null;
  }

  String? emailValidator(String value) {
    final RegExp emailValidatorRegExp =
        RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value.isEmpty) {
      return 'kEmailNullError'.tr();
    } else if (!emailValidatorRegExp.hasMatch(value)) {
      return 'kInvalidEmailError'.tr();
    }
    return null;
  }

  String? phoneValidator(String value) {
    int? isZero = int.tryParse(value);
    if (value.isEmpty) { 
      return 'kContactNullError'.tr();
    } else if (value.length < 5 || value.length > 15) { 
      return 'kValidContactError'.tr();
    }
    //  else if (!RegExp(
    //         r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)')
    //     .hasMatch(value)) {
    //   log("RegExp");
    //   return 'kValidContactError'.tr();
    // }
    else if (value.contains(' ')) { 
      return 'kValidContactError'.tr();
    } else if (value.startsWith("0") || isZero == 0) { 
      return 'kValidContactError'.tr();
    }
    return null;
  }

  String postalCodeValidator(String value) {
    if (value.isEmpty) {
      return 'aPostalCodeNullError'.tr();
    } else if (value.length < 6) {
      return 'aPostalcodeInvalidError'.tr();
    }
    return "";
  }

  String landmarkValidator(String value) {
    if (value.isEmpty) {
      return 'aLandmarkNullError'.tr();
    }

    return "";
  }

  String cityValidator(String value) {
    if (value.isEmpty) {
      return 'aCityNullError'.tr();
    }
    return "";
  }

  String stateValidator(String value) {
    if (value.isEmpty) {
      return 'aStateNullError'.tr();
    }
    return "";
  }

  String addressValidator(String value) {
    if (value.isEmpty) {
      return 'aFullAddressNullError'.tr();
    }
    return "";
  }

  String? passwordValidator(String value) {
    if (value.isEmpty) {
      return 'kPassNullError'.tr();
    } else if (value.length < 8) {
      return 'kShortPassError'.tr();
    } else if (!forPasswo.hasMatch(value)) {
      return 'kAplphaPassError'.tr();
    }
    return null;
  }

  String? passwordValidatorLogin(String value) {
    if (value.isEmpty) {
      return 'kPassNullError'.tr();
    }
    // else if (value.length < 8) {
    //   return 'kShortPassError'.tr();
    // }
    return null;
  }

  String? confirmPasswordValidator(String value, String passwordVal) {
    if (value.isEmpty) {
      return 'kCPasswordNullError'.tr();
    } else if (passwordVal != value) {
      return 'kMatchPassError'.tr();
    }
    return null;
  }

  String? setPasswordValidator(String value, String passwordVal) {
    if (value.isEmpty) {
      return 'kNewPassNullError'.tr();
    } else if (passwordVal.isEmpty) {
      return 'kCPasswordNullError'.tr();
    } else if (passwordVal.length < 8 || value.length < 8) {
      return 'kMin8PassError'.tr();
    } else if (passwordVal != value) {
      return 'kMatchPassError'.tr();
    } else if (!forPasswo.hasMatch(value)) {
      return 'kAplphaPassError'.tr();
    }
    return null;
  }

  String? otpCodeValidator(String value) {
    if (value.isEmpty) {
      return 'kValidOTPtError'.tr();
    } else if (value.length < 4) {
      return 'kValidLengOTPtError'.tr();
    }

    return null;
  }

  String? newPasswordValidator(String value) {
    if (value.isEmpty) {
      return 'kNewPassNullError'.tr();
    } else if (value.length < 6) {
      return 'kShortPassError'.tr();
    }
    return null;
  }

  String? oldPasswordValidator(String value) {
    if (value.isEmpty) {
      return 'kOldPassNullError'.tr();
    }
    // else if (value.length < 6) {
    //   return 'kShortPassError'.tr();
    // }
    return null;
  }

  String? fullNameValidator(String value) {
    if (value.isEmpty) {
      return 'kNamelNullError'.tr();
    } else if (value.length < 3) {
      return 'kFullNameShortError'.tr();
    }

    return null;
  }

  String messageValidator(String value) {
    if (value.isEmpty) {
      return 'kMessageNullError'.tr();
    }

    return "";
  }

  String specificationValidator(String value) {
    if (value.isEmpty) {
      return 'specificationNullError'.tr();
    }
    return "";
  }
}
