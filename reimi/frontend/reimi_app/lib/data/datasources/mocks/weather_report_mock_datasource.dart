import 'package:reimi_app/data/datasources/remote/weather_report_remote_datasource.dart';
import 'package:reimi_app/data/dtos/post_weather_report_dto.dart';
import 'package:reimi_app/domain/read_models/weather_report_read_model.dart';
import 'package:reimi_app/domain/read_models/weather_report_simple_read_model.dart';
import 'package:reimi_app/domain/value_objects/feeling_type.dart';
import 'package:reimi_app/domain/value_objects/forecast_type.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';
import 'package:reimi_app/domain/value_objects/weather_type.dart';
import 'package:reimi_app/gen/assets.gen.dart';

class WeatherReportMockDataSource implements WeatherReportRemoteDataSource {
  const WeatherReportMockDataSource();

  @override
  Future<List<WeatherReportSimpleReadModel>> fetchWeatherReports() async {
    return mockSimpleWeatherReports;
  }

  @override
  Future<List<WeatherReportSimpleReadModel>> fetchMyWeatherReports() async {
    return mockSimpleWeatherReports;
  }

  @override
  Future<WeatherReportReadModel?> fetchWeatherReport(String reportId) async {
    for (final weatherReport in mockWeatherReports) {
      if (weatherReport.reportId == reportId) {
        return weatherReport;
      }
    }
    return null;
  }

  @override
  Future<void> postWeatherReport(PostWeatherReportDto dto) {
    // TODO: implement postWeatherReport
    throw UnimplementedError();
  }
}

final List<WeatherReportSimpleReadModel> mockSimpleWeatherReports = [
  WeatherReportSimpleReadModel(
    reportId: 'report_001',
    userId: 'chat_user_001',
    comment: '今日は雲一つない快晴！とても気持ちが良いです。',
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1513002749550-c59d786b8e6c?auto=format&fit=crop&q=80&w=1000',
    createdAt: DateTime.now().subtract(const Duration(days: 60)),
  ),
  WeatherReportSimpleReadModel(
    reportId: 'report_002',
    userId: 'user_e345',
    comment: '早朝の澄んだ空気とグラデーションが最高です。',
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1495616811223-4d98c6e9c869?auto=format&fit=crop&q=80&w=1000',
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
  ),
  WeatherReportSimpleReadModel(
    reportId: 'report_003',
    userId: 'user_000',
    comment: '入道雲が出てきました。夏本番という感じですね。',
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1534088568595-a066f410bcda?auto=format&fit=crop&q=80&w=1000',
    createdAt: DateTime.now().subtract(const Duration(minutes: 105)),
  ),
  WeatherReportSimpleReadModel(
    reportId: 'report_004',
    userId: 'user_d012',
    comment: '雨上がりの空に虹が見えるかと思ったけど、残念。',
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1517483000871-1dbf64a6e1c6?auto=format&fit=crop&q=80&w=1000',
    createdAt: DateTime.now().subtract(const Duration(days: 40)),
  ),
  WeatherReportSimpleReadModel(
    reportId: 'report_005',
    userId: 'user_b456',
    comment: '夕焼けが燃えるように綺麗でした。明日は晴れるかな？',
    mediaType: MediaType.image,
    url:
        'https://t3.ftcdn.net/jpg/01/02/02/48/360_F_102024845_ZkQQ04KmyHVuRKNjJNwq82U6SdsyaH80.jpg',
    createdAt: DateTime.now().subtract(const Duration(days: 52)),
  ),
  WeatherReportSimpleReadModel(
    reportId: 'report_006',
    userId: 'user_f678',
    comment: '夜空が澄んでいて星が少しだけ見えます。',
    mediaType: MediaType.image,
    url: 'https://user0514.cdnw.net/shared/img/thumb/UKA20906018_TP_V.jpg',
    createdAt: DateTime.now().subtract(const Duration(days: 1, hours: 2)),
  ),
  WeatherReportSimpleReadModel(
    reportId: 'report_007',
    userId: 'user_g901',
    comment: 'ふわふわした羊雲。秋の気配を感じます。',
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1499346030926-9a72daac6c63?auto=format&fit=crop&q=80&w=1000',
    createdAt: DateTime.now().subtract(const Duration(days: 9, hours: 5)),
  ),
  WeatherReportSimpleReadModel(
    reportId: 'report_008',
    userId: 'user_h234',
    comment: '幻想的な紫色の空。加工なしでこの美しさ！',
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1525920980995-f8a382bf42c5?auto=format&fit=crop&q=80&w=1000',
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
  ),
  WeatherReportSimpleReadModel(
    reportId: 'report_009',
    userId: 'user_i567',
    comment: '雲の間から差し込む光が神々しいです。',
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1501630834273-4b5604d2ee31?auto=format&fit=crop&q=80&w=1000',
    createdAt: DateTime.now().subtract(const Duration(days: 2, hours: 4)),
  ),
  WeatherReportSimpleReadModel(
    reportId: 'report_010',
    userId: 'user_j890',
    comment: 'どこまでも続く青空。散歩日和ですね。',
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1504608524841-42fe6f032b4b?auto=format&fit=crop&q=80&w=1000',
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
  ),
];

final List<WeatherReportReadModel> mockWeatherReports = [
  WeatherReportReadModel(
    reportId: 'report_001',
    userId: 'chat_user_001',
    userName: 'さくら',
    mainPhotoUrl: Assets.images.sample.chatUser001SampleImage.path,
    comment: '今日は雲一つない快晴！とても気持ちが良いです。',
    weatherType: WeatherType.clearStar,
    feelingType: FeelingType.comfortable,
    forecastType: ForecastType.improving,
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1513002749550-c59d786b8e6c?auto=format&fit=crop&q=80&w=1000',
    reportComment: ['#快晴', '#青空'],
    likeCount: 124,
    commentCount: 8,
    createdAt: DateTime.now().subtract(const Duration(hours: 1)),
    latitude: 35.6895,
    longitude: 139.6917,
  ),
  WeatherReportReadModel(
    reportId: 'report_002',
    userId: 'chat_user_002',
    userName: 'ゆうき',
    mainPhotoUrl: Assets.images.sample.chatUser002SampleImage.path,
    comment: '夕焼けが燃えるように綺麗でした。明日は晴れるかな？',
    weatherType: WeatherType.clearStar,
    feelingType: FeelingType.cold,
    forecastType: ForecastType.noChange,
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1495616811223-4d98c6e9c869?auto=format&fit=crop&q=80&w=1000',
    reportComment: ['#夕焼け', '#マジックアワー'],
    likeCount: 89,
    commentCount: 3,
    createdAt: DateTime.now().subtract(const Duration(hours: 3)),
  ),
  WeatherReportReadModel(
    reportId: 'report_003',
    userId: 'user_000',
    userName: 'メンダコ',
    mainPhotoUrl: Assets.images.sample.user000SampleImage.path,
    comment: '入道雲が出てきました。夏本番という感じですね。',
    weatherType: WeatherType.noStar,
    feelingType: FeelingType.warm,
    forecastType: ForecastType.noChange,
    mediaType: MediaType.image,
    url:
        'https://images.unsplash.com/photo-1534088568595-a066f410bcda?auto=format&fit=crop&q=80&w=1000',
    reportComment: ['#入道雲', '#夏'],
    likeCount: 96,
    commentCount: 4,
    createdAt: DateTime.now().subtract(const Duration(hours: 3)),
  ),
];
