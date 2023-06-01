import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

//Provider for google signIn
final AuthRepositoryProvider =
    Provider((ref) => AuthRepository(googleSignIn: GoogleSignIn()));

class AuthRepository {
  final GoogleSignIn _googleSignIn;
  AuthRepository({required GoogleSignIn googleSignIn})
      : _googleSignIn = googleSignIn;

  void signInWithGoogle() async {
    const String url = "http://10.0.2.2:3000/api/v1/signUp";
    try {
      print("helllasdasloooooo");
      final user = await _googleSignIn.signIn();
      print("helllo $user");
      if (user != null) {
        print(user.email);
        print('yaha hai naaam $user.displayName');
        var res = await http.post(Uri.parse(url), body: {
          'email': user.email,
          'displayName': user.displayName,
          'photoUrl': user.photoUrl.toString()
        });
        print(res);
      }
    } catch (e) {
      print(e);
      throw (e);
    }
  }
}
