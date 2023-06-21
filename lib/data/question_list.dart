

import 'package:my_final_app/model/question_model.dart';

List<QuestionModel> islamicQuestions = [
  QuestionModel("آموختن علم عقاید به طور اجمال چی حکم دارد ؟", {
    "فرض عین": true,
    "مستحب": false,
    "سنت": false,
    "فرض کفایی": false,
  }),
  QuestionModel("کدام یک از پیامبران زیر از جمله پیامبران اولوالعزم است ؟", {
    "یعقوب علیه السلام": false,
    "آدم علیه السلام": false,
    "یوسف عیله السلام": false,
    "عسی علیه السلام": true,
  }),
    QuestionModel("ولایت نفس به چند نوع است ؟", {
    "چهار نوع": false,
    "سه نوع": false,
    "دو نوع": true,
    "پنج نوع": false,
  }),    QuestionModel("پیامبر ص چند سام در مکه مردم را به دین اسلام دعوت کردن ؟", {
    "ده سال": false,
    "سیزده سال": true,
    "بیست و سه سال": false,
    "پنج سال": false,
  }),  
    QuestionModel("نزول قرآنکریم دارای چند مرحله بود ؟", {
    "دو مرحله": true,
    "سه مرحله": false,
    "یک مرحله": false,
    "پنج مرحله": false,
  }),

];

// Geography Questions

List<QuestionModel> geographyQuestions = [
  QuestionModel("دریای راین از منبع تا مصب چند کیلومتر فاصله را طی میکند ؟", {
    "1300": true,
    "1400": false,
    "1500": false,
    "1700": false,
  }),
  QuestionModel("در قرن 16 برای اولین بار سرویس پستی به همت کدام شخص بوجود آمد ؟", {
    "فرمی": false,
    "کوتنبرگ": false,
    "فراسواتاکسی": true,
    "هیچکدام": false,
  }),
    QuestionModel("درسال 1996 تعداد کشور های عضو اتحادیه پستی جهان به چند کشور میرسید ؟", {
    "189": true,
    "190": false,
    "156": false,
    "178": false,
  }),
      QuestionModel("استفاده از تخنیک مخابره انفرادی درسال 1960 چند فیصد بود ؟", {
    "80 فیصد": false,
    "26 فیصد": false,
    "62 فیصد": false,
    "90 فیصد": true,
  }),    QuestionModel("قبل از کدام سال ذریعه اینترنت هیچ نوع تسهیلاتی وجود نداشت ؟", {
    "1865": false,
    "1939": false,
    "1990": true,
    "1923": false,
  }),
];

// Dari Questions

List<QuestionModel> dariQuestions = [
  QuestionModel("کدام یک از گزینه های دیل محل تولد امیرعلی شیر نوایی است ؟", {
    "هـــرات": true,
    "کـــابل": false,
    "مزارشریف": false,
    "پـــروان": false,
  }),
  QuestionModel("خــــمستان اثر کیست ؟", {
    "مولانا": false,
    "عبدالهادی داوی": false,
    "خال محمد خمسه": true,
    "عبدالعلی مستغنی": false,
  }),
    QuestionModel("از نویسنده گان مشهور سده سیزدهم هجری ؟", {
    "جوینی": false,
    "غلام محمد طرزی": true,
    "گردیزی": false,
    "غبار": false,
  }),
    QuestionModel("یکی از دانشمندان زیر موسس دانشگاه مسکو هست ؟", {
    "ژان ژاک": false,
    "وکتور هوگو":false,
    "میلتون":false,
    "لومونوسف":true,
  }),
  QuestionModel("دوست باشد آنکه گیرد دست دوست در پریشانی و درمانده گی اثرکیست ؟",{
  "سعدی":true,
  "فردوسی":false,
  "سنایی":false,
  "حافظ":false,
  }),
];

// History Questions

List<QuestionModel> historyQuestions = [
  QuestionModel("محمد نادر شاه چند سال سلطنت کرد ؟", {
    "4": true,
    "7": false,
    "2": false,
    "5": false,
  }),
  QuestionModel("امیر عبدالرحمن خان در کدام سال وفات کرد ؟", {
    "1882": false,
    "1892": false,
    "1880": true,
    "1872": false,
  }),
    QuestionModel("احمد شاه بابا بعد از چند سال سلطنت به مریضی سرطان مبتلا شد و وفات کرد ؟", {
    "20": false,
    "26": true,
    "22": false,
    "24": false,
  }),
  QuestionModel("لقب کدام پادشاه افغانستان المتوکل علی الله بود ؟", {
    "غازی امان الله":false,
    "محمد نادر شاه":false,
    "محمد ظاهر شاه":true,
    "هیچکدام":false,
  }),
  QuestionModel("تیمور شاه مدت چند سال حکمروایی کرد ؟", {
    "15":false,
    "21":false,
    "25":false,
    "20":true,
  }),
];


// Biology Questions

List<QuestionModel> biologyQuestions =[
  QuestionModel("کوچکترین واحد ساختمانی و وظیفوی اجسام زنده ؟", {
    "نسج":false,
    "مفصل":false,
    "حجره":true,
    "یک درست است":false,
  }),
  QuestionModel("تعداد کروموزوم های انسان ؟", {
    "ده جوره":false,
    "بیست جوره":false,
    "ده دانه":false,
    "بیست سه جوره":true,
  }),
  QuestionModel("حجرات از لحاظ داشتن هسته به چند دسته تقسیم می شوند ؟", {
    "دو دسته":true,
    "یک دسته":false,
    "چند دسته":false,
    "هیچدام":false,
  }),
  QuestionModel("کمبود کدام عنصر باعث ضعف وضایعات استخوان و دندان میشود ؟", {
    "کلسیم":false,
    "فاسفورس":true,
    "آهن":false,
    "سودیم":false,
  }),
  QuestionModel("تنظیم میزان آب بدن وظیفه کدام عنصر است ؟", {
    "آهن":false,
    "فاسفورس":false,
    "کلسیم":false,
    "سودیم":true,
  })
];
