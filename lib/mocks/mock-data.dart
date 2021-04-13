import 'package:open_wifi_share/model/base-model.dart';
import 'package:open_wifi_share/model/location-model.dart';

class MockData {
  List<BaseModel> baseModelList = [];

  MockData() {

    // Mock Datas For Tests
    BaseModel baseModel1 = BaseModel(
        ssid: "location_fbrtn",
        password: "lackminds20@gmail.com",
        //locationModel: LocationModel(latitude: "22.277", longitude: "33.42"),
        country: "Nepal",
        remarks: "NONE");

    BaseModel baseModel2 = BaseModel(
        ssid: "pragesh_fbrtn",
        password: "Evion400",
        //locationModel: LocationModel(latitude: "22.277", longitude: "33.42"),
        country: "Nepal",
        remarks: "NONE");

    BaseModel baseModel3 = BaseModel(
        ssid: "GuruDev@ClassicTech",
        password: "BBBB1234",
        //locationModel: LocationModel(latitude: "22.277", longitude: "33.42"),
        country: "Nepal",
        remarks: "NONE");

    baseModelList.add(baseModel1);
    baseModelList.add(baseModel2);
    baseModelList.add(baseModel3);


  }

  getMockList() {
    return baseModelList;
  }
}
