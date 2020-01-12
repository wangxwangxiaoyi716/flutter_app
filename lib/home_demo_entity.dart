import 'package:flutter_app/generated/json/base/json_convert_content.dart';
import 'package:flutter_app/generated/json/base/json_filed.dart';

class HomeDemoEntity with JsonConvert<HomeDemoEntity> {
	List<HomeDemoResult> result;
	String message;
	String status;
}

class HomeDemoResult with JsonConvert<HomeDemoResult> {
	String director;
	String horizontalImage;
	String imageUrl;
	int movieId;
	String name;
	double score;
	String starring;
}
