
abstract class SocialRegisterStates{}

class SocialRegisterInitialState extends SocialRegisterStates{}
class SocialRegisterOnLoadingState extends SocialRegisterStates{}
class SocialRegisterSuccessState extends SocialRegisterStates{}
class SocialRegisterErrorState extends SocialRegisterStates{
  final String error;
  SocialRegisterErrorState(this.error);
}
class SocialUserCreateSuccessState extends SocialRegisterStates{
  final String uId;
  SocialUserCreateSuccessState(this.uId);
}
class SocialUserCreateErrorState extends SocialRegisterStates{
  final String error;
  SocialUserCreateErrorState(this.error);
}
class SocialChangeRegisterPasswordVisibilityState extends SocialRegisterStates{}