import '../model/service/service_categories.dart';

//main catlogy
List<ServiceCategories> serviceCategoriesData = [
  ServiceCategories(id: "1", logo: "assets/logo/car.png", title: "Автомашин"),
  ServiceCategories(id: "2", logo: "assets/logo/moto.png", title: "Мотоцикл"),
  ServiceCategories(
      id: "3", logo: "assets/logo/carwash.png", title: "Авто Угаалга"),
  ServiceCategories(id: "4", logo: "assets/logo/motor.png", title: "Сэлбэг")
];
// mashin ugaalgiin catlogy
List<CarWashCatelogies> carWashCategoriesData = [
  CarWashCatelogies(id: "1", logo: "assets/logo/car.png", name: "Автомашин"),
  CarWashCatelogies(id: "2", logo: "assets/logo/moto.png", name: "Мотоцикл"),
  CarWashCatelogies(
      id: "3", logo: "assets/logo/carwash.png", name: "Авто Угаалга"),
  CarWashCatelogies(id: "4", logo: "assets/logo/motor.png", name: "Сэлбэг")
];
// mashinii selbeg catlogy
List<CarProductCatelogies> carProductCategoriesData = [
  CarProductCatelogies(id: "1", logo: "assets/logo/car.png", name: "Автомашин"),
  CarProductCatelogies(id: "2", logo: "assets/logo/moto.png", name: "Мотоцикл"),
  CarProductCatelogies(
      id: "3", logo: "assets/logo/carwash.png", name: "Авто Угаалга"),
  CarProductCatelogies(id: "4", logo: "assets/logo/motor.png", name: "Сэлбэг")
];
// zar
List<PostAddAndPostCatelogies> postAddAndPostsData = [
  PostAddAndPostCatelogies(
      id: "1", logo: "assets/logo/postAdd.png", name: "Зар нэмэх"),
  PostAddAndPostCatelogies(
      id: "2", logo: "assets/logo/myPost.png", name: "Миний зар"),
];
//car service turul

List<CarServiTypeCatelogies> carServicetypeData = [
  CarServiTypeCatelogies(
      id: "1", logo: "assets/logo/motor.png", name: "Кузов засвар"),
  CarServiTypeCatelogies(
      id: "2", logo: "assets/logo/motor.png", name: "Явах эд анги"),
  CarServiTypeCatelogies(
      id: "3", logo: "assets/logo/motor.png", name: "Хүч дамжуулагч"),
  CarServiTypeCatelogies(
      id: "4", logo: "assets/logo/motor.png", name: "Удирдлага"),
  CarServiTypeCatelogies(
      id: "5", logo: "assets/logo/motor.png", name: "Компьютер оношилгоо"),
  CarServiTypeCatelogies(
      id: "6", logo: "assets/logo/motor.png", name: "Хөдөлгүүр"),
];
//car zar

List<CarPostCatelogies> carPostData = [
  CarPostCatelogies(
    id: "1",
    photo: "assets/images/carPost/service1.jpg",
    title: "Кузов засвар",
    text:
        "Нэгэнт бохирдсон катализаторыг цэвэрлэх шаардлагатай бөгөөд тусгай зориулалтын бодисыг дусал залгаж, коллектороор оруулан хаазлах замаар цэвэрлэх болно.",
    phone: 99112233,
    location: "Улаанбаатар, БЗД, 28-р хороо, Хужирбулан Хар Хошуу, E-Serivce",
    price: "Үнэ тохирно",
    schedule: "Даваа-Бямба, Ням амрана",
  ),
  CarPostCatelogies(
    id: "2",
    photo: "assets/images/carPost/service2.jpg",
    title: "Явах эд анги",
    text:
        "Нэгэнт бохирдсон катализаторыг цэвэрлэх шаардлагатай бөгөөд тусгай зориулалтын бодисыг дусал залгаж, коллектороор оруулан хаазлах замаар цэвэрлэх болно.",
    phone: 99112233,
    location: "Улаанбаатар, БЗД, 28-р хороо, Хужирбулан Хар Хошуу, E-Serivce",
    price: "Үнэ тохирно",
    schedule: "Даваа-Бямба, Ням амрана",
  ),
  CarPostCatelogies(
    id: "3",
    photo: "assets/images/carPost/service3.jpg",
    title: "Хүч дамжуулагч",
    text:
        "Нэгэнт бохирдсон катализаторыг цэвэрлэх шаардлагатай бөгөөд тусгай зориулалтын бодисыг дусал залгаж, коллектороор оруулан хаазлах замаар цэвэрлэх болно.",
    phone: 99112233,
    location: "Улаанбаатар, БЗД, 28-р хороо, Хужирбулан Хар Хошуу, E-Serivce",
    price: "Үнэ тохирно",
    schedule: "Даваа-Бямба, Ням амрана",
  ),
  CarPostCatelogies(
    id: "4",
    photo: "assets/images/carPost/service4.jpg",
    title: "Удирдлага",
    text:
        "Нэгэнт бохирдсон катализаторыг цэвэрлэх шаардлагатай бөгөөд тусгай зориулалтын бодисыг дусал залгаж, коллектороор оруулан хаазлах замаар цэвэрлэх болно.",
    phone: 99112233,
    location: "Улаанбаатар, БЗД, 28-р хороо, Хужирбулан Хар Хошуу, E-Serivce",
    price: "Үнэ тохирно",
    schedule: "Даваа-Бямба, Ням амрана",
  ),
  CarPostCatelogies(
    id: "5",
    photo: "assets/images/carPost/service5.jpg",
    title: "Компьютер оношилгоо",
    text:
        "Нэгэнт бохирдсон катализаторыг цэвэрлэх шаардлагатай бөгөөд тусгай зориулалтын бодисыг дусал залгаж, коллектороор оруулан хаазлах замаар цэвэрлэх болно.",
    phone: 99112233,
    location: "Улаанбаатар, БЗД, 28-р хороо, Хужирбулан Хар Хошуу, E-Serivce",
    price: "Үнэ тохирно",
    schedule: "Даваа-Бямба, Ням амрана",
  ),
];
