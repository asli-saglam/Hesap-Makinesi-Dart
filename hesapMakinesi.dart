import 'dart:io';

void islemler(){
  String operations = "1. Addition\n"
                      +"2. Subtraction\n"
                      +"3. Multiplication\n"
                      +"4. Division";
  print(operations);              
}

void add(double num1, double num2, [double num3=0.0]){
  try{
   double sum;
    sum = num1 + num2 + num3;
   
   print("Toplama sonucu = $sum");
   }

   catch(e){
    print("hata");
   }
}
void Subtraction(double num1, double num2){
  try{
   double sub;
  sub = num1 - num2;
   
   print("Çıkarma sonucu = $sub");
   }
   catch(e){
    print("hata");
   }
}
void Multiplication(double num1, double num2, [double num3 =1.0]){
  try{
   double multi;
  multi = num1 * num2 *num3;
   
   print("Çarpma sonucu = $multi");
   }
   catch(e){
    print("hata");
   }
}
void Division({required double num1, required double num2}){
    try{
      double divied = num1/num2;
      print("Bölme Sonucu $divied");

    }
    catch(e){
      print("hata");
    }
}


void main(){
  try {
    while(true){
        print("Yapmak istediğiniz işlem numarasını seçiniz.");
        islemler();
        String? number  = stdin.readLineSync();
        double num1 = 0.0;
        double num2 = 0.0;
      switch(number){
        case "1":
        print("Birinci sayıyı giriniz.");
        String? inputA = stdin.readLineSync();
        if (inputA != null) {
          num1 = double.parse(inputA);
        }
        print("İkinci sayıyı giriniz.");
        String? inputB = stdin.readLineSync();
        if (inputB != null) {
          num2 = double.parse(inputB);
        }
        add(num1, num2);
        break;

        case "2":
        print("Birinci sayıyı giriniz.");
        String? inputA = stdin.readLineSync();
        if (inputA != null) {
          num1 = double.parse(inputA);
        }
        print("İkinci sayıyı giriniz.");
        String? inputB = stdin.readLineSync();
        if (inputB != null) {
          num2 = double.parse(inputB);
        }
        Subtraction(num1, num2);
        break;

        case "3":
        print("Birinci sayıyı giriniz.");
        String? inputA = stdin.readLineSync();
        if (inputA != null) {
          num1 = double.parse(inputA);
        }
        print("İkinci sayıyı giriniz.");
        String? inputB = stdin.readLineSync();
        if (inputB != null) {
          num2 = double.parse(inputB);
        }
        Multiplication(num1, num2);
        break;

        case "4":
        print("Birinci sayıyı giriniz.");
        String? inputA = stdin.readLineSync();
        if (inputA != null) {
          num1 = double.parse(inputA);
        }
        print("İkinci sayıyı giriniz.");
        String? inputB = stdin.readLineSync();
        if (inputB != null) {
          num2 = double.parse(inputB);
        }
        Division(num1: num1, num2: num2);
        break;

        default:
          print("Geçerli bir işlem numarası giriniz.");

      }
                         
}} catch (e) {
    print("hata");  }
}