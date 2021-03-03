void main() {
  //Task1
//   longestLine();

  //Task2
//   var list = [60, 999, 14, "dart1", 45, 95, "dart", 1];
//   var value = "dart";
//   var value1 = 15;

//   print(contain(list, value));
//   print(contain(list, value1));

//  Task3
  var list = ["dart", "abc", "good luck"];
  print(calculate(list));

}

List calculate(List<String> list){
  List<int> valueList = new List();
  var newList = new List();
  int sum = 0;

  for(String str in list){
    newList.add(str.replaceAll(' ', '').toLowerCase());
  }

  for(String element in newList){
      for(int index = 0; index < element.length; index++){
          sum += element[index].codeUnitAt(0) - 96;
      }
      valueList.add(sum * (newList.indexOf(element) + 1));
      sum = 0;
  }

  print(newList);

  return valueList;
}

bool contain(List list, var value){
  for(var element in list){
    if(element == value)
      return true;
  }

  return false;
}
void longestLine() {
  List<String> list = [
    "Create a list of strings.",
    "B use the keyboard to count 5 lines and add them to the list.",
    "Using a loop, find the longest string in the list.",
    "Display the found string on the screen.",
    "A use the keyboard to count 5 lines and add them to the list."
  ];
  list.sort((b, a) => a.length.compareTo(b.length));

  int size = list[0].length;

  for (String line in list) {
    if (line.length == size) {
      print(line);
    } else {
      break;
    }
  }
}
