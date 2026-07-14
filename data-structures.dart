List<int> listNum = [1, 2, 3, 4, 5];
List<Object> listObj = [
  {"name": "Fahd", "age": 23},
  {"name": "3agon", "age": 22},
  {"name": "Moon", "age": 173},
  {"name": "Uranus", "age": 2026},
];
List<String> listStr = ['Germany', 'Kazakhstan', 'France', 'England'];
List<List<Object>> listList= [
  listNum.cast<Object>(),
  listObj,
  listStr.cast<Object>(),
];

Set<String> setStr = {'Germany', 'Kazakhstan', 'France', 'England'};
Map<String, int> mapStr = {'Fahd': 23, '3agon': 22, 'Moon': 173};
