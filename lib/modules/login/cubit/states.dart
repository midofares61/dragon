abstract class SocialLoginStates{}

class SocialLoginInitialState extends SocialLoginStates {}

class OnLoadingLogin extends SocialLoginStates {}

class LoginSuccessful extends SocialLoginStates {
  final String uId;
  LoginSuccessful(this.uId);
}

class LoginError extends SocialLoginStates {
  final String error;
  LoginError(this.error);
}

class SocialChangeLoginPasswordVisibilityState extends SocialLoginStates {}







