import '../services/authentication.dart';

class AuthController {
  final AuthenticationService _authenticationService = AuthenticationService();

  Future<bool> loginWithEmailPassword(String email, String password) async {
    return await _authenticationService.loginWithEmailPassword(email, password);
  }
}
