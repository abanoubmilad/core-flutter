import 'package:core_app/app/model/response/base/serviceResponse.dart';
import 'package:core_app/app/model/response/meetingDto.dart';
import 'package:core_app/app/model/response/pagination/pagedList.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'meetingService.g.dart';

@RestApi()
abstract class MeetingService {
  factory MeetingService(Dio dio, {String baseUrl}) = _MeetingService;

  @GET("/firms/{firmId}/meetings/{id}")
  Future<ServiceResponse<MeetingDto>> getById(
      @Path("firmId") String firmId, @Path("id") String id);

  @GET("/firms/{firmId}/meetings")
  Future<ServiceResponse<PagedList<MeetingDto>>> get(
      @Path("firmId") String firmId);

  @PUT("/firms/{firmId}/meetings")
  Future<ServiceResponse<MeetingDto>> update(
      @Path("firmId") String firmId, @Body() MeetingDto request);

  @POST("/firms/{firmId}/meetings")
  Future<ServiceResponse<MeetingDto>> add(
      @Path("firmId") String firmId, @Body() MeetingDto request);

  @DELETE("/firms/{firmId}/meetings")
  Future<ServiceResponse<MeetingDto>> delete(
      @Path("firmId") String firmId, @Body() MeetingDto request);
}
