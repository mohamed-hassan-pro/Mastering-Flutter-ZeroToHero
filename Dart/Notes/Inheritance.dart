// مبدأ الوراثة: الاب
// الفصيلة الرئيسية تحط فيه كل الصفات المشتركة
// الفصيلة التي ترث من الفصيلة الأب تحط بها الصفات والخصائص الفريدة بها
// الكونستراكتور هو اللي بيبني الكائن
// {} named شايفها اساسية عشان وانت بتستدعي الكائن او تبنيه تسمي كل فارابول لمنع خطأ تحط حاجة مش في مكانها

void main() {
  Cat cat = Cat(age: 5, name: 'Kitty', weight: 5.0, voice: 'Meow');
  Lion lion = Lion(age: 8, name: 'Simba', weight: 20.0, voice: 'Roar');
  // اسم الكائن عبارة عن ريفرينس للكائن
  //  احيانا مش هحتاج اسميه مش هحتاج معلومات لاني هاكسس الليست واقدر اكسس بياناته بالانديكس مكانه يعني
  List<Animals> zoo = [cat, lion, Dog(age: 3, name: 'Buddy', weight: 15.0)];
  for (Animals animal in zoo) {
    animal.eat();
  }

  for (Animals animal in zoo) {
    if (animal is Cat) {
      animal.makeVoice();
    } else if (animal is Lion) {
      animal.makeVoice();
    } else if (animal is Dog) {
      animal.makeVoice();
    }
  }

  Circle circle = Circle.origin(radius: 5.0);
  circle.draw();

  Gender gender = Gender.male;
  switch (gender) {
    case Gender.male:
      break;
    case Gender.female:
      break;
  }
}

abstract class Animals {
  int? age;
  String? name;
  int? numberOfLimbs = 4;
  double? weight;

  Animals({required this.age, required this.name, required this.weight});
  eat();
  makeVoice();
}

mixin MammalsMixin {}

mixin RepilesMixin {}

mixin petMixin {
  play() => print('Playing with the pet');
}

class Cat extends Animals with MammalsMixin {
  String? voice;

  Cat({
    required super.age,
    required super.name,
    required super.weight,
    this.voice,
  });
  /* شكل اخر للسوبر كونستراكتور
  Cat({
    required int age,
    required String name,
    required double weight,
    required this.voice,
  }) : super(age: age, name: name, weight: weight);
  */
  @override
  eat() => print('Cat eats fish');
  @override
  makeVoice() => print('Voice of Cat: $voice');
}

class Dog extends Animals {
  Dog({required super.age, required super.name, required super.weight});

  @override
  eat() => print('Dog eats meat');

  @override
  makeVoice() => print('Dog barks');
}

// الاولوية للميكسن الاخيرة
class Snake extends Animals with RepilesMixin, petMixin {
  Snake({required super.age, required super.name, required super.weight});

  @override
  eat() => print('Snake eats small animals');

  @override
  makeVoice() => print('Snake makes no sound');
}

class Lion implements Animals {
  String? voice;

  @override
  int? age;

  @override
  String? name;

  @override
  int? numberOfLimbs;

  @override
  double? weight;

  Lion({
    required this.age,
    required this.name,
    required this.weight,
    this.voice,
  });

  @override
  eat() => print('Lion eats meat');
  @override
  makeVoice() => print('Voice of Lion: $voice');
}

class Circle {
  double radius;
  late int x;
  late int y;

  Circle.origin({required this.radius}) {
    x = 0;
    y = 0;
  }

  draw() {
    print('Drawing a circle with radius $radius at position ($x, $y)');
  }
}

enum Gender { male, female }
