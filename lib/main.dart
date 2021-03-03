void main() {
  //Task1
  // longestLine();

  //Task2
  var list = [60, 999, 14, "dart1", 45, 95, "dart", 1];
  var value = "dart";
  var value1 = 15;

  print(contain(list, value));
  print(contain(list, value1));



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
