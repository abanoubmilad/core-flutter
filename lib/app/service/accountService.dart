import 'package:core_app/app/model/request/changePasswordRequest.dart';
import 'package:core_app/app/model/request/confirmEmailRequest.dart';
import 'package:core_app/app/model/request/facebookAuthRequest.dart';
import 'package:core_app/app/model/request/forgetPasswordRequest.dart';
import 'package:core_app/app/model/request/inviteUserRequest.dart';
import 'package:core_app/app/model/request/loginRequest.dart';
import 'package:core_app/app/model/request/registerRequest.dart';
import 'package:core_app/app/model/request/resetPasswordRequest.dart';
import 'package:core_app/app/model/response/base/baseServiceResponse.dart';
import 'package:core_app/app/model/response/base/serviceResponse.dart';
import 'package:core_app/app/model/response/userDto.dart';
import 'package:core_app/app/model/response/userProfileDto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'accountService.g.dart';

@RestApi()
abstract class AccountService {
  factory AccountService(Dio dio, {String baseUrl}) = _AccountService;

  @POST("/account/login")
  Future<ServiceResponse<UserProfileDto>> login(@Body() LoginRequest request);

  @POST("/account/register")
  Future<ServiceResponse<UserProfileDto>> register(
      @Body() RegisterRequest request);

  @POST("/account/invite")
  Future<ServiceResponse<UserDto>> invite(@Body() InviteUserRequest request);

  @POST("/account/confirmInvitation")
  Future<ServiceResponse<UserDto>> confirmInvitation(
      @Body() ResetPasswordRequest request);

  @POST("/account/confirmEmail")
  Future<BaseServiceResponse> confirmEmail(@Body() ConfirmEmailRequest request);

  @POST("/account/forgetPassword")
  Future<BaseServiceResponse> forgetPassword(
      @Body() ForgetPasswordRequest request);

  @POST("/account/resetPassword")
  Future<BaseServiceResponse> resetPassword(
      @Body() ResetPasswordRequest request);

  @POST("/account/changePassword")
  Future<BaseServiceResponse> changePassword(
      @Body() ChangePasswordRequest request);

  @POST("/account/facebookSignIn")
  Future<BaseServiceResponse> facebookSignIn(
      @Body() FacebookAuthRequest request);
}
