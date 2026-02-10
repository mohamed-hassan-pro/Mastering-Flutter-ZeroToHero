// لانشاء كائن: 1- حدد الفصيلة 2- حدد السمات والخصائص
// To create an object:
//   1- Select the class
//   2- Specify the attributes and methods
//                  Constructor => method => function in class
// Constructor in class اللي بيبنيه

void main() {
  Alien stitch = Alien();
  stitch.height = 49;
  stitch.numberOfArms = 3;
  stitch.run(); //method
  Human mohamed = Human(177);
  print(mohamed.height);
}

class Alien {
  double? height;
  double numberOfArms = 2;
  void run() {
    print('$Alien can run');
  }

  Alien() {} // Defualt Constructor
  // Constructor can't have a return type
}

class Human {
  double? height;

  Human(double height) {
    this.height = height;
  } //Constructor بدل ما
}

// encapsulation
// تغليف الحاجة مثل جعل ال attribute يكون privet بداخل class او ملف او غيره في حيذ معين
// (setter => set & getter => get) =Method =function
// سيتر بيدي قيمة
// 
// جيتر بياخد قيمة
// مش شرط مع المتغييرات البرايفت
// قد يستعمل مع بيانات لتغيير شكلها مثلا زي فورمات التاريخ مثالا يعني


// get: بيقرأ القيمة المخبأة. وممتاز جداً لعمليات الـ Formatting زي ما ذكرت (تغيير شكل التاريخ، دمج الاسم الأول والأخير، إلخ) بدون ما تغير القيمة الأصلية في الكلاس.

// set: بيكتب أو يعدل القيمة. وهنا بتيجي قوة التغليف، لأنك بتقدر تحط شروط (Validation) تمنع أي داتا غلط تدخل الكلاس.