import 'package:b_stories/core/constants/app_images.dart';
import 'package:b_stories/features/home/data/model/age_model.dart';
import 'package:b_stories/features/home/data/model/category_model.dart';

class StoryModel {
  CategoryModel? category;
  String? title;
  String? headerImage;
  List<String>? imageStory;
  String? content;
  String? author;
  String? manufacturer;
  int? page;
  AgeModel? age;
  int? question;
}

List<StoryModel> stories = [
  StoryModel()
    ..category = fairyTale
    ..title = 'Thuý kiều là chị em là của anh'
    ..headerImage = AppImages.tamCam
    ..imageStory = [AppImages.tamCam, AppImages.anKheTraVang]
    ..content =
        'Cáo nhỏ tinh nghịch kể về chú cáo thông minh, ham khám phá và hay nghịch ngợm. Qua những chuyến phiêu lưu vui nhộn, bé sẽ học được về tình bạn và sự chia sẻ. Cáo nhỏ tinh nghịch kể về chú cáo thông minh, ham khám phá và hay nghịch ngợm. Qua những chuyến phiêu lưu vui nhộn, bé sẽ học được về tình bạn và sự chia sẻ.'
    ..author = 'Tác giải Ngọc Hiếu'
    ..manufacturer = 'Nha xuất bản'
    ..page = 12
    ..age = tuoi3_5
    ..question = 12,

  StoryModel()
    ..category = science
    ..title = 'Cám'
    ..headerImage = AppImages.tamCam
    ..imageStory = [
      AppImages.baLuoiRieu,
      AppImages.cocKienTroi,
      AppImages.ruaVaTho,
    ]
    ..content =
        'Cáo nhỏ tinh nghịch kể về chú cáo thông minh, ham khám phá và hay nghịch ngợm. Qua những chuyến phiêu lưu vui nhộn, bé sẽ học được về tình bạn và sự chia sẻ. Cáo nhỏ tinh nghịch kể về chú cáo thông minh, ham khám phá và hay nghịch ngợm. Qua những chuyến phiêu lưu vui nhộn, bé sẽ học được về tình bạn và sự chia sẻ.'
    ..author = 'Tác giải Ngọc Hiếu'
    ..manufacturer = 'Nha xuất bản'
    ..page = 12
    ..age = tuoi6_8
    ..question = 12,

  StoryModel()
    ..category = joke
    ..title = 'Sọ Dừa hài hước'
    ..headerImage = AppImages.soDua
    ..imageStory = [AppImages.soDua, AppImages.soDua]
    ..content =
        'Phiên bản hài hước của truyện Sọ Dừa, trong đó nhân vật chính không chỉ chăm chỉ mà còn thích pha trò, làm cả làng cười ngả nghiêng.'
    ..author = 'Sáng tác vui'
    ..manufacturer = 'NXB Trẻ'
    ..page = 8
    ..age = tuoi6_8
    ..question = 5,

  StoryModel()
    ..category = joke
    ..title = 'Ba Lưỡi Rìu'
    ..headerImage = AppImages.baLuoiRieu
    ..imageStory = [AppImages.baLuoiRieu, AppImages.cauBeTichChu]
    ..content =
        'Một bác tiều phu vô tình làm rơi rìu xuống sông. Thần sông thử thách bằng cách đưa ra ba lưỡi rìu khác nhau. Truyện gốc mang tính giáo dục, phiên bản này thêm chi tiết vui nhộn cho trẻ nhỏ dễ nhớ.'
    ..author = 'Ngụ ngôn dân gian'
    ..manufacturer = 'NXB Kim Đồng'
    ..page = 9
    ..age = tuoi3_5
    ..question = 6,

  StoryModel()
    ..category = joke
    ..title = 'Ba Lưỡi'
    ..headerImage = AppImages.cocKienTroi
    ..imageStory = [AppImages.baLuoiRieu, AppImages.ruaVaTho]
    ..content =
        'Một bác tiều phu vô tình làm rơi rìu xuống sông. Thần sông thử thách bằng cách đưa ra ba lưỡi rìu khác nhau. Truyện gốc mang tính giáo dục, phiên bản này thêm chi tiết vui nhộn cho trẻ nhỏ dễ nhớ.'
    ..author = 'Ngụ ngôn dân gian'
    ..manufacturer = 'NXB Kim Đồng'
    ..page = 9
    ..age = tuoi3_5
    ..question = 6,

  StoryModel()
    ..category = joke
    ..title = 'Ong chiến binh'
    ..headerImage = AppImages.beeknight
    ..imageStory = [AppImages.beeknight, AppImages.cocKienTroi]
    ..content =
        'Truyện khoa học vui về loài ong. Qua nhân vật “Ong hiệp sĩ”, bé sẽ học được cách ong làm tổ, tìm mật và bảo vệ đàn.'
    ..author = 'Nhóm nghiên cứu thiếu nhi'
    ..manufacturer = 'NXB Giáo dục'
    ..page = 11
    ..age = tuoi9_12
    ..question = 7,
];
