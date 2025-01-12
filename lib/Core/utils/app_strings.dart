abstract class AppStrings {
  //ToDo:All Strings

  static const String appName = "RAWEE",
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
      validPasswordEmpty = 'Please enter Password 🙈',
      validPassword =
          'Password must be at least 8 characters long,\ninclude an uppercase letter, a number,\n and a special character.\nexample: Mostafa123@',
      validEmail =
          'Please enter valid Email address \nexample: mostafaGhonimi@gmail.com',
      validEmailEmpty = 'Please enter Email 💌',
      validFirstName = 'Please enter First Name 1️⃣',
      validLastName = 'Please enter Last Name ✌',

      //!RGEX Strings
      emailRegex =
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&\'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
      passwordRegex =
          r"^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$",

      //!snack bar messages
      signUpSuccess =
          'Sign Up Success✔\nPlease check your email to verify your account🤳',
      verifieEmailMSG = 'Please check your email to verify your account🤳',
      termsAndConditionMessage = 'Please agree to the terms and conditions 😏',

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
      haventReceivedVerificationCode = "Haven’t received verification code?",

      //!Terms And Condition
      termsAddres = "Terms and Conditions 📜",
      // termsAddres1 = "1.Introduction 📖",
      // termsAddres1Body =
      //     "Welcome to [App Name]! By using our app, you agree to these Terms and Conditions. Please read them carefully. Your access and use of the app are governed by this agreement. 🛡️",
      // termsAddres2 = "2. User Responsibilities 👤",
      // termsAddres2B =
      //     "Provide Accurate Information: Ensure all personal and historical details shared are truthful and accurate. 🧐\nRespect Others: Do not upload or share any content that is offensive, defamatory, or violates someone else's rights. 🚫🙅‍♂️\nPersonal Use Only: Use the app for its intended purpose and avoid any misuse or illegal activities. ⚖️",
      // termsAddres3 = "3. Privacy Policy 🔐",
      // termsAddres3B =
      //     "Your privacy is important to us. We collect, store, and process your personal and historical data as outlined in our Privacy Policy. 🛠️\n Data shared in the app will not be sold or shared with third parties without your consent. 🛡️✨ \n For detailed information, please review our Privacy Policy. 📜",
      // termsAddres4 = "4. Intellectual Property Rights 🏛️",
      // termsAddres4B =
      //     "All app content, including designs, features, and code, are the property of +201027561924. 📱👑 \n Users retain ownership of their shared historical and personal details but grant the app a license to use them to provide services. 🔄",
      // termsAddres5 = "5. Prohibited Activities 🚨",
      // termsAddres5B =
      //     "You agree not to: \n Share inaccurate or misleading information. ❌ \n Attempt to hack or reverse-engineer the app. 🛑💻 \n Use the app to harass or harm others. 🙅‍♀️",
      // termsAddres6 = "6. Limitation of Liability ⚖️",
      // termsAddres6B =
      //     "We do our best to provide accurate and uninterrupted services. However, we are not liable for any data loss, app downtime, or user misuse. 😓  ",
      // termsAddres7 = "7. Changes to Terms 🆕",
      // termsAddres7B =
      //     "We may update these terms periodically. Continued use of the app signifies your acceptance of any changes. 🔄📃",
      // termsAddres8 = "8. Contact Us 📬",
      termsAddres8B =
          "If you have any questions or concerns about these Terms and Conditions, please contact us at:\nEmail: https://www.linkedin.com/in/mostafa-ghonimi/ \n phone Number: +201027561924 🔗";
}

abstract class FireBaseStrings {
  static const String historicalPeriods = "historical_periods";
  static const String name = "name";
  static const String description = "description";
  static const String image = "image";
  static const String wars = "wars";
}
