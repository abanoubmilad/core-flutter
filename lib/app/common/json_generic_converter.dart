import 'package:core_app/app/model/response/bookingDto.dart';
import 'package:core_app/app/model/response/firmDto.dart';
import 'package:core_app/app/model/response/meetingDto.dart';
import 'package:core_app/app/model/response/userDto.dart';
import 'package:core_app/app/model/response/userProfileDto.dart';
import 'package:json_annotation/json_annotation.dart';

class JsonGenericConverter<T> implements JsonConverter<T, Object> {
  const JsonGenericConverter();

  Type typeOf() => T;

  @override
  T fromJson(Object json) {
    var type = typeOf();

    if (json is Map<String, dynamic>) {
      switch (type) {
        case BookingDto:
          return BookingDto.fromJson(json) as T;
        case FirmDto:
          return FirmDto.fromJson(json) as T;
        case MeetingDto:
          return MeetingDto.fromJson(json) as T;
        case UserDto:
          return UserDto.fromJson(json) as T;
        case UserProfileDto:
          return UserProfileDto.fromJson(json) as T;
      }
    } else if (json is List<dynamic>) {
      switch (type) {
        case BookingDto:
          return json.map((item) => BookingDto.fromJson(item)).toList() as T;
        case FirmDto:
          return json.map((item) => FirmDto.fromJson(item)).toList() as T;
        case MeetingDto:
          return json.map((item) => MeetingDto.fromJson(item)).toList() as T;
        case UserDto:
          return json.map((item) => UserDto.fromJson(item)).toList() as T;
        case UserProfileDto:
          return json.map((item) => UserProfileDto.fromJson(item)).toList()
              as T;

        // This will only work if `json` is a native JSON type:
        //   num, String, bool, null, etc
        // *and* is assignable to `T`.
        default:
          return json.map((item) => json as T).toList() as T;
      }
    }

    // This will only work if `json` is a native JSON type:
    //   num, String, bool, null, etc
    // *and* is assignable to `T`.
    return json as T;
  }

  @override
  Object toJson(T object) {
    // This will only work if `object` is a native JSON type:
    //   num, String, bool, null, etc
    // Or if it has a `toJson()` function`.
    return object;
  }
}
