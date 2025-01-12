import 'package:elrawee/Core/utils/app_color.dart';
import 'package:elrawee/Core/utils/app_strings.dart';
import 'package:elrawee/Core/utils/text_them.dart';
import 'package:flutter/material.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColor.primaryColor),
        backgroundColor: AppColor.backgroundColor,
        title: Text(
          AppStrings.termsAddres,
          style: AppTextTheme.textStyleYellowBold20,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Text(
          TermsAndConditions.getAllTerms(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.0,
            height: 1.5,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryColor,
          ),
        ),
      ),
    );
  }
}

class TermsAndConditions {
  static String introduction() {
    return '''
📖 **Introduction**
Welcome to [Rawee]! By using our app, you agree to these Terms and Conditions. Please read them carefully. Your access and use of the app are governed by this agreement. 🛡️
    ''';
  }

  static String userResponsibilities() {
    return '''
👤 **User Responsibilities**
- **Provide Accurate Information**: Ensure all personal and historical details shared are truthful and accurate. 🧐  
- **Respect Others**: Do not upload or share any content that is offensive, defamatory, or violates someone else's rights. 🚫🙅‍♂️  
- **Personal Use Only**: Use the app for its intended purpose and avoid any misuse or illegal activities. ⚖️  
    ''';
  }

  static String privacyPolicy() {
    return '''
🔐 **Privacy Policy**
- Your privacy is important to us. We collect, store, and process your personal and historical data as outlined in our Privacy Policy. 🛠️  
- Data shared in the app will not be sold or shared with third parties without your consent. 🛡️✨  
- For detailed information, please review our **Privacy Policy**. 📜  
    ''';
  }

  static String intellectualPropertyRights() {
    return '''
🏛️ **Intellectual Property Rights**
- All app content, including designs, features, and code, are the property of [Rawee]. 📱👑  
- Users retain ownership of their shared historical and personal details but grant the app a license to use them to provide services. 🔄  
    ''';
  }

  static String prohibitedActivities() {
    return '''
🚨 **Prohibited Activities**
You agree not to:  
- Share inaccurate or misleading information. ❌  
- Attempt to hack or reverse-engineer the app. 🛑💻  
- Use the app to harass or harm others. 🙅‍♀️  
    ''';
  }

  static String limitationOfLiability() {
    return '''
⚖️ **Limitation of Liability**
- We do our best to provide accurate and uninterrupted services. However, we are not liable for any data loss, app downtime, or user misuse. 😓  
- The app is provided on an "as-is" basis without warranties of any kind. 🛠️  
    ''';
  }

  static String termination() {
    return '''
🚪 **Termination**
We reserve the right to suspend or terminate your account for violating these terms. Repeated offenses may lead to permanent bans. ❌🚫  
    ''';
  }

  static String governingLaw() {
    return '''
⚖️ **Governing Law**
These Terms and Conditions are governed by the laws of [Jurisdiction]. Any disputes shall be resolved under this jurisdiction. 🗺️  
    ''';
  }

  static String changesToTerms() {
    return '''
🆕 **Changes to Terms**
We may update these terms periodically. Continued use of the app signifies your acceptance of any changes. 🔄📃  
    ''';
  }

  static String contactUs() {
    return '''
📬 **Contact Us**
If you have any questions or concerns about these Terms and Conditions, please contact us at:  
**Email**: https://www.linkedin.com/in/mostafa-ghonimi/ 📧  
**Support**: +201027561924 🔗  
    ''';
  }

  // Combine all sections into one string
  static String getAllTerms() {
    return [
      introduction(),
      userResponsibilities(),
      privacyPolicy(),
      intellectualPropertyRights(),
      prohibitedActivities(),
      limitationOfLiability(),
      termination(),
      governingLaw(),
      changesToTerms(),
      contactUs()
    ].join('\n');
  }
}
