import 'package:core_app/app/model/response/base/serviceResponse.dart';
import 'package:core_app/app/model/response/firmDto.dart';
import 'package:core_app/app/model/response/pagination/pagedList.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'userService.g.dart';

@RestApi()
abstract class UserService {
  factory UserService(Dio dio, {String baseUrl}) = _UserService;

  @GET("/users/{id}")
  Future<ServiceResponse<FirmDto>> getById(@Path("id") String id);

  @GET("/users")
  Future<ServiceResponse<PagedList<FirmDto>>> get();

  @PUT("/users")
  Future<ServiceResponse<FirmDto>> update(@Body() FirmDto request);

  @POST("/users")
  Future<ServiceResponse<FirmDto>> add(@Body() FirmDto request);

  @DELETE("/users")
  Future<ServiceResponse<FirmDto>> delete(@Body() FirmDto request);
}
