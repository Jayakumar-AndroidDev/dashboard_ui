

class LinechartModel {
  LinechartModel({required this.year,required this.value});
  int year;
  double value;
}

List<LinechartModel> listOfData1 = [
  LinechartModel(year: 2011, value: 15),
  LinechartModel(year: 2012, value: 18),
  LinechartModel(year: 2013, value: 50),
  LinechartModel(year: 2014, value: 35),
];


List<LinechartModel> listOfData2 = [
  LinechartModel(year: 2011, value: 16),
  LinechartModel(year: 2012, value: 10),
  LinechartModel(year: 2013, value: 20),
  LinechartModel(year: 2014, value: 30),
];