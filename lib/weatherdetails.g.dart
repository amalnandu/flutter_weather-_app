// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weatherdetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

weatherdetails _$weatherdetailsFromJson(Map<String, dynamic> json) =>
    weatherdetails(
      coord: json['coord'] == null
          ? null
          : CoordBean.fromJson(json['coord'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherBean.fromJson(e as Map<String, dynamic>))
          .toList(),
      base: json['base'] as String?,
      mainy: json['main'] == null
          ? null
          : MainBean.fromJson(json['main'] as Map<String, dynamic>),
      visibility: json['visibility'] as num?,
      wind: json['wind'] == null
          ? null
          : WindBean.fromJson(json['wind'] as Map<String, dynamic>),
      clouds: json['clouds'] == null
          ? null
          : CloudsBean.fromJson(json['clouds'] as Map<String, dynamic>),
      dt: json['dt'] as num?,
      sys: json['sys'] == null
          ? null
          : SysBean.fromJson(json['sys'] as Map<String, dynamic>),
      timezone: json['timezone'] as num?,
      id: json['id'] as num?,
      name: json['name'] as String?,
      cod: json['cod'] as num?,
    );

Map<String, dynamic> _$weatherdetailsToJson(weatherdetails instance) =>
    <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'base': instance.base,
      'main': instance.mainy,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'dt': instance.dt,
      'sys': instance.sys,
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };

SysBean _$SysBeanFromJson(Map<String, dynamic> json) => SysBean(
      country: json['country'] as String?,
      sunrise: json['sunrise'] as num?,
      sunset: json['sunset'] as num?,
    );

Map<String, dynamic> _$SysBeanToJson(SysBean instance) => <String, dynamic>{
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };

CloudsBean _$CloudsBeanFromJson(Map<String, dynamic> json) => CloudsBean(
      all: json['all'] as num?,
    );

Map<String, dynamic> _$CloudsBeanToJson(CloudsBean instance) =>
    <String, dynamic>{
      'all': instance.all,
    };

WindBean _$WindBeanFromJson(Map<String, dynamic> json) => WindBean(
      speed: json['speed'] as num?,
      deg: json['deg'] as num?,
      gust: json['gust'] as num?,
    );

Map<String, dynamic> _$WindBeanToJson(WindBean instance) => <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };

MainBean _$MainBeanFromJson(Map<String, dynamic> json) => MainBean(
      temp: json['temp'] as num?,
      feels_like: json['feels_like'] as num?,
      temp_min: json['temp_min'] as num?,
      temp_max: json['temp_max'] as num?,
      pressure: json['pressure'] as num?,
      humidity: json['humidity'] as num?,
      sea_level: json['sea_level'] as num?,
      grnd_level: json['grnd_level'] as num?,
    );

Map<String, dynamic> _$MainBeanToJson(MainBean instance) => <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'temp_min': instance.temp_min,
      'temp_max': instance.temp_max,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'sea_level': instance.sea_level,
      'grnd_level': instance.grnd_level,
    };

WeatherBean _$WeatherBeanFromJson(Map<String, dynamic> json) => WeatherBean(
      id: json['id'] as num?,
      mainy: json['main'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$WeatherBeanToJson(WeatherBean instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.mainy,
      'description': instance.description,
      'icon': instance.icon,
    };

CoordBean _$CoordBeanFromJson(Map<String, dynamic> json) => CoordBean(
      lon: json['lon'] as num?,
      lat: json['lat'] as num?,
    );

Map<String, dynamic> _$CoordBeanToJson(CoordBean instance) => <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
    };
