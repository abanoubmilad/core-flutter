import 'package:core_app/app/model/response/base/serviceResponse.dart';
import 'package:core_app/app/model/response/bookingDto.dart';
import 'package:core_app/app/model/response/pagination/pagedList.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'bookingService.g.dart';

@RestApi()
abstract class BookingService {
  factory BookingService(Dio dio, {String baseUrl}) = _BookingService;

  @GET("/meetings/{meetingId}/bookings/{id}")
  Future<ServiceResponse<BookingDto>> getById(
      @Path("meetingId") String meetingId, @Path("id") String id);

  @GET("/meetings/{meetingId}/bookings")
  Future<ServiceResponse<PagedList<BookingDto>>> get(
      @Path("meetingId") String meetingId);

  @PUT("/meetings/{meetingId}/bookings")
  Future<ServiceResponse<BookingDto>> update(
      @Path("meetingId") String meetingId, @Body() BookingDto request);

  @POST("/meetings/{meetingId}/bookings")
  Future<ServiceResponse<BookingDto>> add(
      @Path("meetingId") String meetingId, @Body() BookingDto request);

  @DELETE("/meetings/{meetingId}/bookings")
  Future<ServiceResponse<BookingDto>> delete(
      @Path("meetingId") String meetingId, @Body() BookingDto request);
}
