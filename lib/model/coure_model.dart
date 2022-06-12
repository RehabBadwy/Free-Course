class CourseModel{
  String heading;
  String image;
  String courseLink;
  String successRate;

  CourseModel({required this.heading,required this.image,required this.courseLink,required this.successRate});

 factory CourseModel.fromjson(Map<String,dynamic> json){
    return CourseModel(
      heading: json['heading'],
      image: json['image'],
      courseLink: json['courseLink'],
      successRate: json['successRate'],
    );
  }

  Map<String , dynamic>toJson(){
   return{
     "heading": this.heading,
     "image": this.image,
     "courseLink": this.courseLink,
     "successRate": this.successRate,
   };
  }
}