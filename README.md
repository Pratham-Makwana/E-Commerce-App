# e_commerce_app

1. Installing Firebase CLI with Node.js:
   Begin your journey by setting up Firebase CLI using Node.js. This is crucial as the Command Line Interface (CLI) is your gateway to Firebase's robust features. Follow our detailed instructions to get Node.js up and running on your device.

2. Logging in and Logging out with Firebase CLI:
   Learn the intricacies of logging in and out from Firebase using the command line or terminal.

3. Activating Firebase CLI and Troubleshooting:
   Activate Firebase CLI and troubleshoot common issues. Address the 'pub install executables into ***' error by adjusting your environment variables.

4. Setting up Environment Variables:
   Delve into the importance of environment variables and learn how to add the necessary path to your 'Path' variable. This optimization ensures that Firebase CLI commands are executed seamlessly.

5. Fetching and Selecting Projects with 'flutterfire configure':
   Execute the 'flutterfire configure' command to fetch and select projects linked to your Gmail account. This step ensures that your Flutter app is seamlessly connected to Firebase.

6. Integrating Firebase into 'main.dart':
   Add the 'firebase_core' package and seamlessly integrate Firebase into your 'main.dart' file. This critical step sets the foundation for enabling advanced Firebase features in your app.

7. Enabling Authentication, Firestore, and Storage in Firebase:
   Elevate your app's capabilities by enabling authentication, Firestore, and storage features in Firebase. Our guide will help you make the most of these powerful Firebase services.

8. Adding SHA-1 and SHA-256 for Firebase Authentication:
   Ensure a smooth run of Firebase Authentication by adding SHA-1 and SHA-256 in Firebase. This essential step ensures the security and integrity of your authentication process.

GENERATE SHA-1 & SHA-256 :
   - Mac: keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android

   - Windows: keytool -list -v -keystore "\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android

   - Linux: keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android

In Windows, 
    After Run The Command You Get Error Like, java.lang.Exception: Keystore file does not exist: \.android\debug.keystore 
So There Is Two Step:

1. Go To This PC Drive C Users Main Ussr .android file debug.keystore That Path We Want Copy The Path.
   - keytool -list -v -keystore "C:\Users\Pratham\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android
   
2. Open The Same Folder Where You Have debug.keystore Open This Path In Terminal And Run
   - keytool -list -v -keystore "C:\Users\Pratham\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android


- SHA-1 Only Requirement For Firebase Google Sign In
- Add SHA-256 For If You Want To Use Other Authentication
