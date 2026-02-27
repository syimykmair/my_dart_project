import 'person.dart';
import 'student.dart';
import 'subjects.dart';
import 'teacher.dart';
void main(){
  Person myFriend =Person('Kubanychbekov Askat', 21, false);
  myFriend.introduce();
  
  Student myStudent =Student('Adam White', 21, false, {Subject.math:90, Subject.physics:85, Subject.english:92});
  myStudent.showMarks();
  myStudent.introduce();

  Teacher myTeacher =Teacher('John Brown', 40, true, 5);
  myTeacher.introduce();
}