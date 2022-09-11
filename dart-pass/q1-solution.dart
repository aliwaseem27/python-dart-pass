List listA = [
  "Muklah",
  "Diyar",
  "Noorhan",
  "Ali",
  "Abdulbasit",
  "Dena",
  "Saba",
  "Fadi",
  "Karrar",
  "Ahmed"
];
List listB = [
  "Diyar",
  "Noorhan",
  "Muklah",
  "Saba",
  "Mustafa",
  "Ahmed",
  "Fadi",
  "Dena",
  "Hassan",
  "Ali",
];

List getCommonNames(List listA, List listB){
  Set s1 = Set.from(listA);
  Set s2 = Set.from(listB);
  List result = s1.intersection(s2).toList();
  return result;
}

List getNamesContainM(List names){
  List result = [];
  final regex = RegExp(r"[mM]");
  
  for (String name in names){
    if (regex.hasMatch(name)){
      result.add(name);
    }
  }
  
  return result;
}

void main() {
  List commonNames = getCommonNames(listA, listB);
  List namesContainM = getNamesContainM(commonNames);

  print("The common names between listA and listB.");
  print(commonNames);
  print("----------");
  print("The names that contain the letter M in the common names.");
  print(namesContainM);
}
