
void main(){
//Задача №1
for(var i=1; i<=30;i++){
//if (i%3==0) --- 
  if (i%3==0 && i%5==0){
    print('FizzBuzz');
  }else if (i%3==0){
    print ('Fizz');
  }else if(i%5==0){
    print('Buzz');
/*else if (i%3==0 && i%5==0) --- оказывается если эту условию поставить
 cнизу других условий то мы не сможем дойти до этого условия*/
  }else{
    print (i);
  }
}
//Задача №2


 List<int> numbers =[3, -2, 0, 7, -5, 10, 1]; //[ -2, -5]; --- это было для проверки
 var count = 0;
 var sum =0;
  for (var i in numbers ){
    if (i>0){
    count++;
    sum += i;
    }
  }
  /*int sum=0;
  for (var i in numbers ){
    if (i>0){
    sum += i;
    }
  }*/
   if (count>0){
   print('Positive numbers count: $count');
   print('Average of positive numbers: ${sum/count}');
} else{
  print ('No positive numbers.');
}
// Задача №3
Map<String, int> fruits = {'Apple': 5, 'Banana': 2, 'Mango': 7, 'Orange': 0};
    fruits.forEach((key, value){
      if(value>0){
      print('Available: $key ($value pcs)');}
    });
}