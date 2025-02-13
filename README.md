


# 📡 Flutter Internet Connectivity Check using `connectivity_plus`

This Flutter project uses the [`connectivity_plus`](https://pub.dev/packages/connectivity_plus) package to check whether the device is connected to the internet. It detects network changes in real-time and supports different connection types like Wi-Fi, mobile data, and offline mode.

## 📌 Features  
✅ Detects internet connectivity status (Wi-Fi, mobile, or no connection)  
✅ Listens for network status changes in real-time  
✅ Displays connectivity status in the UI  

## 📦 Dependencies  
To use this functionality, add the following dependency to your `pubspec.yaml` file:  

```yaml
dependencies:
  flutter:
    sdk: flutter
  connectivity_plus: ^5.0.2  # Check for the latest version
```

## 🚀 Implementation  

### 1️⃣ Import the package  
```dart
import 'package:connectivity_plus/connectivity_plus.dart';
```

### 2️⃣ Check Internet Connection Status  
```dart
Future<bool> checkInternetConnection() async {
  var connectivityResult = await Connectivity().checkConnectivity();
  return connectivityResult != ConnectivityResult.none;
}
```

### 3️⃣ Listen for Network Changes  
```dart
StreamSubscription<ConnectivityResult>? subscription;

void initConnectivityListener() {
  subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      print("No Internet Connection");
    } else {
      print("Connected to the Internet");
    }
  });
}

@override
void dispose() {
  subscription?.cancel();
  super.dispose();
}
```
```

## 🛠️ Permissions (Android & iOS)  
For **Android**, add the following permission to your `AndroidManifest.xml`:  
```xml
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
```
For **iOS**, include this key in `Info.plist`:  
```xml
<key>NSAppTransportSecurity</key>
<dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
</dict>
```

## 📲 Running the App  
Run the app using:  
```sh
flutter run
```

## 🤝 Contributing  
Feel free to open issues or submit pull requests to improve this project.

---



<p>
 

  <img src="https://github.com/user-attachments/assets/d7dcf9e8-c010-44e2-865b-1d48b120e6f8" width="22%" Height="35%">
  
  <img src="https://github.com/user-attachments/assets/15d9a2f8-4b1b-44bb-9c7f-6e0389f31a8e" width="22%" Height="35%">
  </p>








https://github.com/user-attachments/assets/a3242196-75bf-4a39-9e4b-6059b491748b



  


