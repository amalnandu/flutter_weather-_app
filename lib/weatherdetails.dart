import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'weatherdetails.g.dart';

@JsonSerializable()
class weatherdetails {
  @JsonKey(name: 'coord')
  CoordBean? coord;

  @JsonKey(name: 'weather')
  List<WeatherBean>? weather;

  @JsonKey(name: 'base')
  String? base;

  @JsonKey(name: 'main')
  MainBean? mainy;

  @JsonKey(name: 'visibility')
  num? visibility;

  @JsonKey(name: 'wind')
  WindBean? wind;

  @JsonKey(name: 'clouds')
  CloudsBean? clouds;

  @JsonKey(name: 'dt')
  num? dt;

  @JsonKey(name: 'sys')
  SysBean? sys;

  @JsonKey(name: 'timezone')
  num? timezone;

  @JsonKey(name: 'id')
  num? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'cod')
  num? cod;

  weatherdetails(
      {this.coord,
      this.weather,
      this.base,
      this.mainy,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod});

  factory weatherdetails.fromJson(Map<String, dynamic> json) =>
      _$weatherdetailsFromJson(json);

  Map<String, dynamic> toJson() => _$weatherdetailsToJson(this);
}

@JsonSerializable()
class SysBean {
  @JsonKey(name: 'country')
  String? country;

  @JsonKey(name: 'sunrise')
  num? sunrise;

  @JsonKey(name: 'sunset')
  num? sunset;

  SysBean({this.country, this.sunrise, this.sunset});

  factory SysBean.fromJson(Map<String, dynamic> json) =>
      _$SysBeanFromJson(json);

  Map<String, dynamic> toJson() => _$SysBeanToJson(this);
}

@JsonSerializable()
class CloudsBean {
  @JsonKey(name: 'all')
  num? all;

  CloudsBean({this.all});

  factory CloudsBean.fromJson(Map<String, dynamic> json) =>
      _$CloudsBeanFromJson(json);

  Map<String, dynamic> toJson() => _$CloudsBeanToJson(this);
}

@JsonSerializable()
class WindBean {
  @JsonKey(name: 'speed')
  num? speed;

  @JsonKey(name: 'deg')
  num? deg;

  @JsonKey(name: 'gust')
  num? gust;

  WindBean({this.speed, this.deg, this.gust});

  factory WindBean.fromJson(Map<String, dynamic> json) =>
      _$WindBeanFromJson(json);

  Map<String, dynamic> toJson() => _$WindBeanToJson(this);
}

@JsonSerializable()
class MainBean {
  @JsonKey(name: 'temp')
  num? temp;

  @JsonKey(name: 'feels_like')
  num? feels_like;

  @JsonKey(name: 'temp_min')
  num? temp_min;

  @JsonKey(name: 'temp_max')
  num? temp_max;

  @JsonKey(name: 'pressure')
  num? pressure;

  @JsonKey(name: 'humidity')
  num? humidity;

  @JsonKey(name: 'sea_level')
  num? sea_level;

  @JsonKey(name: 'grnd_level')
  num? grnd_level;

  MainBean(
      {this.temp,
      this.feels_like,
      this.temp_min,
      this.temp_max,
      this.pressure,
      this.humidity,
      this.sea_level,
      this.grnd_level});

  factory MainBean.fromJson(Map<String, dynamic> json) =>
      _$MainBeanFromJson(json);

  Map<String, dynamic> toJson() => _$MainBeanToJson(this);
}

@JsonSerializable()
class WeatherBean {
  @JsonKey(name: 'id')
  num? id;
  @JsonKey(name: 'main')
  String? mainy;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'icon')
  String? icon;

  WeatherBean({this.id, this.mainy, this.description, this.icon});

  factory WeatherBean.fromJson(Map<String, dynamic> json) =>
      _$WeatherBeanFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherBeanToJson(this);
}

@JsonSerializable()
class CoordBean {
  @JsonKey(name: 'lon')
  num? lon;
  @JsonKey(name: 'lat')
  num? lat;

  CoordBean({required this.lon, required this.lat});

  factory CoordBean.fromJson(Map<String, dynamic> json) =>
      _$CoordBeanFromJson(json);

  Map<String, dynamic> toJson() => _$CoordBeanToJson(this);
}
