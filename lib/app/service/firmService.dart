import 'package:core_app/app/model/request/grantPermissionRequest.dart';
import 'package:core_app/app/model/response/base/serviceResponse.dart';
import 'package:core_app/app/model/response/firmDto.dart';
import 'package:core_app/app/model/response/firmUserDto.dart';
import 'package:core_app/app/model/response/pagination/pagedList.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'firmService.g.dart';

@RestApi()
abstract class FirmService {
  factory FirmService(Dio dio, {String baseUrl}) = _FirmService;

  @GET("/firms/{id}")
  Future<ServiceResponse<FirmDto>> getById(@Path("id") String id);

  @GET("/firms")
  Future<ServiceResponse<PagedList<FirmDto>>> get();

  @PUT("/firms")
  Future<ServiceResponse<FirmDto>> update(@Body() FirmDto request);

  @POST("/firms")
  Future<ServiceResponse<FirmDto>> add(@Body() FirmDto request);

  @DELETE("/firms")
  Future<ServiceResponse<FirmDto>> delete(@Body() FirmDto request);

  @POST("/firms/{id}")
  Future<ServiceResponse<FirmUserDto>> grantPermission(
      @Path("id") String id, @Body() GrantPermissionRequest request);
}
