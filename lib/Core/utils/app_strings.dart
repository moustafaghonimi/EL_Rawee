abstract class AppStrings {
  //ToDo:All Strings

  static const String appName = "Dalel",
      //!On Boarding Strings
      skip = "Skip",
      next = "Next",
      createAccount = "Create Account",
      loginNow = "Login Now",
      //!Auth Strings
      welcome = "Welcome!",
      welcomeBack = "Welcome Back!",
      fristName = "First Name",
      lastName = "Last Name",
      emailAddress = "Email Address",
      password = "Password",
      iHaveAgreeToOur = "I have agree to our ",
      termsAndCondition = "Terms and Condition",
      signUp = "Sign Up",
      signIn = "Sign In",
      alreadyHaveAnAccount = "Already have an account ? ",
      dontHaveAnAccount = "Don’t have an account ? ",
      forgotPassword = "Forgot Password ?",
      validPasswordEmpty = 'Please enter Password',
      validPassword =
          'Password must be at least 8 characters long,\ninclude an uppercase letter, a number,\n and a special character.\nexample: Mostafa123@',
      validEmail =
          'Please enter valid Email address \nexample: mostafaGhonimi@gmail.com',
      validEmailEmpty = 'Please enter Email',
      validFirstName = 'Please enter First Name',
      validLastName = 'Please enter Last Name',

      //!RGEX Strings
      emailRegex =
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&\'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
      passwordRegex =
          r"^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$",

      //!snack bar messages
      signUpSuccess =
          'Sign Up Success\nPlease check your email to verify your account',
      termsAndConditionMessage = 'Please agree to the terms and conditions',

      //!Home Strings
      recommendations = "Recommendations",
      about = "About",
      wars = "Wars",
      //!Search Strings
      searchDeepIntoTheHistory = "Search deep into the history",
      recent = "Recent",
      //!Profile Strings
      profile = "Profile",
      account = "Account",
      editProfile = "Edit Profile",
      notification = "Notification",
      general = "General",
      settings = "Settings",
      security = "Security",
      privacyPolicy = "Privacy Policy",
      logOut = "Log Out",
      //!Bazar
      bazar = "Bazar",
      historicalPeriods = "Historical periods",
      historicalCharacters = "Historical Characters",
      historyBooks = "History Books",
      historicalSouvenirs = "Historical Souvenirs",
      //!Cart
      myCart = "My Cart",
      totalPayment = "Total Payment",
      checkoutNow = "Checkout Now",
      //!Payment Strings
      checkoutScreen = "Checkout Screen",
      deliveryAddress = "Delivery Address",
      change = "Change",
      items = "1 items",
      selectedProduct = "Selected Product",
      paymentMethod = "Payment Method",
      confirmPayment = "Confirm Payment",
      orderSuccess = "Order Success",
      thankYou =
          "Thank you for your order here and your package will be sent to your address very quickly and fast good product",
      backToHome = "Back To Home",
      //!Forgot password
      forgotPasswordPage = "Forgot Password",
      sendResetPasswordLink = "Send Reset Passwrod Link",
      verificationNow = "Verification Now",
      resendCode = "Resend Code",
      verifyAccount = "Verify Account",
      enter4DigitCodeWeHaveSentTo = "Enter 4 digit code we have sent to ",
      haventReceivedVerificationCode = "Haven’t received verification code?";
}

abstract class FireBaseStrings {
  static const String historicalPeriods = "historical_periods";
  static const String name = "name";
  static const String description = "description";
  static const String image = "image";
  static const String wars = "wars";
}
