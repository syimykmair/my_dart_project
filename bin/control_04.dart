import 'dart:io';
void main(){
int warm = 0; 
int cool = 0; 
int cold = 0; 
for(var t=0; t<=7;t++){
  print ('Enter temperature for the day: ');
  int t = int.parse(stdin.readLineSync()!);
  if(t>20){
    warm++;
    print(" It's warm today!");
  }else if (t>=10&&t<=20){
    cool++;
    print(" It's cool today."); 
  }else if (t<10){
    cold++;
    print("It's cold today!");
  }}
print('Warm days: $warm');
print('Cool days: $cool');
print('Cold days: $cold');
print('Weekly temperature analysis completed.');
}