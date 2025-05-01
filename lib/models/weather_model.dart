class WeatherModel {
  Coord? coord;
  List<Weather>? weather;
  String? base;
  Main? main;
  int? visibility;
  Wind? wind;
  Clouds? clouds;
  int? dt;
  Sys? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  WeatherModel(
      {this.coord,
        this.weather,
        this.base,
        this.main,
        this.visibility,
        this.wind,
        this.clouds,
        this.dt,
        this.sys,
        this.timezone,
        this.id,
        this.name,
        this.cod});

  WeatherModel.fromJson(Map<String, dynamic> json) {
    coord = json['coord'] != null ? new Coord.fromJson(json['coord']) : null;
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather!.add(new Weather.fromJson(v));
      });
    }
    base = json['base'];
    main = json['main'] != null ? new Main.fromJson(json['main']) : null;
    visibility = json['visibility'];
    wind = json['wind'] != null ? new Wind.fromJson(json['wind']) : null;
    clouds =
    json['clouds'] != null ? new Clouds.fromJson(json['clouds']) : null;
    dt = json['dt'];
    sys = json['sys'] != null ? new Sys.fromJson(json['sys']) : null;
    timezone = json['timezone'];
    id = json['id'];
    name = json['name'];
    cod = json['cod'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.coord != null) {
      data['coord'] = this.coord!.toJson();
    }
    if (this.weather != null) {
      data['weather'] = this.weather!.map((v) => v.toJson()).toList();
    }
    data['base'] = this.base;
    if (this.main != null) {
      data['main'] = this.main!.toJson();
    }
    data['visibility'] = this.visibility;
    if (this.wind != null) {
      data['wind'] = this.wind!.toJson();
    }
    if (this.clouds != null) {
      data['clouds'] = this.clouds!.toJson();
    }
    data['dt'] = this.dt;
    if (this.sys != null) {
      data['sys'] = this.sys!.toJson();
    }
    data['timezone'] = this.timezone;
    data['id'] = this.id;
    data['name'] = this.name;
    data['cod'] = this.cod;
    return data;
  }
}

class Coord {
  double? lon;
  double? lat;

  Coord({this.lon, this.lat});

  Coord.fromJson(Map<String, dynamic> json) {
    lon = json['lon'];
    lat = json['lat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lon'] = this.lon;
    data['lat'] = this.lat;
    return data;
  }
}

class Weather {
  int? id;
  String? main;
  String? description;
  String? icon;

  Weather({this.id, this.main, this.description, this.icon});

  Weather.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['main'] = this.main;
    data['description'] = this.description;
    data['icon'] = this.icon;
    return data;
  }
}

class Main {
  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;
  int? seaLevel;
  int? grndLevel;

  Main(
      {this.temp,
        this.feelsLike,
        this.tempMin,
        this.tempMax,
        this.pressure,
        this.humidity,
        this.seaLevel,
        this.grndLevel});

  Main.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];
    feelsLike = json['feels_like'];
    tempMin = json['temp_min'];
    tempMax = json['temp_max'];
    pressure = json['pressure'];
    humidity = json['humidity'];
    seaLevel = json['sea_level'];
    grndLevel = json['grnd_level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['temp'] = this.temp;
    data['feels_like'] = this.feelsLike;
    data['temp_min'] = this.tempMin;
    data['temp_max'] = this.tempMax;
    data['pressure'] = this.pressure;
    data['humidity'] = this.humidity;
    data['sea_level'] = this.seaLevel;
    data['grnd_level'] = this.grndLevel;
    return data;
  }
}

class Wind {
  double? speed;
  int? deg;
  double? gust;

  Wind({this.speed, this.deg, this.gust});

  Wind.fromJson(Map<String, dynamic> json) {
    speed = json['speed'];
    deg = json['deg'];
    gust = json['gust'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speed'] = this.speed;
    data['deg'] = this.deg;
    data['gust'] = this.gust;
    return data;
  }
}

class Clouds {
  int? all;

  Clouds({this.all});

  Clouds.fromJson(Map<String, dynamic> json) {
    all = json['all'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['all'] = this.all;
    return data;
  }
}

class Sys {
  String? country;
  int? sunrise;
  int? sunset;

  Sys({this.country, this.sunrise, this.sunset});

  Sys.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    return data;
  }
}
























// class WeatherModel {
//   Coord? coord;
//   List<Weather>? weather;
//   String? base;
//   Main? main;
//   int? visibility;
//   Wind? wind;
//   Clouds? clouds;
//   int? dt;
//   Sys? sys;
//   int? timezone;
//   int? id;
//   String? name;
//   int? cod;
//
//   WeatherModel(
//       {this.coord,
//         this.weather,
//         this.base,
//         this.main,
//         this.visibility,
//         this.wind,
//         this.clouds,
//         this.dt,
//         this.sys,
//         this.timezone,
//         this.id,
//         this.name,
//         this.cod});
//
//   WeatherModel.fromJson(Map<String, dynamic> json) {
//     coord = json['coord'] != null ? new Coord.fromJson(json['coord']) : null;
//     if (json['weather'] != null) {
//       weather = <Weather>[];
//       json['weather'].forEach((v) {
//         weather!.add(new Weather.fromJson(v));
//       });
//     }
//     base = json['base'];
//     main = json['main'] != null ? new Main.fromJson(json['main']) : null;
//     visibility = json['visibility'];
//     wind = json['wind'] != null ? new Wind.fromJson(json['wind']) : null;
//     clouds =
//     json['clouds'] != null ? new Clouds.fromJson(json['clouds']) : null;
//     dt = json['dt'];
//     sys = json['sys'] != null ? new Sys.fromJson(json['sys']) : null;
//     timezone = json['timezone'];
//     id = json['id'];
//     name = json['name'];
//     cod = json['cod'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.coord != null) {
//       data['coord'] = this.coord!.toJson();
//     }
//     if (this.weather != null) {
//       data['weather'] = this.weather!.map((v) => v.toJson()).toList();
//     }
//     data['base'] = this.base;
//     if (this.main != null) {
//       data['main'] = this.main!.toJson();
//     }
//     data['visibility'] = this.visibility;
//     if (this.wind != null) {
//       data['wind'] = this.wind!.toJson();
//     }
//     if (this.clouds != null) {
//       data['clouds'] = this.clouds!.toJson();
//     }
//     data['dt'] = this.dt;
//     if (this.sys != null) {
//       data['sys'] = this.sys!.toJson();
//     }
//     data['timezone'] = this.timezone;
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['cod'] = this.cod;
//     return data;
//   }
// }
//
// class Coord {
//   double? lon;
//   double? lat;
//
//   Coord({this.lon, this.lat});
//
//   Coord.fromJson(Map<String, dynamic> json) {
//     lon = json['lon'];
//     lat = json['lat'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['lon'] = this.lon;
//     data['lat'] = this.lat;
//     return data;
//   }
// }
//
// class Weather {
//   int? id;
//   String? main;
//   String? description;
//   String? icon;
//
//   Weather({this.id, this.main, this.description, this.icon});
//
//   Weather.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     main = json['main'];
//     description = json['description'];
//     icon = json['icon'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['main'] = this.main;
//     data['description'] = this.description;
//     data['icon'] = this.icon;
//     return data;
//   }
// }
//
// class Main {
//   double? temp;
//   double? feelsLike;
//   double? tempMin;
//   double? tempMax;
//   int? pressure;
//   int? humidity;
//   int? seaLevel;
//   int? grndLevel;
//
//   Main(
//       {this.temp,
//         this.feelsLike,
//         this.tempMin,
//         this.tempMax,
//         this.pressure,
//         this.humidity,
//         this.seaLevel,
//         this.grndLevel});
//
//   Main.fromJson(Map<String, dynamic> json) {
//     temp = json['temp'];
//     feelsLike = json['feels_like'];
//     tempMin = json['temp_min'];
//     tempMax = json['temp_max'];
//     pressure = json['pressure'];
//     humidity = json['humidity'];
//     seaLevel = json['sea_level'];
//     grndLevel = json['grnd_level'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['temp'] = this.temp;
//     data['feels_like'] = this.feelsLike;
//     data['temp_min'] = this.tempMin;
//     data['temp_max'] = this.tempMax;
//     data['pressure'] = this.pressure;
//     data['humidity'] = this.humidity;
//     data['sea_level'] = this.seaLevel;
//     data['grnd_level'] = this.grndLevel;
//     return data;
//   }
// }
//
// class Wind {
//   double? speed;
//   int? deg;
//   double? gust;
//
//   Wind({this.speed, this.deg, this.gust});
//
//   Wind.fromJson(Map<String, dynamic> json) {
//     speed = json['speed'];
//     deg = json['deg'];
//     gust = json['gust'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['speed'] = this.speed;
//     data['deg'] = this.deg;
//     data['gust'] = this.gust;
//     return data;
//   }
// }
//
// class Clouds {
//   int? all;
//
//   Clouds({this.all});
//
//   Clouds.fromJson(Map<String, dynamic> json) {
//     all = json['all'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['all'] = this.all;
//     return data;
//   }
// }
//
// class Sys {
//   int? type;
//   int? id;
//   String? country;
//   int? sunrise;
//   int? sunset;
//
//   Sys({this.type, this.id, this.country, this.sunrise, this.sunset});
//
//   Sys.fromJson(Map<String, dynamic> json) {
//     type = json['type'];
//     id = json['id'];
//     country = json['country'];
//     sunrise = json['sunrise'];
//     sunset = json['sunset'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['type'] = this.type;
//     data['id'] = this.id;
//     data['country'] = this.country;
//     data['sunrise'] = this.sunrise;
//     data['sunset'] = this.sunset;
//     return data;
//   }
// }
//
//















// class WeatherModel {
//   double? latitude;
//   double? longitude;
//   String? timezone;
//   String? hourlyUnits;
//   String? hourly;
//
//   WeatherModel({this.latitude, this.longitude, this.timezone, this.hourlyUnits, this.hourly});
//
// //   WeatherModel.fromJson(Map<String, dynamic> json) {
// //     latitude = json['latitude'];
// //     longitude = json['longitude'];
// //     timezone = json['timezone'];
// //
// //     hourlyUnits = json.containsKey('hourly_units') && json['hourly_units'] != null
// //         ? HourlyUnits.fromJson(json['hourly_units'])
// //         : null;
// //
// //     hourly = json.containsKey('hourly') && json['hourly'] != null
// //         ? Hourly.fromJson(json['hourly'])
// //         : null;
// //   }
// //
// //   Map<String, dynamic> toJson() {
// //     return {
// //       'latitude': latitude,
// //       'longitude': longitude,
// //       'timezone': timezone,
// //       'hourly_units': hourlyUnits?.toJson(),
// //       'hourly': hourly?.toJson(),
// //     };
// //   }
// // }
// //
// // class HourlyUnits {
// //   String? temperature2m;
// //
// //   HourlyUnits({this.temperature2m});
// //
// //   HourlyUnits.fromJson(Map<String, dynamic> json) {
// //     temperature2m = json['temperature_2m'];
// //   }
// //
// //   Map<String, dynamic> toJson() {
// //     return {
// //       'temperature_2m': temperature2m,
// //     };
// //   }
// // }
// //
// // class Hourly {
// //   List<String>? time;
// //   List<double>? temperature2m;
// //
// //   Hourly({this.time, this.temperature2m});
// //
// //   Hourly.fromJson(Map<String, dynamic> json) {
// //     time = json['time'] != null ? List<String>.from(json['time']) : [];
// //     temperature2m = json['temperature_2m'] != null
// //         ? List<double>.from(json['temperature_2m'].map((x) => x.toDouble()))
// //         : [];
// //   }
// //
// //   Map<String, dynamic> toJson() {
// //     return {
// //       'time': time,
// //       'temperature_2m': temperature2m,
// //     };
// //   }
// // }
