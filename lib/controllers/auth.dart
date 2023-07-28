import '../services/authentication.dart';

class AuthController {
  final AuthenticationService _authenticationService = AuthenticationService();

  Future<bool> loginWithEmailPassword(String email, String password) async {
    return await _authenticationService.loginWithEmailPassword(email, password);
  }

  Future<bool> registerWithEmailPassword(String email, String password) async {
    return await _authenticationService.registerWithEmailPassword(email, password);
  }

  Future<void> logout() async {
    await _authenticationService.logout();
  }
}
