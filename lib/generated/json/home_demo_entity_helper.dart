import 'package:flutter_app/home_demo_entity.dart';
import 'package:flutter_app/generated/json/base/json_filed.dart';
import 'package:intl/intl.dart';

homeDemoEntityFromJson(HomeDemoEntity data, Map<String, dynamic> json) {
	if (json['result'] != null) {
		data.result = new List<HomeDemoResult>();
		(json['result'] as List).forEach((v) {
			data.result.add(new HomeDemoResult().fromJson(v));
		});
	}
	data.message = json['message']?.toString();
	data.status = json['status']?.toString();
	return data;
}

Map<String, dynamic> homeDemoEntityToJson(HomeDemoEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.result != null) {
		data['result'] =  entity.result.map((v) => v.toJson()).toList();
	}
	data['message'] = entity.message;
	data['status'] = entity.status;
	return data;
}

homeDemoResultFromJson(HomeDemoResult data, Map<String, dynamic> json) {
	data.director = json['director']?.toString();
	data.horizontalImage = json['horizontalImage']?.toString();
	data.imageUrl = json['imageUrl']?.toString();
	data.movieId = json['movieId']?.toInt();
	data.name = json['name']?.toString();
	data.score = json['score']?.toDouble();
	data.starring = json['starring']?.toString();
	return data;
}

Map<String, dynamic> homeDemoResultToJson(HomeDemoResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['director'] = entity.director;
	data['horizontalImage'] = entity.horizontalImage;
	data['imageUrl'] = entity.imageUrl;
	data['movieId'] = entity.movieId;
	data['name'] = entity.name;
	data['score'] = entity.score;
	data['starring'] = entity.starring;
	return data;
}