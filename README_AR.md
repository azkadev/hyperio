<div align = "center">

# Hyperio


[! [dart] (https://img.shields.io/badge/dart-0175c2؟style=for-the-badge&logo=dart&logocolor=white)] (https://dart.dev/)
[! [flutter] (https://img.shields.io/badge/flutter-02569b
[! [ترخيص] (https://img.shields.io/badge/license-apache_2.0-blue.svg؟style=for-the-badge)] (ترخيص)

*قم بإنشاء خادم باستخدام Dart بسهولة*

[] (https://github.com/azkadev/hyperio/blob/main/asses/images/hyperio.jpg)

</div>

---


# Hyperio



** مكتبة Hyperio ** لجعل الخادم يستخدم لغة الرمز DART ، وهذا أمر سهل للغاية لأنني أحاول أن أجعله مشابهًا للمكتبة العامة

- 🇮🇩 [إندونيسيا] (https://github.com/azkadev/hyperio/blob/main/readme.md)
- 🇨🇿 [أفريقيا] (https://github.com/azkadev/hyperio/blob/main/readme_afrika.md)
- 🇨🇳 [الصين] (https://github.com/azkadev/hyperio/blob/main/readme_china.md)
- 🏴󠁧󠁢󠁥󠁮󠁧󠁿 [الإنجليزية] (https://github.com/azkadev/hyperio/blob/main/readme_english.md)
- 🇮🇳 [الهند] (https://github.com/azkadev/hyperio/blob/main/readme_india.md)
- 🇮🇩 [java] (https://github.com/azkadev/hyperio/blob/main/readme_jawa.md)
- 🇯🇵 [يابانية] (https://github.com/azkadev/hyperio/blob/main/readme_jepang.md)
- 🇰🇷 [كوريا] (https://github.com/azkadev/hyperio/blob/main/readme_korea.md)
- 🇷🇺 [روسيا] (https://github.com/azkadev/hyperio/blob/main/readme_russia.md)
- 🇮🇩 [Sunda] (https://github.com/azkadev/hyperio/blob/main/readme_sunda.md)
- 🇹🇭 [تايلاند] (https://github.com/azkadev/hyperio/blob/main/readme_thailand.md)

## حقيقة

- هذه المكتبة ليست ملزمة بالعديد من حزب Detensencens 3

## ميزة

- [x] ** سريع جدًا ** مكتبة ASHNC (** لا تمنع مؤشرات الترابط **)
- [x] ** سهل الاستخدام **

## مثال

- [تطبيق المكدس الكامل] (https://github.com/azkadev/azkadev_fullstack_application_dart_and_flutter)
- [مثال بسيط] (https://github.com/azkadev/hyperio/tree/main/quickstart)



## ثَبَّتَ

قبل التثبيت ، تأكد من معرفة Dart / Flutter الأساسية على الأقل قمت بتثبيت Flutter / Dart على جهاز الكمبيوتر / الجهاز. [موقع Flutter] (https://flutter.dev)

"باش
دارت حانة إضافة hyperio
`` `

## الوثائق


### قاعدة

تأكد من قيامك بهذا الأساس أولاً ، لا يجب أن تكون هي نفسها

**مثال:**

`` `دارت

استيراد "الحزمة: hyperio/hyperio.dart" ؛

void main () {
  طباعة ("ابدأ") ؛
  Hyperioazkadev النهائي = hyperioazkadev () ؛
}

`` `

### ضمان

يجب أن تسمى الطريقة بحرية تريد أن تكون بعد ** على ** / قبل الطريقة ** على ** لكنني أقترح قبل ** على **

**مثال:**

`` `دارت
  hyperioazkadev.ensureInitialized () ؛
`` `


### الجميع

للحصول على طريقة طلب HTTP ، الحصول على ، نشر ، وضع ، تصحيح ، رأس ، حذف وغيرها

**مثال:**

`` `دارت
  Hyperio.all ("/" ، (Req ، Res) {
    Return Res.Send ("حسنًا") ؛
  }) ؛
`` `


### يستمع

استمع الخادم

**مثال:**

`` `دارت
في انتظار hyperio.listen (
  الميناء: 3000 ،
  Bindip: "0.0.0.0" ،
) ؛
`` `

فوق هذا مجرد أمثلة قليلة إذا كنت تريد المزيد من العينات التمرير لأعلى ، أقوم بمثابة مثال

# مهم

- إذا لم ينجح هذا البرنامج في يوم من الأيام ، فيجب أن نتذكر مرة أخرى ، لم أقم أبدًا بتصنيع برامج ضارة / رمز مشبوه / مزيف ربما بسبب الوقت ، من المهم أن نفهم الوقت الذي يتم فيه صنع هذا الرمز وإصدار الإطار الذي أستخدمه. لا تتهم فقط! ، يمكنني الخروج عن السيطرة!
- البرنامج الذي أقوم به بشكل أساسي لا يعتمد على العديد من التبعيات
- لأنه لا يعتمد على الكثير من التبعيات على الرغم من عدم تحديث الكود الخاص بي ، فمن الممكن أن يكون ذلك ممكنًا
- جميع البرامج التي قمت بإنشائها إذا كنت في الحساب الرسمي ، فأنا أضمن بنسبة 100 ٪ بدون برامج ضارة ، ولا توجد مشبوهة- لا تزال في حيرة من أمري لماذا رمز / عدم تجميع BIS الخاص بي؟ من الأفضل إذا كنت تشعر بأنك غير صحي تحقق من الطبيب أولاً ، إذا كنت تتصرف بانحرف أو عبر*ender أو l*bt أو أشياء أخرى ، فالدوي الأول أنت لست برنامجًا مشبوهًا / برامج ضارة ، فأنا لا أفعل أشياء سيئة من هذا القبيل ، قبل أن تجعل الآخرين يجنون / متابعة kaأنت ، أنت أفضل دواء. إذا كنت لا تزال ترغب في الاستمرار في تعلم الكود الخاص بي ، فهذا أمر مستحيل لأنني لست عبر*ender ، l*bt ، لذلك ربما يجعل رمز البرنامج من الصعب على عقلك
- إذا كانت هناك لقطات شبها

## يساعد

**صعب**؟ لقد قمت ببناء ** مكتبة ** هذا ** وكذلك ممكن ** ربما و ** حاول بسهولة ** للقراءة و ** المستخدمة قدر الإمكان **. 

إذا كنت ** ** لا يزال ** تشعر ** ** صعوبة ** و ** الارتباك ** ** حاول الانضمام ** إلى ** مجموعة ** مجانا دون أي تكلفة **

- [Telegram] (https://t.me/developer_global_public)
- [Discord] (https://discord.gg/h4qanyn7)

** قبل الانضمام ** تأكد من ** استخدم ملف تعريف ** أن ** واضح ** نحن لا تمانع في من أنت ، وأي رتبة ، ولكن تأكد ** ** ** هناك اسم مستخدم وملف تعريف الصور ** ، وحاول الدردشة في المجموعة ** ** لا دردشة شخصية ** لأنه ** مجموعة عامة وربما يربطون الآخرين **. إذا كان ** لا يتبع ** هذا هو الاحتمال ** لا يمكن الوصول إلى الدردشة في المجموعة وسيتم حظرها ** ، فإن الحل لاستخدام الحساب الثاني ، لأنه بعد حظره لا يمكننا الاستجابة بسرعة


## دعمني

إذا شعرت أن هذا البرنامج مفيد ، فيمكنك دعمني [Github Azkadev] (https://github.com/azkadev) على الرابط متاح وسائل التواصل الاجتماعي ورعايتي. لا مانع إذا كنت تتبع / تبرعت فقط القليل من المال

[] (https://github.com/azkadev/azkadev/blob/main/asses/gopay.png)

- https://github.com/sponsors/azkadev
- https://www.patreon.com/c/azkadev
- https://openclective.com/azkadev
- https://paypal.me/azkadev

شكرًا لك


Azkadev-18-07-2025


## العلامات

- Hyperio Dart

</br>
</br>


<div align = "center">

** تم صنعه قدر الإمكان لمجتمع Dart & Flutter **

</div>