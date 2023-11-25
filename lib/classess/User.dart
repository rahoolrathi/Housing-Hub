import 'package:http/http.dart' as http;
import 'CustomError.dart';
class User{

  String email;
String fullname;
String xtra;
int phonenumber;
String password;
String? userimage; // Using nullable type for userimage

// Constructor
User({
  required this.email,
  required this.fullname,
  required this.xtra,
  required this.phonenumber,
  required this.password,
  this.userimage,
});
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'username': fullname,
      'lastname': xtra,
      'phonenumber': phonenumber,
      'password': password,
      'userimage': userimage,
    };
  }
// email checker
bool isEmailValid(String email) {
  // Regular expression to validate email format
  final emailRegex = RegExp(r'^[a-zA-Z0-9._-]+@gmail\.com$');
  return emailRegex.hasMatch(email);
}
//password checker must have size atleast 6 with special character
bool isPasswordValid(String password) {
  // Regular expression to validate password format
  final passwordRegex = RegExp(r'^(?=.*[!@#$%^&*(),.?":{}|<>]).{6,}$');
  return passwordRegex.hasMatch(password);
}

//checks phonenumber
bool isPhoneNumberValid(String phoneNumber) {
  // Regular expression to validate phone number format
  final phoneRegex = RegExp(r'^03\d{9}$');
  return phoneRegex.hasMatch(phoneNumber);
}
Future<bool> isAlreadyExistEmail(String email)async{
    final String url='http://192.168.98.14:3000/api/v1/user/'+email;
    try {
      final response = await http.get( Uri.parse(url),
        headers: {'Content-Type': 'application/json'});
      if (response.statusCode == 200) {
        print(response.body);
        return true;
      } else if (response.statusCode == 404) {
        print(response.body);
        return false;
      } else {
        throw CustomError("Error in connection");
      }
    } catch (e) {
      throw CustomError(e.toString());
    }

}
bool isAlreadyExistNumber(int number){
    return true;
}

Future<void> validateInputs() async {
  if (email.isEmpty || fullname.isEmpty || password.isEmpty)
    throw CustomError("Please fill in all input fields.");
  // if (!isEmailValid(email))
  //   throw CustomError("Invalid email format. Please use the format: example@gmail.com");
  // if (!isPhoneNumberValid(phonenumber.toString()))
  //   throw CustomError("Invalid phone number. Please enter a valid Pakistani phone number starting with '03'.");
  if (!isPasswordValid(password))
    throw CustomError("Invalid password. Password must be at least 6 characters long and contain at least one special character.");
   if(await isAlreadyExistEmail(email)){
     throw CustomError("email already exist!");
   }
   if(isAlreadyExistNumber(phonenumber)){
     throw CustomError("phone number already registered");
   }

  }

Future<void> CreateNewUser() async {
  validateInputs();

}


}