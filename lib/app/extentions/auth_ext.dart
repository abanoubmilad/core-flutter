//Selector loggedInConsumer(Function(bool) builder) {
//  return Selector<AuthNotifier, bool>(
//      builder: (context, isLoggedIn, _) => builder(isLoggedIn),
//      selector: (buildContext, model) => model.isLoggedIn);
//}
//
//Selector userProfileConsumer(Function(UserProfileDto) builder) {
//  return Selector<AuthNotifier, UserProfileDto>(
//      builder: (context, isLoggedIn, _) => builder(isLoggedIn),
//      selector: (buildContext, model) => model.userProfileDto);
//}
