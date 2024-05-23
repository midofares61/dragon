import '../models/card.dart';
import '../models/excersises_model.dart';

List<CardModel> users = [
  CardModel(
      image: "assets/images/all/cover_chest_1.jpg",
      name: "الصدر مبتدئ",
      value: 1,
      excersises: [ 
        ExcersiseModel(
          image: "assets/images/chest/Barbell-Bench-Press.gif",
          name: "بار مستوي",
          sets: "10",
          description:
              'تمرين الضغط على المقعد هو أحد تمارين القوة الشائعة التي تستهدف في المقام الأول عضلات الصدر (الصدرية الكبرى والصغرى). يمكن إجراء التمرين بقبضات وزوايا مختلفة لاستهداف مناطق مختلفة من الصدر ويمكن إجراؤه بأشكال مختلفة مثل الميل أو الانحدار أو المقعد المسطح. إنه تمرين أساسي في كمال الأجسام ورفع الأثقال وتدريبات اللياقة البدنية العامة.',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/chest/Dumbbell-Press-1.gif",
          name: "تجميع مستوي",
          sets: "10",
          description:
              'تمرين الضغط بالدمبل هو تمرين كلاسيكي لتقوية الجزء العلوي من الجسم ويعمل على تمرين صدرك. عضلة الصدر هي العضلات الرئيسية التي يستهدفها التمرين، ولكن كمكافأة إضافية، فإنها تعمل أيضًا على تمرين العضلة الدالية الأمامية والعضلة ثلاثية الرؤوس. إنه بديل لضغط مقاعد البدلاء بالحديد ويقدم بعض المزايا الفريدة بسبب استخدام الدمبل الفردية.',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
        ExcersiseModel(
          name: "تفتيح فراشة",
          image: "assets/images/chest/Pec-Deck-Fly.gif",
          sets: "10",
          description:
              'يُعد تمرين Pec Deck fly بمثابة تمرين يعتمد على الآلة ويوفر الدعم للجسم أثناء الحركة. تعمل الآلة كمثبت هنا، مع التركيز على العضلة الصدرية الكبرى في الصدر والعضلة الصدرية الصغيرة الموجودة أسفلها مباشرةً. ويساعد ذلك على تقليل خطر الإصابة مقارنة بتمارين الصدر الأخرى التي تتطلب الأوزان الحرة. سيساعدك أيضًا على بناء عضلات صدرية محددة تمامًا، وذلك بفضل الجمع بين الدفع والضغط.',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/chest/Incline-Dumbbell-Press.gif",
          name: "تجميع عالي",
          sets: "10",
          description:
              'تمرين الضغط بالدمبل المائل هو أحد تمارين القوة التي تستهدف عضلات الصدر (الصدر العلوي)، بالإضافة إلى الكتفين والعضلة ثلاثية الرؤوس. يتم إجراؤها على مقعد مائل بزاوية 30-45 درجة، مع وجود دمبل في كل يد.',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
        ExcersiseModel(
          name: "تجميع مقلوب",
          image: "assets/images/chest/Decline-Dumbbell-Press.gif",
          sets: "10",
          description:
              'يعد تمرين الضغط بالدمبل أحد تمارين القوة الأساسية التي لها فوائد لعضلات الصدر السفلية والصدر المحدد المطلوب. ويفضل التعريف بالمنطقة السفلية للتمييز بين عضلات الصدر والبطن.',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/chest/High-Cable-Crossover.gif",
          name: "كابل كروس عالي",
          sets: "10",
          description:
              'كروس الكابل العالي هو تمرين بالكابل يستهدف عضلات الصدر. يتضمن ذلك استخدام آلة الكابلات مع ضبط البكرات على أعلى موضع وعبور الذراعين أمام الجسم في نهاية الحركة. تستهدف هذه الحركة عضلات الصدر، وتحديدًا المناطق السفلية والداخلية والخارجية، بينما تعمل أيضًا على الكتفين والعضلة ثلاثية الرؤوس كعضلات ثانوية..',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        )
      ]),
  CardModel(
      image: "assets/images/back2.jpg",
      name: "الظهر مبتدئ",
      value: 1,
      excersises: [
        ExcersiseModel(
          image: "assets/images/back/Lat-Pulldown.gif",
          name: "سحب امامي",
          sets: "10",
          description:
              'تمرين السحب للأسفل هو تمرين سحب يستهدف في المقام الأول العضلات الظهرية العريضة (المعروفة باسم "اللاتس") في ظهرك. يتضمن ذلك سحب شريط الكابل أو التعامل معه لأسفل باتجاه صدرك أثناء الجلوس على جهاز مصمم خصيصًا لهذا التمرين. عادةً ما يتم تنفيذ تمرين السحب للأسفل بقبضة واسعة، ولكن يمكن أيضًا إجراؤه بقبضة ضيقة أو قبضة سفلية لاستهداف مجموعات عضلية مختلفة في الظهر والذراعين. إنه تمرين شائع لبناء قوة الجزء العلوي من الجسم وتحسين وضعية الجسم',
          descriptionImage:
              'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/Seated-Cable-Row.gif",
          name: "سحب مسطرة علي المعدة",
          sets: "10",
          description:
              'يعد صف الكابل أثناء الجلوس تمرينًا شائعًا بالكابل يستهدف الجزء العلوي من الظهر واللاتين. يتضمن هذا التمرين سحب مرفق الكابل نحو جسمك أثناء الجلوس باستخدام آلة الكابل. سواء كنت مبتدئًا أو من ذوي الخبرة في رفع الأثقال، يمكن أن يكون هذا التمرين إضافة قيمة لبرنامجك التدريبي.',
          descriptionImage:
              'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/Lever-High-Row.gif",
          name: "هامر",
          sets: "10",
          description: '',
          descriptionImage:
              'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/Dumbbell-Row.gif",
          name: "سحب ضمبل",
          sets: "10",
          description:
              'تمرين التجديف بالدمبل هو تمرين فعال لتقوية عضلات الظهر وتطويرها. إن تمرين الصف بالدمبل بذراع واحدة هو تمرين أحادي الجانب يبني قوة وحجم العضلة الظهرية العريضة ويحسن الوظيفة العامة لمفصل الكتف. يعد تدريب ذراع واحدة في كل مرة أفضل طريقة لضمان التركيز الأمثل على العضلات المستهدفة وتعزيز توظيف الألياف والتغلب على اختلالات القوة بين جوانب جسمك.',
          descriptionImage:
              'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/close-grip-cable-row.gif",
          name: "سحب ارضي ديق",
          sets: "10",
          description:
              'مقبض على شكل حرف V: يوفر تصميم المقبض على شكل حرف V قبضة طبيعية أكثر، مما يمكن أن يحسن محاذاة المعصم ويقلل الضغط على المفاصل. يمكن أن يكون هذا مفيدًا بشكل خاص لأولئك الذين يعانون من آلام في الرسغ أو الكوع عند استخدام أنواع أخرى من المقابض.',
          descriptionImage:
              'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/Barbell-Deadlift.gif",
          name: "قطانية",
          sets: "10",
          description:
              'الرفعة المميتة هي تمرين مركب يتضمن رفع الوزن من الأرض إلى وضعية الوقوف. غالبًا ما يُعتبر واحدًا من أفضل التمارين لبناء القوة والقوة بشكل عام، حيث يعمل على تدريب مجموعات عضلية متعددة في جميع أنحاء الجسم.',
          descriptionImage:
              'assets/images/back/deadlift-muscle-worked-300x300.png',
        ),
      ]),
  CardModel(
      image: "assets/images/all/cover_shoulder_1.jpg",
      name: "الكتف مبتدئ",
      value: 1,
      excersises: [
        ExcersiseModel(
          image: "assets/images/shoulder/Lever-Shoulder-Press.gif",
          name: "امامي جهاز",
          sets: "10",
          description:
              'يعد تمرين ضغط الكتف بالرافعة أحد التمارين الفعالة المستخدمة في تطوير وتقوية عضلات الكتف. توفر آلة الرافعة نطاقًا موجهًا من الحركة، مما يسمح لك بالتركيز على الشكل المناسب وتقليل خطر الإصابة. يمكن أداء تمرين ضغط الكتف باستخدام مقابض وأوضاع مختلفة لليد، مما يوفر تنوعًا في تدريب كتفك.',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/shoulder/Two-Arm-Dumbbell-Front-Raise.gif",
          name: "رفرفة امامي",
          sets: "10",
          description:
              'وضع البداية: ما عليك سوى البدء بالوقوف مع الدمبل في يديك مع توجيه الجزء الخلفي من يديك للأمام. ',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/shoulder/Dumbbell-Shoulder-Press.gif",
          name: "تجميع جانبي",
          sets: "10",
          description:
              'تمرين الضغط على الكتف بالدمبل، والمعروف أيضًا باسم الضغط العلوي بالدمبل، هو تمرين يستهدف عضلات الكتفين والجزء العلوي من الجسم. وهو ينطوي على رفع زوج من الدمبل من مستوى الكتف إلى وضع علوي، باستخدام الكتفين والذراع',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/shoulder/Dumbbell-Lateral-Raise.gif",
          name: "رفرفة جانبي",
          sets: "10",
          description:
              'تمرين رفع الدمبل الجانبي هو تمرين يستهدف في المقام الأول العضلة الدالية الجانبية، وهي العضلات الموجودة على جانبي الكتفين. إنه تمرين عزل فعال لتطوير قوة الكتف وثباته وجمالياته.',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/shoulder/Face-Pull.gif",
          name: "حبل علي الوش",
          sets: "10",
          description:
              'يعد سحب الوجه تمرينًا هائلاً يعمل بشكل فعال على العديد من العضلات، بما في ذلك عضلات الكتف والظهر والجناح والعضلات شبه المنحرفة. كما أنه ينشط العضلات شبه المنحرفة، وقد يفيد الانزعاج الناجم عن ضعف العضلات مثل الوضع الوضعي وبروز لوح الكتف من خلال التأثير على العضلات تحت الشوكة والعضلات تحت الكتف التي تغطي لوح الكتف. بالإضافة إلى ذلك، يعد سحب الوجه أحد أكثر التمارين التصحيحية فعالية والتي تساعد على التعويض عن الوضعية السيئة وخلل الكتف.',
          descriptionImage:
              'assets/images/shoulder/muscle-worked-in-the-face-pull-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/pek-fly-reverse.gif",
          name: " فراشة عكس",
          sets: "10",
          description:
              'اضبط المقعد بحيث تكون المقابض عند مستوى الكتف، وتأكد من الحفاظ على وضعية جيدة للرقبة وأسفل الظهر',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/shoulder/Dumbbell-Shrug.gif",
          name: "هز اكتاف ضمبل",
          sets: "10",
          description:
              'هزات الدمبل هي تمرين يستهدف في المقام الأول العضلات شبه المنحرفة، والتي تقع في منطقة الجزء العلوي من الظهر والرقبة. بشكل عام، هزات الدمبل هي تمرين بسيط ولكنه فعال يمكن أن يوفر العديد من الفوائد لياقتك البدنية بشكل عام. سواء كنت مبتدئًا أو من رواد صالة الألعاب الرياضية ذوي الخبرة، فإن إضافة الدمبل إلى روتين التمرين يمكن أن يساعدك على تحقيق أهداف اللياقة البدنية الخاصة بك..',
          descriptionImage:
              'assets/images/shoulder/barbell-shrug-muscle-worked-300x300.png',
        ),
      ]),
  CardModel(
      image: "assets/images/all/cover_arm_1.jpg",
      name: "الذراع مبتدئ",
      value: 1,
      excersises: [
        ExcersiseModel(
          image: "assets/images/arm/cable-curl.gif",
          name: "مسطرة واسع كامل",
          sets: "10",
          description:
              'تمرين ثني الكابل هو تمرين عزل لعضلة البايسبس. إنها عملية سحب يتم إجراؤها باستخدام آلة الكابلات وهي مناسبة للمبتدئين.',
          descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Close-Grip-Z-Bar-Curl.gif",
          name: "بار ضيق كامل",
          sets: "10",
          description: '',
          descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Two-dumbbell-preacher-curl.gif",
          name: "ارتكاز حصان",
          sets: "10",
          description: '',
          descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Hammer-Curl.gif",
          name: "ضمبل شاكوش",
          sets: "10",
          description:
              'تمرين ثني المطرقة هو تمرين تدريبي للقوة يستهدف في المقام الأول عضلات العضلة ذات الرأسين في الجزء العلوي من الذراع. يتم إجراؤها عن طريق حمل وزن في كل يد بقبضة محايدة، مما يعني أن راحتي اليدين تواجهان بعضهما البعض، ثم لف الأوزان باتجاه الكتفين. تستهدف القبضة المحايدة العضلة العضدية الكعبرية، الموجودة في الجزء الخارجي من الساعد وتساعد في ثني مفصل الكوع.',
          descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Rope-Pushdown.gif",
          name: "حبل ثمانية",
          sets: "10",
          description:
              'وضع البداية: قم بتوصيل حبل ملحق بالجزء العلوي من جهاز الكابل. أمسك الحبل بيديك في مواجهة بعضهما البعض، ثم قم بالزفير واسحب الحبل للأسفل باتجاه خصرك. انتظر للحظة وجيزة ثم عد ببطء إلى وضع البداية.',
          descriptionImage:
              'assets/images/arm/triceps-muscle-worked-1-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Dumbbell-Incline-Two-Arm-Extension.gif",
          name: "ضمبل فرانساوي",
          sets: "10",
          description:
              'ابدأ بوضع المقعد بحيث يكون بزاوية تتراوح بين 45 و75 درجة، أو نحو ذلك، أمسك دمبلًا واحدًا واحمل ذراعيك بشكل مستقيم نحو السقف. خذ شهيقًا أثناء ثني مرفقيك، ودع الدمبل يتحرك بجوار جانبي رأسك مباشرةً. انتظر لمدة ثانية قصيرة في الأسفل ثم قم بالزفير وقم بتصويب ذراعيك..',
          descriptionImage:
              'assets/images/arm/triceps-muscle-worked-1-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Side-One-Arm-Reverse-Pushdown.gif",
          name: "حبل فردي",
          sets: "10",
          description: '',
          descriptionImage:
              'assets/images/arm/triceps-muscle-worked-1-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Reverse-Grip-Pushdown.gif",
          name: "مسطرة من فوق",
          sets: "10",
          description:
              'إن الضغط للأسفل بالقبضة العكسية عبارة عن حركة عزل لمفصل واحد، والتي تعزل العضلة ثلاثية الرؤوس دون مساعدة مجموعات العضلات أو المفاصل الأخرى. تضع القبضة السفلية مزيدًا من الضغط على الرأس الأوسط للعضلة ثلاثية الرؤوس. نظرًا لأنه يساعد على استهداف أحد الرأس على وجه التحديد، فمن المهم أن تقوم بدمجه في روتينك، إن لم يكن في كل تمرين، لتحقيق تنمية متوازنة..',
          descriptionImage:
              'assets/images/arm/triceps-muscle-worked-1-300x300.png',
        ),
        ExcersiseModel(
          image:
              "assets/images/arm/Barbell-Reverse-Wrist-Curl-Over-a-Bench.gif",
          name: "رست",
          sets: "10",
          description: '',
          descriptionImage: '',
        ),
      ]),
  CardModel(
      image: "assets/images/all/cover_leg_1.jpg",
      name: "الساقين والبطن مبتدئ",
      value: 1,
      excersises: [
        ExcersiseModel(
          image: "assets/images/leg/LEG-EXTENSION.gif",
          name: "امامي",
          sets: "10",
          description:
              'تمديدات الساق هي تمرين عزل شائع يستهدف في المقام الأول عضلات الفخذ الرباعية، والتي تقع في الجزء الأمامي من الفخذ. تتضمن تمارين تمديد الساق عادة استخدام آلة تمديد الساق الموجودة في معظم صالات الألعاب الرياضية. فيما يلي دليل خطوة بخطوة حول كيفية إجراء تمديدات الساق',
          descriptionImage:
              'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Leg-Press.gif",
          name: "مكبس 7 واسع",
          sets: "10",
          description:
              'تمرين الضغط على الساق، هو نوع من تمارين القوة. إنها حركة فعالة لتقوية عضلات الفخذ الرباعية الموجودة في الجزء الأمامي من الجزء العلوي من ساقيك. يتم إجراؤها عادةً باستخدام آلة ضغط الأرجل، والتي تتكون عادةً من مقعد ومنصة يمكن إضافة لوحات الوزن إليها.',
          descriptionImage:
              'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/BARBELL-SQUAT.gif",
          name: "سكواد بار 11",
          sets: "10",
          description:
              'القرفصاء بالحديد هو تمرين تدريبي للقوة يستهدف عضلات الجزء السفلي من الجسم، وخاصة عضلات الفخذ الرباعية وأوتار الركبة والأرداف. وهو تمرين مركب، بمعنى أنه يعمل على عدة مجموعات عضلية في وقت واحد. يتم تنفيذ التمرين باستخدام الحديد، وهو شريط طويل مستقيم مثقل بألواح.',
          descriptionImage:
              'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Leg-Curl.gif",
          name: "خلفي",
          sets: "10",
          description:
              'تمرين ثني الساق هو تمرين عزل يستهدف عضلات الجزء الخلفي من الفخذ، وتحديدًا أوتار الركبة. إنه تمرين فعال لتطوير القوة والحجم والتحمل العضلي في أوتار الركبة. يتم إجراؤها عادةً باستخدام آلة تجعيد الساق الموجودة في الصالات الرياضية أو مراكز اللياقة البدنية.',
          descriptionImage:
              'assets/images/leg/leg-curl-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Hack-Squat-Calf-Raise.gif",
          name: "سمانة جهاز",
          sets: "10",
          description:
              'نظرًا لأن مجموعة العضلات المستهدفة في هذا التمرين المصممة للعزل هي عضلات الساق، فيمكن تحقيق أقصى قدر من نمو العضلات من خلال التركيز بشكل أكبر على العضلات في هذه المنطقة..',
          descriptionImage: 'assets/images/leg/calf-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Barbell-Seated-Calf-Raise.gif",
          name: "سمانة",
          sets: "10",
          description: '',
          descriptionImage: 'assets/images/leg/calf-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Decline-Sit-up.gif",
          name: "بطن",
          sets: "10",
          description:
              'تستهدف تمارين الجلوس المائلة عضلات البطن المستقيمة والعضلات المائلة لتقوية العضلات الأساسية. إنه تمرين يمكنك تطبيقه لتشكيل عضلات البطن العلوية والعضلات الستة.',
          descriptionImage:
              'assets/images/leg/Crunch-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Ab-Coaster-Machine.gif",
          name: "بطن",
          sets: "10",
          description:
              'AB Coaster عبارة عن قطعة من معدات التمارين الرياضية المصممة لاستهداف عضلات البطن. يتكون من مسار منحني يسمح للمستخدم بأداء حركة متدحرجة أثناء الجلوس، مما يركز على عضلات البطن المستقيمة والعضلات المائلة.',
          descriptionImage:
              'assets/images/leg/Crunch-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Captains-Chair-Leg-Raise.gif",
          name: "بطن",
          sets: "10",
          description:
              'يعمل هذا التمرين الذي يعمل على تقوية عضلات الورك على تحسين عضلاتك الأساسية، وخاصة عضلات البطن السفلية. بالإضافة إلى ذلك، تعمل عضلات الظهر والصدر والعضلات شبه المنحرفة كمثبتات أثناء التمرين.',
          descriptionImage:
              'assets/images/leg/Captains-Chair-Leg-Raise-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Weighted-Front-Plank.gif",
          name: "بلانك",
          sets: "10",
          description:
              'إنه تنوع خشبي مصنوع عن طريق إضافة الوزن. ويفضل في الغالب للرياضيين المتقدمين. باعتبارها حركة متعددة الوظائف، لا تستهدف اللوح عضلات البطن فحسب، بل تستهدف أيضًا العمود الفقري والورك. يقوي اللوح ويشد جسمك بالكامل، ويحسن وضعك وتوازنك، ويقلل من الدهون في الجسم، ويمكن أن يساعد في تعزيز عملية التمثيل الغذائي لديك..',
          descriptionImage: 'assets/images/leg/plank-muscle-worked-300x300.png',
        ),
      ]),
];
List<CardModel> midUsers = [
  CardModel(
      image: "assets/images/all/cover_chest_2.jpg",
      name: "الصدر متوسط",
      value: 2,
      excersises: [
        ExcersiseModel(
          image: "assets/images/chest/Incline-Barbell-Bench-Press.gif",
          name: "بار عالي",
          sets: "10",
          description:
              'تمرين الضغط على المقعد المائل هو تمرين مركب يستهدف في المقام الأول عضلات الصدر العلوية، ولكنه يشغل أيضًا الكتفين الأماميين والعضلة ثلاثية الرؤوس. يتم تنفيذ الحركة عادة على مقعد مائل مرفوع بزاوية حوالي 30 إلى 45 درجة.',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/chest/Incline-Dumbbell-Press.gif",
          name: "تجميع عالي",
          sets: "10",
          description:
              'تمرين الضغط بالدمبل المائل هو أحد تمارين القوة التي تستهدف عضلات الصدر (الصدر العلوي)، بالإضافة إلى الكتفين والعضلة ثلاثية الرؤوس. يتم إجراؤها على مقعد مائل بزاوية 30-45 درجة، مع وجود دمبل في كل يد.',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
        ExcersiseModel(
          name: "تفتيح فراشة",
          image: "assets/images/chest/Pec-Deck-Fly.gif",
          sets: "10",
          description:
              'يُعد تمرين Pec Deck fly بمثابة تمرين يعتمد على الآلة ويوفر الدعم للجسم أثناء الحركة. تعمل الآلة كمثبت هنا، مع التركيز على العضلة الصدرية الكبرى في الصدر والعضلة الصدرية الصغيرة الموجودة أسفلها مباشرةً. ويساعد ذلك على تقليل خطر الإصابة مقارنة بتمارين الصدر الأخرى التي تتطلب الأوزان الحرة. سيساعدك أيضًا على بناء عضلات صدرية محددة تمامًا، وذلك بفضل الجمع بين الدفع والضغط',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/chest/Dumbbell-Press-1.gif",
          name: "تجميع مستوي",
          sets: "10",
          description:
              'تمرين الضغط بالدمبل هو تمرين كلاسيكي لتقوية الجزء العلوي من الجسم ويعمل على تمرين صدرك. عضلة الصدر هي العضلات الرئيسية التي يستهدفها التمرين، ولكن كمكافأة إضافية، فإنها تعمل أيضًا على تمرين العضلة الدالية الأمامية والعضلة ثلاثية الرؤوس. إنه بديل لضغط مقاعد البدلاء بالحديد ويقدم بعض المزايا الفريدة بسبب استخدام الدمبل الفردية.',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
        ExcersiseModel(
          name: "تجميع مقلوب",
          image: "assets/images/chest/Decline-Dumbbell-Press.gif",
          sets: "10",
          description:
              'يعد تمرين الضغط بالدمبل أحد تمارين القوة الأساسية التي لها فوائد لعضلات الصدر السفلية والصدر المحدد المطلوب. ويفضل التعريف بالمنطقة السفلية للتمييز بين عضلات الصدر والبطن.',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/chest/High-Cable-Crossover.gif",
          name: "كابل كروس عالي",
          sets: "10",
          description:
              'كروس الكابل العالي هو تمرين بالكابل يستهدف عضلات الصدر. يتضمن ذلك استخدام آلة الكابلات مع ضبط البكرات على أعلى موضع وعبور الذراعين أمام الجسم في نهاية الحركة. تستهدف هذه الحركة عضلات الصدر، وتحديدًا المناطق السفلية والداخلية والخارجية، بينما تعمل أيضًا على الكتفين والعضلة ثلاثية الرؤوس كعضلات ثانوية..',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        )
      ]),
  CardModel(
      image: "assets/images/back.jpg",
      name: "الظهر متوسط",
      value: 2,
      excersises: [
        ExcersiseModel(
          image: "assets/images/back/Lat-Pulldown.gif",
          name: "سحب امامي",
          sets: "10",
          description:
              'تمرين السحب للأسفل هو تمرين سحب يستهدف في المقام الأول العضلات الظهرية العريضة (المعروفة باسم "اللاتس") في ظهرك. يتضمن ذلك سحب شريط الكابل أو التعامل معه لأسفل باتجاه صدرك أثناء الجلوس على جهاز مصمم خصيصًا لهذا التمرين. عادةً ما يتم تنفيذ تمرين السحب للأسفل بقبضة واسعة، ولكن يمكن أيضًا إجراؤه بقبضة ضيقة أو قبضة سفلية لاستهداف مجموعات عضلية مختلفة في الظهر والذراعين. إنه تمرين شائع لبناء قوة الجزء العلوي من الجسم وتحسين وضعية الجسم',
          descriptionImage:
              'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/Rope-Straight-Arm-Pulldown.gif",
          name: "تعريض مسطرة",
          sets: "10",
          description:
              'يعمل حبل السحب المستقيم للذراع على تدريب عضلات البطن من خلال نطاق طويل من الحركة، وهو مفيد للأشخاص الذين يجدون صعوبة في الشعور بظهورهم أثناء ممارسة تمارين السحب التقليدية. توفر حركات الكابلات توترًا مستمرًا طوال الحركة بأكملها. يتيح لك استخدام الكابلات العمل على الأجزاء متحدة المركز وغريبة الأطوار من التمرين. المزيد من التوتر يعني المزيد من تنشيط العضلات',
          descriptionImage:
              'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/Barbell-Bent-Over-Row.gif",
          name: "سحب علي المعدة بار",
          sets: "10",
          description:
              'تمرين Barbell Bent Over Row هو تمرين رفع الأثقال المركب الذي يستهدف في المقام الأول عضلات الجزء العلوي من الظهر، بما في ذلك عضلات الظهر (latissimus dorsi)، والمعينية، والفخاخ، بالإضافة إلى العضلة ذات الرأسين والدالية الخلفية. كما أنه يشغل العضلات الأساسية لتحقيق الاستقرار. يستخدم هذا التمرين عادة لبناء القوة والكتلة العضلية في الظهر والذراعين.',
          descriptionImage:
              'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/Dumbbell-Row.gif",
          name: "سحب ضمبل",
          sets: "10",
          description:
              'تمرين التجديف بالدمبل هو تمرين فعال لتقوية عضلات الظهر وتطويرها. إن تمرين الصف بالدمبل بذراع واحدة هو تمرين أحادي الجانب يبني قوة وحجم العضلة الظهرية العريضة ويحسن الوظيفة العامة لمفصل الكتف. يعد تدريب ذراع واحدة في كل مرة أفضل طريقة لضمان التركيز الأمثل على العضلات المستهدفة وتعزيز توظيف الألياف والتغلب على اختلالات القوة بين جوانب جسمك.',
          descriptionImage:
              'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/close-grip-cable-row.gif",
          name: "سحب ارضي ديق",
          sets: "10",
          description:
              'مقبض على شكل حرف V: يوفر تصميم المقبض على شكل حرف V قبضة طبيعية أكثر، مما يمكن أن يحسن محاذاة المعصم ويقلل الضغط على المفاصل. يمكن أن يكون هذا مفيدًا بشكل خاص لأولئك الذين يعانون من آلام في الرسغ أو الكوع عند استخدام أنواع أخرى من المقابض.',
          descriptionImage:
              'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/Barbell-Deadlift.gif",
          name: "قطانية",
          sets: "10",
          description:
              'الرفعة المميتة هي تمرين مركب يتضمن رفع الوزن من الأرض إلى وضعية الوقوف. غالبًا ما يُعتبر واحدًا من أفضل التمارين لبناء القوة والقوة بشكل عام، حيث يعمل على تدريب مجموعات عضلية متعددة في جميع أنحاء الجسم.',
          descriptionImage:
              'assets/images/back/deadlift-muscle-worked-300x300.png',
        ),
      ]),
  CardModel(
      image: "assets/images/all/cover_shoulder_2.jpg",
      name: "الكتف متوسط",
      value: 2,
      excersises: [
        ExcersiseModel(
          image: "assets/images/shoulder/Dumbbell-Shoulder-Press.gif",
          name: "تجميع جانبي",
          sets: "10",
          description:
              'تمرين الضغط على الكتف بالدمبل، والمعروف أيضًا باسم الضغط العلوي بالدمبل، هو تمرين يستهدف عضلات الكتفين والجزء العلوي من الجسم. وهو ينطوي على رفع زوج من الدمبل من مستوى الكتف إلى وضع علوي، باستخدام الكتفين والذراع',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/shoulder/Dumbbell-Lateral-Raise.gif",
          name: "رفرفة جانبي",
          sets: "10",
          description:
              'تمرين رفع الدمبل الجانبي هو تمرين يستهدف في المقام الأول العضلة الدالية الجانبية، وهي العضلات الموجودة على جانبي الكتفين. إنه تمرين عزل فعال لتطوير قوة الكتف وثباته وجمالياته.',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image:
              "assets/images/shoulder/Incline-Dumbbell-Side-Lateral-Raise.gif",
          name: "جانبي طرابيزة",
          sets: "10",
          description:
              'تمرين الرفع الجانبي المائل بذراع واحدة هو تمرين يستهدف الرأس الجانبي لعضلات الكتف. العديد من الحركات التي تعمل على نفس المجموعة العضلية قد تبدو متشابهة، لكنها تركز على أجزاء مختلفة من العضلات لأنها في زوايا مختلفة. إذا كنت ترغب في تطوير عضلات أفضل على وجه التحديد، فضع في اعتبارك أنه من المفيد تضمين التمارين التي تركز على جوانب مختلفة في برنامجك التدريبي..',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/shoulder/Arnold-Press.gif",
          name: "تجميع امامي",
          sets: "10",
          description:
              'تمرين ضغط أرنولد هو أحد تمارين القوة الشائعة التي طورها أرنولد شوارزنيجر في السبعينيات. يعد هذا التمرين أحد أشكال تمرين ضغط الكتف التقليدي، ويتضمن حركة دورانية تستهدف عضلات متعددة في الكتفين والعضلة ثلاثية الرؤوس وأعلى الظهر. فيما يلي دليل شامل لـ Arnold Press، بما في ذلك فوائدها وتقنياتها وتنوعاتها.',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/shoulder/Two-Arm-Dumbbell-Front-Raise.gif",
          name: "رفرفة امامي",
          sets: "10",
          description:
              'وضع البداية: ما عليك سوى البدء بالوقوف مع الدمبل في يديك مع توجيه الجزء الخلفي من يديك للأمام. ',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/shoulder/Face-Pull.gif",
          name: "حبل علي الوش",
          sets: "10",
          description:
              'يعد سحب الوجه تمرينًا هائلاً يعمل بشكل فعال على العديد من العضلات، بما في ذلك عضلات الكتف والظهر والجناح والعضلات شبه المنحرفة. كما أنه ينشط العضلات شبه المنحرفة، وقد يفيد الانزعاج الناجم عن ضعف العضلات مثل الوضع الوضعي وبروز لوح الكتف من خلال التأثير على العضلات تحت الشوكة والعضلات تحت الكتف التي تغطي لوح الكتف. بالإضافة إلى ذلك، يعد سحب الوجه أحد أكثر التمارين التصحيحية فعالية والتي تساعد على التعويض عن الوضعية السيئة وخلل الكتف.',
          descriptionImage:
              'assets/images/shoulder/muscle-worked-in-the-face-pull-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/pek-fly-reverse.gif",
          name: " فراشة عكس",
          sets: "10",
          description:
              'اضبط المقعد بحيث تكون المقابض عند مستوى الكتف، وتأكد من الحفاظ على وضعية جيدة للرقبة وأسفل الظهر',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/shoulder/Dumbbell-Shrug.gif",
          name: "هز اكتاف ضمبل",
          sets: "10",
          description:
              'هزات الدمبل هي تمرين يستهدف في المقام الأول العضلات شبه المنحرفة، والتي تقع في منطقة الجزء العلوي من الظهر والرقبة. بشكل عام، هزات الدمبل هي تمرين بسيط ولكنه فعال يمكن أن يوفر العديد من الفوائد لياقتك البدنية بشكل عام. سواء كنت مبتدئًا أو من رواد صالة الألعاب الرياضية ذوي الخبرة، فإن إضافة الدمبل إلى روتين التمرين يمكن أن يساعدك على تحقيق أهداف اللياقة البدنية الخاصة بك..',
          descriptionImage:
              'assets/images/shoulder/barbell-shrug-muscle-worked-300x300.png',
        ),
      ]),
  CardModel(
      image: "assets/images/all/cover_arm_2.jpg",
      name: "الذراع متوسط",
      value: 2,
      excersises: [
        ExcersiseModel(
          image: "assets/images/arm/Close-Grip-Z-Bar-Curl.gif",
          name: "بار ضيق كامل",
          sets: "10",
          description: '',
          descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/cable-curl.gif",
          name: "مسطرة كامل",
          sets: "10",
          description:
              'تمرين ثني الكابل هو تمرين عزل لعضلة البايسبس. إنها عملية سحب يتم إجراؤها باستخدام آلة الكابلات وهي مناسبة للمبتدئين.',
          descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Hammer-Curl.gif",
          name: "ضمبل شاكوش",
          sets: "10",
          description:
              'تمرين ثني المطرقة هو تمرين تدريبي للقوة يستهدف في المقام الأول عضلات العضلة ذات الرأسين في الجزء العلوي من الذراع. يتم إجراؤها عن طريق حمل وزن في كل يد بقبضة محايدة، مما يعني أن راحتي اليدين تواجهان بعضهما البعض، ثم لف الأوزان باتجاه الكتفين. تستهدف القبضة المحايدة العضلة العضدية الكعبرية، الموجودة في الجزء الخارجي من الساعد وتساعد في ثني مفصل الكوع.',
          descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Rope-Pushdown.gif",
          name: "حبل ثمانية",
          sets: "10",
          description:
              'وضع البداية: قم بتوصيل حبل ملحق بالجزء العلوي من جهاز الكابل. أمسك الحبل بيديك في مواجهة بعضهما البعض، ثم قم بالزفير واسحب الحبل للأسفل باتجاه خصرك. انتظر للحظة وجيزة ثم عد ببطء إلى وضع البداية.',
          descriptionImage:
              'assets/images/arm/triceps-muscle-worked-1-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Dumbbell-Incline-Two-Arm-Extension.gif",
          name: "ضمبل فرانساوي",
          sets: "10",
          description:
              'ابدأ بوضع المقعد بحيث يكون بزاوية تتراوح بين 45 و75 درجة، أو نحو ذلك، أمسك دمبلًا واحدًا واحمل ذراعيك بشكل مستقيم نحو السقف. خذ شهيقًا أثناء ثني مرفقيك، ودع الدمبل يتحرك بجوار جانبي رأسك مباشرةً. انتظر لمدة ثانية قصيرة في الأسفل ثم قم بالزفير وقم بتصويب ذراعيك..',
          descriptionImage:
              'assets/images/arm/triceps-muscle-worked-1-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Side-One-Arm-Reverse-Pushdown.gif",
          name: "حبل فردي",
          sets: "10",
          description: '',
          descriptionImage:
              'assets/images/arm/triceps-muscle-worked-1-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Reverse-Grip-Pushdown.gif",
          name: "مسطرة من فوق",
          sets: "10",
          description:
              'إن الضغط للأسفل بالقبضة العكسية عبارة عن حركة عزل لمفصل واحد، والتي تعزل العضلة ثلاثية الرؤوس دون مساعدة مجموعات العضلات أو المفاصل الأخرى. تضع القبضة السفلية مزيدًا من الضغط على الرأس الأوسط للعضلة ثلاثية الرؤوس. نظرًا لأنه يساعد على استهداف أحد الرأس على وجه التحديد، فمن المهم أن تقوم بدمجه في روتينك، إن لم يكن في كل تمرين، لتحقيق تنمية متوازنة..',
          descriptionImage:
              'assets/images/arm/triceps-muscle-worked-1-300x300.png',
        ),
        ExcersiseModel(
          image:
              "assets/images/arm/Barbell-Reverse-Wrist-Curl-Over-a-Bench.gif",
          name: "رست",
          sets: "10",
          description: '',
          descriptionImage: '',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Dumbbell-Wrist-Curl.gif",
          name: "رست",
          sets: "10",
          description: '',
          descriptionImage: '',
        )
      ]),
  CardModel(
      image: "assets/images/all/cover_leg_2.jpg",
      name: "الساقين والبطن متوسط",
      value: 2,
      excersises: [
        ExcersiseModel(
          image: "assets/images/leg/LEG-EXTENSION.gif",
          name: "امامي",
          sets: "10",
          description:
              'تمديدات الساق هي تمرين عزل شائع يستهدف في المقام الأول عضلات الفخذ الرباعية، والتي تقع في الجزء الأمامي من الفخذ. تتضمن تمارين تمديد الساق عادة استخدام آلة تمديد الساق الموجودة في معظم صالات الألعاب الرياضية. فيما يلي دليل خطوة بخطوة حول كيفية إجراء تمديدات الساق',
          descriptionImage:
              'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/BARBELL-SQUAT.gif",
          name: "سكواد بار 11",
          sets: "10",
          description:
              'القرفصاء بالحديد هو تمرين تدريبي للقوة يستهدف عضلات الجزء السفلي من الجسم، وخاصة عضلات الفخذ الرباعية وأوتار الركبة والأرداف. وهو تمرين مركب، بمعنى أنه يعمل على عدة مجموعات عضلية في وقت واحد. يتم تنفيذ التمرين باستخدام الحديد، وهو شريط طويل مستقيم مثقل بألواح.',
          descriptionImage:
              'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Leg-Press.gif",
          name: "مكبس 7 واسع",
          sets: "10",
          description:
              'تمرين الضغط على الساق، هو نوع من تمارين القوة. إنها حركة فعالة لتقوية عضلات الفخذ الرباعية الموجودة في الجزء الأمامي من الجزء العلوي من ساقيك. يتم إجراؤها عادةً باستخدام آلة ضغط الأرجل، والتي تتكون عادةً من مقعد ومنصة يمكن إضافة لوحات الوزن إليها.',
          descriptionImage:
              'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Dumbbell-Rear-Lunge.gif",
          name: "مقصات",
          sets: "10",
          description:
              'العديد من الحركات التي تعمل على نفس المجموعة العضلية قد تبدو متشابهة، لكنها تركز على أجزاء مختلفة من العضلات لأنها في زوايا مختلفة. إذا كنت ترغب في بناء عضلات أفضل على وجه التحديد، فضع في اعتبارك أنه من المفيد تضمين التمارين التي تركز على جوانب مختلفة لبرنامجك التدريبي..',
          descriptionImage:
              'assets/images/leg/Pistol-squat-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Leg-Curl.gif",
          name: "خلفي",
          sets: "10",
          description:
              'تمرين ثني الساق هو تمرين عزل يستهدف عضلات الجزء الخلفي من الفخذ، وتحديدًا أوتار الركبة. إنه تمرين فعال لتطوير القوة والحجم والتحمل العضلي في أوتار الركبة. يتم إجراؤها عادةً باستخدام آلة تجعيد الساق الموجودة في الصالات الرياضية أو مراكز اللياقة البدنية.',
          descriptionImage:
              'assets/images/leg/leg-curl-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Hack-Squat-Calf-Raise.gif",
          name: "سمانة جهاز",
          sets: "10",
          description:
              'نظرًا لأن مجموعة العضلات المستهدفة في هذا التمرين المصممة للعزل هي عضلات الساق، فيمكن تحقيق أقصى قدر من نمو العضلات من خلال التركيز بشكل أكبر على العضلات في هذه المنطقة..',
          descriptionImage: 'assets/images/leg/calf-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Barbell-Seated-Calf-Raise.gif",
          name: "سمانة",
          sets: "10",
          description: '',
          descriptionImage: 'assets/images/leg/calf-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Decline-Sit-up.gif",
          name: "بطن",
          sets: "10",
          description:
              'تستهدف تمارين الجلوس المائلة عضلات البطن المستقيمة والعضلات المائلة لتقوية العضلات الأساسية. إنه تمرين يمكنك تطبيقه لتشكيل عضلات البطن العلوية والعضلات الستة.',
          descriptionImage:
              'assets/images/leg/Crunch-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Ab-Coaster-Machine.gif",
          name: "بطن",
          sets: "10",
          description:
              'AB Coaster عبارة عن قطعة من معدات التمارين الرياضية المصممة لاستهداف عضلات البطن. يتكون من مسار منحني يسمح للمستخدم بأداء حركة متدحرجة أثناء الجلوس، مما يركز على عضلات البطن المستقيمة والعضلات المائلة.',
          descriptionImage:
              'assets/images/leg/Crunch-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Captains-Chair-Leg-Raise.gif",
          name: "بطن",
          sets: "10",
          description:
              'يعمل هذا التمرين الذي يعمل على تقوية عضلات الورك على تحسين عضلاتك الأساسية، وخاصة عضلات البطن السفلية. بالإضافة إلى ذلك، تعمل عضلات الظهر والصدر والعضلات شبه المنحرفة كمثبتات أثناء التمرين.',
          descriptionImage:
              'assets/images/leg/Captains-Chair-Leg-Raise-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Weighted-Front-Plank.gif",
          name: "بلانك",
          sets: "10",
          description:
              'إنه تنوع خشبي مصنوع عن طريق إضافة الوزن. ويفضل في الغالب للرياضيين المتقدمين. باعتبارها حركة متعددة الوظائف، لا تستهدف اللوح عضلات البطن فحسب، بل تستهدف أيضًا العمود الفقري والورك. يقوي اللوح ويشد جسمك بالكامل، ويحسن وضعك وتوازنك، ويقلل من الدهون في الجسم، ويمكن أن يساعد في تعزيز عملية التمثيل الغذائي لديك..',
          descriptionImage: 'assets/images/leg/plank-muscle-worked-300x300.png',
        ),
      ]),
];
List<CardModel> profUsers = [
  CardModel(
      image: "assets/images/all/cover_chest_3.jpg",
      name: "الصدر محترف",
      value: 3,
      excersises: [
        ExcersiseModel(
          image: "assets/images/chest/Incline-Barbell-Bench-Press.gif",
          name: "بار عالي",
          sets: "10",
          description:
              'تمرين الضغط على المقعد المائل هو تمرين مركب يستهدف في المقام الأول عضلات الصدر العلوية، ولكنه يشغل أيضًا الكتفين الأماميين والعضلة ثلاثية الرؤوس. يتم تنفيذ الحركة عادة على مقعد مائل مرفوع بزاوية حوالي 30 إلى 45 درجة.',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/chest/Barbell-Bench-Press.gif",
          name: "بار مستوي",
          sets: "10",
          description:
              'تمرين الضغط على المقعد هو أحد تمارين القوة الشائعة التي تستهدف في المقام الأول عضلات الصدر (الصدرية الكبرى والصغرى). يمكن إجراء التمرين بقبضات وزوايا مختلفة لاستهداف مناطق مختلفة من الصدر ويمكن إجراؤه بأشكال مختلفة مثل الميل أو الانحدار أو المقعد المسطح. إنه تمرين أساسي في كمال الأجسام ورفع الأثقال وتدريبات اللياقة البدنية العامة.',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/chest/Incline-dumbbell-Fly.gif",
          name: "تفتيح عالي",
          sets: "10",
          description:
              'يعد تمرين ذبابة الدمبل المائلة تمرينًا معزولًا يستهدف عضلات الصدر العلوية التي يصعب تطويرها',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/chest/Dumbbell-Press-1.gif",
          name: "تجميع مستوي دروب 6",
          sets: "10",
          description:
              'تمرين الضغط بالدمبل هو تمرين كلاسيكي لتقوية الجزء العلوي من الجسم ويعمل على تمرين صدرك. عضلة الصدر هي العضلات الرئيسية التي يستهدفها التمرين، ولكن كمكافأة إضافية، فإنها تعمل أيضًا على تمرين العضلة الدالية الأمامية والعضلة ثلاثية الرؤوس. إنه بديل لضغط مقاعد البدلاء بالحديد ويقدم بعض المزايا الفريدة بسبب استخدام الدمبل الفردية.',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/chest/Pec-Deck-Fly.gif",
          name: "تفتيح فراشة",
          sets: "10",
          description:
              'يُعد تمرين Pec Deck fly بمثابة تمرين يعتمد على الآلة ويوفر الدعم للجسم أثناء الحركة. تعمل الآلة كمثبت هنا، مع التركيز على العضلة الصدرية الكبرى في الصدر والعضلة الصدرية الصغيرة الموجودة أسفلها مباشرةً. ويساعد ذلك على تقليل خطر الإصابة مقارنة بتمارين الصدر الأخرى التي تتطلب الأوزان الحرة. سيساعدك أيضًا على بناء عضلات صدرية محددة تمامًا، وذلك بفضل الجمع بين الدفع والضغط',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/chest/Decline-Dumbbell-Press.gif",
          name: "بار مقلوب",
          sets: "10",
          description:
              'يعد تمرين الضغط على مقاعد البدلاء من سميث من تمارين القوة الأساسية التي لها فوائد لعضلات الصدر السفلية والصدر المحددة المرغوبة. ويفضل التعريف بالمنطقة السفلية للتمييز بين عضلات الصدر والبطن.',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/chest/High-Cable-Crossover.gif",
          name: "كابل كروس عالي",
          sets: "10",
          description:
              'كروس الكابل العالي هو تمرين بالكابل يستهدف عضلات الصدر. يتضمن ذلك استخدام آلة الكابلات مع ضبط البكرات على أعلى موضع وعبور الذراعين أمام الجسم في نهاية الحركة. تستهدف هذه الحركة عضلات الصدر، وتحديدًا المناطق السفلية والداخلية والخارجية، بينما تعمل أيضًا على الكتفين والعضلة ثلاثية الرؤوس كعضلات ثانوية..',
          descriptionImage:
              'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
        ),
      ]),
  CardModel(
      image: "assets/images/all/cover_shoulder_3.jpg",
      name: "الظهر محترف",
      value: 3,
      excersises: [
        ExcersiseModel(
          image: "assets/images/back/Lat-Pulldown.gif",
          name: "سحب امامي",
          sets: "10",
          description:
              'تمرين السحب للأسفل هو تمرين سحب يستهدف في المقام الأول العضلات الظهرية العريضة (المعروفة باسم "اللاتس") في ظهرك. يتضمن ذلك سحب شريط الكابل أو التعامل معه لأسفل باتجاه صدرك أثناء الجلوس على جهاز مصمم خصيصًا لهذا التمرين. عادةً ما يتم تنفيذ تمرين السحب للأسفل بقبضة واسعة، ولكن يمكن أيضًا إجراؤه بقبضة ضيقة أو قبضة سفلية لاستهداف مجموعات عضلية مختلفة في الظهر والذراعين. إنه تمرين شائع لبناء قوة الجزء العلوي من الجسم وتحسين وضعية الجسم',
          descriptionImage:
              'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/Rope-Straight-Arm-Pulldown.gif",
          name: "تعريض مسطرة",
          sets: "10",
          description:
              'يعمل حبل السحب المستقيم للذراع على تدريب عضلات البطن من خلال نطاق طويل من الحركة، وهو مفيد للأشخاص الذين يجدون صعوبة في الشعور بظهورهم أثناء ممارسة تمارين السحب التقليدية. توفر حركات الكابلات توترًا مستمرًا طوال الحركة بأكملها. يتيح لك استخدام الكابلات العمل على الأجزاء متحدة المركز وغريبة الأطوار من التمرين. المزيد من التوتر يعني المزيد من تنشيط العضلات',
          descriptionImage:
              'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/Barbell-Bent-Over-Row.gif",
          name: "سحب علي المعدة بار",
          sets: "10",
          description:
              'تمرين Barbell Bent Over Row هو تمرين رفع الأثقال المركب الذي يستهدف في المقام الأول عضلات الجزء العلوي من الظهر، بما في ذلك عضلات الظهر (latissimus dorsi)، والمعينية، والفخاخ، بالإضافة إلى العضلة ذات الرأسين والدالية الخلفية. كما أنه يشغل العضلات الأساسية لتحقيق الاستقرار. يستخدم هذا التمرين عادة لبناء القوة والكتلة العضلية في الظهر والذراعين.',
          descriptionImage:
              'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/Lever-T-bar-Row.gif",
          name: "طرمبة واسع",
          sets: "10",
          description:
              'يعتبر صف T-bar من تمارين القوة التي تحاكي حركة التجديف بالقارب. الهدف هو تقوية العضلات التي تجلب الذراعين نحو الجسم، وكذلك العضلات التي تحرك لوحي الكتف نحو العمود الفقري. يمكن أن يسمح لك صف T-bar برفع المزيد من الوزن. ونظرًا لطبيعة هذه الحركة، فأنت قادر على الاستفادة من المزيد من الوزن.',
          descriptionImage:
              'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/close-grip-cable-row.gif",
          name: "سحب ارضي ديق",
          sets: "10",
          description:
              'مقبض على شكل حرف V: يوفر تصميم المقبض على شكل حرف V قبضة طبيعية أكثر، مما يمكن أن يحسن محاذاة المعصم ويقلل الضغط على المفاصل. يمكن أن يكون هذا مفيدًا بشكل خاص لأولئك الذين يعانون من آلام في الرسغ أو الكوع عند استخدام أنواع أخرى من المقابض.',
          descriptionImage:
              'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/pek-fly-reverse.gif",
          name: "فراشة عكس",
          sets: "10",
          description:
              ' اضبط المقعد بحيث تكون المقابض عند مستوى الكتف، وتأكد من الحفاظ على وضعية جيدة للرقبة وأسفل الظهر.',
          descriptionImage:
              'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/Barbell-Deadlift.gif",
          name: "قطانية",
          sets: "10",
          description:
              'الرفعة المميتة هي تمرين مركب يتضمن رفع الوزن من الأرض إلى وضعية الوقوف. غالبًا ما يُعتبر واحدًا من أفضل التمارين لبناء القوة والقوة بشكل عام، حيث يعمل على تدريب مجموعات عضلية متعددة في جميع أنحاء الجسم.',
          descriptionImage:
              'assets/images/back/deadlift-muscle-worked-300x300.png',
        ),
      ]),
  CardModel(
      image: "assets/images/shoulder.jpg",
      name: "الكتف محترف",
      value: 3,
      excersises: [
        ExcersiseModel(
          image: "assets/images/shoulder/Dumbbell-Shoulder-Press.gif",
          name: "تجميع جانبي",
          sets: "10",
          description:
              'تمرين الضغط على الكتف بالدمبل، والمعروف أيضًا باسم الضغط العلوي بالدمبل، هو تمرين يستهدف عضلات الكتفين والجزء العلوي من الجسم. وهو ينطوي على رفع زوج من الدمبل من مستوى الكتف إلى وضع علوي، باستخدام الكتفين والذراع',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/shoulder/Dumbbell-Lateral-Raise.gif",
          name: "رفرفة جانبي",
          sets: "10",
          description:
              'تمرين رفع الدمبل الجانبي هو تمرين يستهدف في المقام الأول العضلة الدالية الجانبية، وهي العضلات الموجودة على جانبي الكتفين. إنه تمرين عزل فعال لتطوير قوة الكتف وثباته وجمالياته.',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image:
              "assets/images/shoulder/Incline-Dumbbell-Side-Lateral-Raise.gif",
          name: "جانبي طرابيزة",
          sets: "10",
          description:
              'تمرين الرفع الجانبي المائل بذراع واحدة هو تمرين يستهدف الرأس الجانبي لعضلات الكتف. العديد من الحركات التي تعمل على نفس المجموعة العضلية قد تبدو متشابهة، لكنها تركز على أجزاء مختلفة من العضلات لأنها في زوايا مختلفة. إذا كنت ترغب في تطوير عضلات أفضل على وجه التحديد، فضع في اعتبارك أنه من المفيد تضمين التمارين التي تركز على جوانب مختلفة في برنامجك التدريبي..',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/shoulder/scott-press.gif",
          name: "شاكوش امامي",
          sets: "10",
          description:
              'تم تطوير تمرين Scott Press على يد مدرب كمال الأجسام الشهير فينس جيروندا لتلميذه لاري سكوت، وهو تمرين للكتف يستهدف الأجزاء الثلاثة من الكتف في وقت واحد. من خلال دمج حركة تشبه القوس أثناء تدوير الرسغين أثناء الضغط، فإن التمرين يشرك بشكل فعال العضلة الدالية الجانبية والأمامية والخلفية في حركة سائلة واحدة. هذه المشاركة الشاملة هي ما يميز تمرين Scott Press عن تمارين الكتف الأخرى، مما يجعله أداة قوية لتنمية الكتف المتوازنة.',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/shoulder/Two-Arm-Dumbbell-Front-Raise.gif",
          name: "رفرفة امامي",
          sets: "10",
          description:
              'وضع البداية: ما عليك سوى البدء بالوقوف مع الدمبل في يديك مع توجيه الجزء الخلفي من يديك للأمام. ',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/back/pek-fly-reverse.gif",
          name: " فراشة عكس",
          sets: "10",
          description:
              'اضبط المقعد بحيث تكون المقابض عند مستوى الكتف، وتأكد من الحفاظ على وضعية جيدة للرقبة وأسفل الظهر',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/shoulder/Cable-Shoulder-Press.gif",
          name: "كابل خلفي",
          sets: "10",
          description:
              'تمرين ضغط الكتف بالكابل هو شكل مختلف من تمرين الضغط بالحديد أو الدمبل وهو أحد أفضل التمارين لبناء الحجم والقوة. هناك العديد من الأشكال المختلفة لهذا التمرين وهو شكل مختلف في حد ذاته لذا من الجيد أيضًا مزج الأشياء والاستفادة من المزايا/المزايا التي يقدمها كل منها.',
          descriptionImage:
              'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/shoulder/Dumbbell-Shrug.gif",
          name: "هز اكتاف ضمبل",
          sets: "10",
          description:
              'هزات الدمبل هي تمرين يستهدف في المقام الأول العضلات شبه المنحرفة، والتي تقع في منطقة الجزء العلوي من الظهر والرقبة. بشكل عام، هزات الدمبل هي تمرين بسيط ولكنه فعال يمكن أن يوفر العديد من الفوائد لياقتك البدنية بشكل عام. سواء كنت مبتدئًا أو من رواد صالة الألعاب الرياضية ذوي الخبرة، فإن إضافة الدمبل إلى روتين التمرين يمكن أن يساعدك على تحقيق أهداف اللياقة البدنية الخاصة بك..',
          descriptionImage:
              'assets/images/shoulder/barbell-shrug-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/shoulder/Barbell-Shrug.gif",
          name: "هز اكتاف بار",
          sets: "10",
          description: '',
          descriptionImage:
              'assets/images/shoulder/barbell-shrug-muscle-worked-300x300.png',
        )
      ]),
  CardModel(
      image: "assets/images/all/cover_arm_3.jpg",
      name: "الذراع محترف",
      value: 3,
      excersises: [
        ExcersiseModel(
          image: "assets/images/arm/rope-bicep-curls.gif",
          name: "حبل سبعة",
          sets: "10",
          description:
              'الهدف الأول من هذا التمرين هو العضلات العضدية والعضدية. يساعد حبل الكابل في الحركة الصعودية، مما يسمح لك بالضغط على العضلة ذات الرأسين لتحقيق أقصى قدر من الانكماش. يساعد تطور العضلة العضدية الكعبرية على تقوية قبضتك ويمكن أن يجعل عضلات ذراعك تبدو أقوى وأكثر ضخامة.',
          descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/cable-curl.gif",
          name: "مسطرة كامل دروب 6",
          sets: "10",
          description:
              'تمرين ثني الكابل هو تمرين عزل لعضلة البايسبس. إنها عملية سحب يتم إجراؤها باستخدام آلة الكابلات.',
          descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Hammer-Curl.gif",
          name: "ضمبل شاكوش",
          sets: "10",
          description:
              'تمرين ثني المطرقة هو تمرين تدريبي للقوة يستهدف في المقام الأول عضلات العضلة ذات الرأسين في الجزء العلوي من الذراع. يتم إجراؤها عن طريق حمل وزن في كل يد بقبضة محايدة، مما يعني أن راحتي اليدين تواجهان بعضهما البعض، ثم لف الأوزان باتجاه الكتفين. تستهدف القبضة المحايدة العضلة العضدية الكعبرية، الموجودة في الجزء الخارجي من الساعد وتساعد في ثني مفصل الكوع.',
          descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Rope-Pushdown.gif",
          name: "حبل ثمانية",
          sets: "10",
          description:
              'وضع البداية: قم بتوصيل حبل ملحق بالجزء العلوي من جهاز الكابل. أمسك الحبل بيديك في مواجهة بعضهما البعض، ثم قم بالزفير واسحب الحبل للأسفل باتجاه خصرك. انتظر للحظة وجيزة ثم عد ببطء إلى وضع البداية.',
          descriptionImage:
              'assets/images/arm/triceps-muscle-worked-1-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Dumbbell-Incline-Two-Arm-Extension.gif",
          name: "ضمبل فرانساوي",
          sets: "10",
          description:
              'ابدأ بوضع المقعد بحيث يكون بزاوية تتراوح بين 45 و75 درجة، أو نحو ذلك، أمسك دمبلًا واحدًا واحمل ذراعيك بشكل مستقيم نحو السقف. خذ شهيقًا أثناء ثني مرفقيك، ودع الدمبل يتحرك بجوار جانبي رأسك مباشرةً. انتظر لمدة ثانية قصيرة في الأسفل ثم قم بالزفير وقم بتصويب ذراعيك..',
          descriptionImage:
              'assets/images/arm/triceps-muscle-worked-1-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Side-One-Arm-Reverse-Pushdown.gif",
          name: "حبل فردي",
          sets: "10",
          description: '',
          descriptionImage:
              'assets/images/arm/triceps-muscle-worked-1-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Reverse-Grip-Pushdown.gif",
          name: "مسطرة من فوق",
          sets: "10",
          description:
              'إن الضغط للأسفل بالقبضة العكسية عبارة عن حركة عزل لمفصل واحد، والتي تعزل العضلة ثلاثية الرؤوس دون مساعدة مجموعات العضلات أو المفاصل الأخرى. تضع القبضة السفلية مزيدًا من الضغط على الرأس الأوسط للعضلة ثلاثية الرؤوس. نظرًا لأنه يساعد على استهداف أحد الرأس على وجه التحديد، فمن المهم أن تقوم بدمجه في روتينك، إن لم يكن في كل تمرين، لتحقيق تنمية متوازنة..',
          descriptionImage:
              'assets/images/arm/triceps-muscle-worked-1-300x300.png',
        ),
        ExcersiseModel(
          image:
              "assets/images/arm/Barbell-Reverse-Wrist-Curl-Over-a-Bench.gif",
          name: "رست",
          sets: "10",
          description: '',
          descriptionImage: '',
        ),
        ExcersiseModel(
          image: "assets/images/arm/Dumbbell-Wrist-Curl.gif",
          name: "رست",
          sets: "10",
          description: '',
          descriptionImage: '',
        )
      ]),
  CardModel(
      image: "assets/images/all/cover_leg_3.jpg",
      name: "الساقين والبطن محترف",
      value: 3,
      excersises: [
        ExcersiseModel(
          image: "assets/images/leg/Sled-Hack-Squat.gif",
          name: "سكواد امامي",
          sets: "10",
          description:
              'تركز آلة القرفصاء على عضلات الفخذ الرباعية. وهو أيضًا تمرين آلي مصمم لتدريب وتقوية الجزء السفلي من الجسم بالكامل، بما في ذلك الوركين وأوتار الركبة والعضلات الرباعية والعضلات الأساسية. نظرًا لأن تطبيقه أكثر أمانًا، فقد يفضله المبتدئون.',
          descriptionImage:
              'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/BARBELL-SQUAT.gif",
          name: "سكواد بار 11",
          sets: "10",
          description:
              'القرفصاء بالحديد هو تمرين تدريبي للقوة يستهدف عضلات الجزء السفلي من الجسم، وخاصة عضلات الفخذ الرباعية وأوتار الركبة والأرداف. وهو تمرين مركب، بمعنى أنه يعمل على عدة مجموعات عضلية في وقت واحد. يتم تنفيذ التمرين باستخدام الحديد، وهو شريط طويل مستقيم مثقل بألواح.',
          descriptionImage:
              'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Leg-Press.gif",
          name: "مكبس 7 واسع",
          sets: "10",
          description:
              'تمرين الضغط على الساق، هو نوع من تمارين القوة. إنها حركة فعالة لتقوية عضلات الفخذ الرباعية الموجودة في الجزء الأمامي من الجزء العلوي من ساقيك. يتم إجراؤها عادةً باستخدام آلة ضغط الأرجل، والتي تتكون عادةً من مقعد ومنصة يمكن إضافة لوحات الوزن إليها.',
          descriptionImage:
              'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Dumbbell-Rear-Lunge.gif",
          name: "مقصات",
          sets: "10",
          description:
              'العديد من الحركات التي تعمل على نفس المجموعة العضلية قد تبدو متشابهة، لكنها تركز على أجزاء مختلفة من العضلات لأنها في زوايا مختلفة. إذا كنت ترغب في بناء عضلات أفضل على وجه التحديد، فضع في اعتبارك أنه من المفيد تضمين التمارين التي تركز على جوانب مختلفة لبرنامجك التدريبي..',
          descriptionImage:
              'assets/images/leg/Pistol-squat-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Leg-Curl.gif",
          name: "خلفي",
          sets: "10",
          description:
              'تمرين ثني الساق هو تمرين عزل يستهدف عضلات الجزء الخلفي من الفخذ، وتحديدًا أوتار الركبة. إنه تمرين فعال لتطوير القوة والحجم والتحمل العضلي في أوتار الركبة. يتم إجراؤها عادةً باستخدام آلة تجعيد الساق الموجودة في الصالات الرياضية أو مراكز اللياقة البدنية.',
          descriptionImage:
              'assets/images/leg/leg-curl-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Hack-Squat-Calf-Raise.gif",
          name: "سمانة جهاز",
          sets: "10",
          description:
              'نظرًا لأن مجموعة العضلات المستهدفة في هذا التمرين المصممة للعزل هي عضلات الساق، فيمكن تحقيق أقصى قدر من نمو العضلات من خلال التركيز بشكل أكبر على العضلات في هذه المنطقة..',
          descriptionImage: 'assets/images/leg/calf-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Barbell-Seated-Calf-Raise.gif",
          name: "سمانة",
          sets: "10",
          description: '',
          descriptionImage: 'assets/images/leg/calf-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Decline-Sit-up.gif",
          name: "بطن",
          sets: "10",
          description:
              'تستهدف تمارين الجلوس المائلة عضلات البطن المستقيمة والعضلات المائلة لتقوية العضلات الأساسية. إنه تمرين يمكنك تطبيقه لتشكيل عضلات البطن العلوية والعضلات الستة.',
          descriptionImage:
              'assets/images/leg/Crunch-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Ab-Coaster-Machine.gif",
          name: "بطن",
          sets: "10",
          description:
              'AB Coaster عبارة عن قطعة من معدات التمارين الرياضية المصممة لاستهداف عضلات البطن. يتكون من مسار منحني يسمح للمستخدم بأداء حركة متدحرجة أثناء الجلوس، مما يركز على عضلات البطن المستقيمة والعضلات المائلة.',
          descriptionImage:
              'assets/images/leg/Crunch-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Captains-Chair-Leg-Raise.gif",
          name: "بطن",
          sets: "10",
          description:
              'يعمل هذا التمرين الذي يعمل على تقوية عضلات الورك على تحسين عضلاتك الأساسية، وخاصة عضلات البطن السفلية. بالإضافة إلى ذلك، تعمل عضلات الظهر والصدر والعضلات شبه المنحرفة كمثبتات أثناء التمرين.',
          descriptionImage:
              'assets/images/leg/Captains-Chair-Leg-Raise-muscle-worked-300x300.png',
        ),
        ExcersiseModel(
          image: "assets/images/leg/Weighted-Front-Plank.gif",
          name: "بلانك",
          sets: "10",
          description:
              'إنه تنوع خشبي مصنوع عن طريق إضافة الوزن. ويفضل في الغالب للرياضيين المتقدمين. باعتبارها حركة متعددة الوظائف، لا تستهدف اللوح عضلات البطن فحسب، بل تستهدف أيضًا العمود الفقري والورك. يقوي اللوح ويشد جسمك بالكامل، ويحسن وضعك وتوازنك، ويقلل من الدهون في الجسم، ويمكن أن يساعد في تعزيز عملية التمثيل الغذائي لديك..',
          descriptionImage: 'assets/images/leg/plank-muscle-worked-300x300.png',
        )
      ]),
];

List<CardModel> usersEnglish = [
  CardModel(
    image: "assets/images/all/cover_chest_1.jpg",
    name: "Beginner Chest",
    value: 1,
    excersises: [
      ExcersiseModel(
        image: "assets/images/chest/Barbell-Bench-Press.gif",
        name: "Flat Barbell Press",
        sets: "10",
        description:
            'The bench press exercise is a common strength exercise that primarily targets the chest muscles (pectoralis major and minor). The exercise can be performed with different grips and angles to target different areas of the chest, and it can be done with variations such as incline, decline, or flat bench. It is a foundational exercise in bodybuilding, weightlifting, and general fitness workouts.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/chest/Dumbbell-Press-1.gif",
        name: "Flat Dumbbell Press",
        sets: "10",
        description:
            'Dumbbell press is a classic exercise to strengthen the upper body and work on your chest. While the chest muscles are the primary focus, it also engages the anterior deltoid and triceps as secondary muscles. It serves as an alternative to barbell bench press and offers unique benefits due to the use of individual dumbbells.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
      ExcersiseModel(
        name: "Butterfly Chest Fly",
        image: "assets/images/chest/Pec-Deck-Fly.gif",
        sets: "10",
        description:
            'The Pec Deck fly exercise is a machine-based workout that provides body support during the movement. The machine acts as a stabilizer, focusing on the major and minor pectoral muscles. This reduces the risk of injury compared to other chest exercises that involve free weights. It helps in building well-defined chest muscles by combining pushing and squeezing motions.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/chest/Incline-Dumbbell-Press.gif",
        name: "Incline Dumbbell Press",
        sets: "10",
        description:
            'The incline dumbbell press is a strength exercise targeting the upper chest, shoulders, and triceps. It is performed on an inclined bench at a 30-45 degree angle, with a dumbbell in each hand.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
      ExcersiseModel(
        name: "Decline Dumbbell Press",
        image: "assets/images/chest/Decline-Dumbbell-Press.gif",
        sets: "10",
        description:
            'The decline dumbbell press is a fundamental strength exercise with benefits for the lower chest and specific chest definition. It focuses on the lower chest region, distinguishing it from the upper chest and abdominal muscles.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/chest/High-Cable-Crossover.gif",
        name: "High Cable Crossover",
        sets: "10",
        description:
            'The high cable crossover is a cable machine exercise targeting the chest muscles. It involves using cable machines with pulleys set at the highest position and crossing the arms in front of the body at the end of the movement. This movement targets the lower, inner, and outer chest areas while also engaging the shoulders and triceps as secondary muscles.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
    ],
  ),
  CardModel(
    image: "assets/images/back2.jpg",
    name: "Beginner Back",
    value: 1,
    excersises: [
      ExcersiseModel(
        image: "assets/images/back/Lat-Pulldown.gif",
        name: "Front Lat Pulldown",
        sets: "10",
        description:
            'The lat pulldown exercise primarily targets the latissimus dorsi muscles (commonly known as "lats") in your back. This involves pulling down a cable or handling it downwards towards your chest while sitting on a specially designed machine. Lat pulldown is typically performed with a wide grip, but it can also be done with a narrow or underhand grip to target different muscle groups in the back and arms. It is a common exercise for building upper body strength and improving body posture.',
        descriptionImage:
            'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/Seated-Cable-Row.gif",
        name: "Seated Cable Row",
        sets: "10",
        description:
            'Seated cable row is a popular cable exercise targeting the upper back and lats. This exercise involves pulling the cable attachment towards your body while seated, using a cable machine. Whether you are a beginner or experienced in weightlifting, this exercise can be a valuable addition to your training program.',
        descriptionImage:
            'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/Lever-High-Row.gif",
        name: "Hammer High Row",
        sets: "10",
        description: '',
        descriptionImage:
            'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/Dumbbell-Row.gif",
        name: "Dumbbell Row",
        sets: "10",
        description:
            'Dumbbell rowing is an effective exercise to strengthen and develop the back muscles. Performing a single-arm dumbbell row is a unilateral exercise that builds strength and size in the latissimus dorsi muscle while improving overall shoulder function. Training one arm at a time is the best way to ensure optimal focus on the targeted muscles, enhance fiber recruitment, and address strength imbalances between sides of your body.',
        descriptionImage:
            'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/close-grip-cable-row.gif",
        name: "Close Grip Cable Row",
        sets: "10",
        description:
            'V-Bar Handle: The V-shaped handle design provides a more natural grip, improving wrist alignment and reducing stress on the joints. This can be particularly useful for those experiencing wrist or elbow discomfort when using other types of handles.',
        descriptionImage:
            'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/Barbell-Deadlift.gif",
        name: "Barbell Deadlift",
        sets: "10",
        description:
            'The barbell deadlift is a compound exercise that involves lifting weight from the ground to a standing position. Often considered one of the best exercises for building strength and overall power, it works multiple muscle groups throughout the body.',
        descriptionImage:
            'assets/images/back/deadlift-muscle-worked-300x300.png',
      ),
    ],
  ),
  CardModel(
    image: "assets/images/all/cover_shoulder_1.jpg",
    name: "Beginner Shoulder",
    value: 1,
    excersises: [
      ExcersiseModel(
        image: "assets/images/shoulder/Lever-Shoulder-Press.gif",
        name: "Front Lever Shoulder Press",
        sets: "10",
        description:
            'The lever shoulder press exercise is an effective workout used to develop and strengthen the shoulder muscles. The lever machine provides a guided range of motion, allowing you to focus on proper form and reduce the risk of injury. Shoulder press exercises can be performed using different grips and hand positions, providing diversity in your shoulder training.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Two-Arm-Dumbbell-Front-Raise.gif",
        name: "Front Dumbbell Raise",
        sets: "10",
        description:
            'Starting Position: Simply start by standing with a dumbbell in each hand, with the back part of your hands facing forward.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Dumbbell-Shoulder-Press.gif",
        name: "Lateral Dumbbell Raise",
        sets: "10",
        description:
            'The dumbbell shoulder press, also known as the overhead dumbbell press, is an exercise targeting the shoulder muscles and the upper part of the body. It involves lifting a pair of dumbbells from shoulder level to an overhead position, using the shoulders and arms.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Dumbbell-Lateral-Raise.gif",
        name: "Side Dumbbell Raise",
        sets: "10",
        description:
            'The side dumbbell raise exercise primarily targets the lateral deltoid muscle, located on the sides of the shoulders. It is an effective isolation exercise to develop shoulder strength, stability, and aesthetics.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Face-Pull.gif",
        name: "Face Pull",
        sets: "10",
        description:
            'Face pull is a tremendous exercise that effectively works on multiple muscles, including the shoulder, back, trapezius, and rear deltoids. It activates the rear deltoids and may benefit discomfort caused by weak muscles, such as poor posture and shoulder protrusion, by impacting the muscles under the scapula and the muscles under the shoulder. Additionally, face pull is one of the most effective corrective exercises that helps correct poor posture and shoulder imbalance.',
        descriptionImage:
            'assets/images/shoulder/muscle-worked-in-the-face-pull-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/pek-fly-reverse.gif",
        name: "Reverse Butterfly",
        sets: "10",
        description:
            'Adjust the seat so that the handles are at shoulder level, and be sure to maintain a good neck and lower back position.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Dumbbell-Shrug.gif",
        name: "Dumbbell Shoulder Shrug",
        sets: "10",
        description:
            'Dumbbell shrugs are an exercise primarily targeting the trapezius muscles, located in the upper back and neck area. Generally, dumbbell shrugs are a simple yet effective exercise that can provide numerous benefits to your overall fitness. Whether you are a beginner or an experienced gym-goer, adding dumbbells to your workout routine can help you achieve your fitness goals.',
        descriptionImage:
            'assets/images/shoulder/barbell-shrug-muscle-worked-300x300.png',
      ),
    ],
  ),
  CardModel(
    image: "assets/images/all/cover_arm_1.jpg",
    name: "Beginner Arms",
    value: 1,
    excersises: [
      ExcersiseModel(
        image: "assets/images/arm/cable-curl.gif",
        name: "Wide Cable Curl",
        sets: "10",
        description:
            'Cable curl exercise is an isolation workout for the biceps. It is a pulling motion performed using cable machines and is suitable for beginners.',
        descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Close-Grip-Z-Bar-Curl.gif",
        name: "Close-Grip Z-Bar Curl",
        sets: "10",
        description: '',
        descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Two-dumbbell-preacher-curl.gif",
        name: "Preacher Curl",
        sets: "10",
        description: '',
        descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Hammer-Curl.gif",
        name: "Hammer Curl",
        sets: "10",
        description:
            'Hammer curl exercise is a strength training exercise that primarily targets the brachialis muscle in the upper part of the arm. It is performed by holding weight in each hand with a neutral grip, meaning the palms of the hands face each other, then lifting the weights towards the shoulders. The neutral grip targets the brachialis muscle, located on the outer part of the forearm, and helps in bending the elbow joint.',
        descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Rope-Pushdown.gif",
        name: "Rope Pushdown",
        sets: "10",
        description:
            'Starting Position: Attach a rope attachment to the upper part of the cable machine. Hold the rope in your hands facing each other, then exhale and pull the rope downward towards your waist. Wait for a brief moment and then slowly return to the starting position.',
        descriptionImage:
            'assets/images/arm/triceps-muscle-worked-1-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Dumbbell-Incline-Two-Arm-Extension.gif",
        name: "French Dumbbell Extension",
        sets: "10",
        description:
            'Start by adjusting the seat to an angle ranging between 45 and 75 degrees, or so. Hold a single dumbbell, extend your arms straight towards the ceiling. Inhale while bending your elbows, let the dumbbell move beside your head directly. Wait for a short second at the bottom and then exhale, straightening your arms.',
        descriptionImage:
            'assets/images/arm/triceps-muscle-worked-1-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Side-One-Arm-Reverse-Pushdown.gif",
        name: "Single-Arm Rope Pushdown",
        sets: "10",
        description: '',
        descriptionImage:
            'assets/images/arm/triceps-muscle-worked-1-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Reverse-Grip-Pushdown.gif",
        name: "Overhead Bar Pushdown",
        sets: "10",
        description:
            'Overhead grip pushdown is an isolation movement for a single joint, which isolates the triceps without assistance from other muscle groups or joints. The underhand grip puts more emphasis on the middle head of the triceps. As it helps specifically target one head, it is important to incorporate it into your routine, if not in every workout, to achieve balanced development.',
        descriptionImage:
            'assets/images/arm/triceps-muscle-worked-1-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Barbell-Reverse-Wrist-Curl-Over-a-Bench.gif",
        name: "Wrist Curl",
        sets: "10",
        description: '',
        descriptionImage: '',
      ),
    ],
  ),
  CardModel(
    image: "assets/images/all/cover_leg_1.jpg",
    name: "Beginner Legs and Abs",
    value: 1,
    excersises: [
      ExcersiseModel(
        image: "assets/images/leg/LEG-EXTENSION.gif",
        name: "Leg Extensions",
        sets: "10",
        description:
            'Leg extensions are a common isolation exercise that primarily targets the quadriceps muscles, located in the front part of the thigh. Leg extension exercises typically involve using a leg extension machine found in most gyms. Here is a step-by-step guide on how to perform leg extensions.',
        descriptionImage:
            'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Leg-Press.gif",
        name: "Wide Leg Press",
        sets: "10",
        description:
            'Leg press exercise is a type of strength training. It is an effective movement to strengthen the quadriceps muscles located in the upper part of your legs. It is usually performed using a leg press machine, which typically consists of a seat and a platform to which weight plates can be added.',
        descriptionImage:
            'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/BARBELL-SQUAT.gif",
        name: "Barbell Squat",
        sets: "10",
        description:
            'Barbell squat is a strength training exercise that targets the lower body muscles, especially the quadriceps, knee tendons, and glutes. It is a compound exercise, meaning it works on multiple muscle groups simultaneously. The exercise is performed using a barbell, a long straight bar loaded with plates.',
        descriptionImage:
            'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Leg-Curl.gif",
        name: "Hamstring Curl",
        sets: "10",
        description:
            'Leg curl exercise is an isolation workout that targets the muscles in the back of the thigh, specifically the hamstring tendons. It is an effective exercise for developing strength, size, and muscle endurance in the hamstring tendons. It is usually performed using a leg curl machine found in gyms or fitness centers.',
        descriptionImage:
            'assets/images/leg/leg-curl-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Hack-Squat-Calf-Raise.gif",
        name: "Machine Calf Raise",
        sets: "10",
        description:
            'Since the targeted muscle group in this isolation exercise is the leg muscles, maximum muscle growth can be achieved by focusing more on the muscles in this area.',
        descriptionImage: 'assets/images/leg/calf-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Barbell-Seated-Calf-Raise.gif",
        name: "Calf Raise",
        sets: "10",
        description: '',
        descriptionImage: 'assets/images/leg/calf-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Decline-Sit-up.gif",
        name: "Abdominal Crunch",
        sets: "10",
        description:
            'Decline sit-up exercises target the rectus abdominis and oblique muscles to strengthen the core muscles. It is an exercise you can apply to sculpt both upper and lower abdominal muscles.',
        descriptionImage: 'assets/images/leg/Crunch-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Ab-Coaster-Machine.gif",
        name: "Abdominal Coaster",
        sets: "10",
        description:
            'The AB Coaster is a piece of exercise equipment designed to target the abdominal muscles. It consists of a curved track that allows the user to perform a rolling motion while seated, focusing on the rectus abdominis and oblique muscles.',
        descriptionImage: 'assets/images/leg/Crunch-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Captains-Chair-Leg-Raise.gif",
        name: "Captain's Chair Leg Raise",
        sets: "10",
        description:
            'This exercise, which targets the strengthening of hip muscles, works to improve your core muscles, especially the lower abdominal muscles. Additionally, it engages the muscles of the back, chest, and oblique muscles as stabilizers during the exercise.',
        descriptionImage:
            'assets/images/leg/Captains-Chair-Leg-Raise-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Weighted-Front-Plank.gif",
        name: "Plank",
        sets: "10",
        description:
            'This weighted plank variation is designed by adding resistance. It is generally recommended for advanced athletes. As a multi-functional movement, the plank targets not only the abdominal muscles but also the spine and hips. The plank strengthens and tightens your entire body, improves your posture and balance, reduces body fat, and can help boost your metabolism.',
        descriptionImage: 'assets/images/leg/plank-muscle-worked-300x300.png',
      ),
    ],
  ),
];
List<CardModel> midUsersEnglish = [
  CardModel(
    image: "assets/images/all/cover_chest_2.jpg",
    name: "Intermediate Chest",
    value: 2,
    excersises: [
      ExcersiseModel(
        image: "assets/images/chest/Incline-Barbell-Bench-Press.gif",
        name: "High Barbell Bench Press",
        sets: "10",
        description:
            'The incline bench press is a compound exercise that primarily targets the upper chest muscles but also engages the front shoulders and triceps. The movement is typically performed on an inclined bench raised at an angle of approximately 30 to 45 degrees.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/chest/Incline-Dumbbell-Press.gif",
        name: "Incline Dumbbell Press",
        sets: "10",
        description:
            'The incline dumbbell press is a strength exercise that targets the chest muscles (upper chest), along with the shoulders and triceps. It is performed on an inclined bench at an angle of 30-45 degrees, with a dumbbell in each hand.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
      ExcersiseModel(
        name: "Butterfly Chest Fly",
        image: "assets/images/chest/Pec-Deck-Fly.gif",
        sets: "10",
        description:
            'The Pec Deck fly exercise is a machine-dependent exercise that provides support to the body during the movement. The machine acts as a stabilizer here, focusing on the major pectoral muscle in the chest and the minor pectoral muscle located directly below it. This helps reduce the risk of injury compared to other chest exercises that require free weights. It will also help you build well-defined chest muscles by combining both pushing and squeezing movements.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/chest/Dumbbell-Press-1.gif",
        name: "Flat Dumbbell Press",
        sets: "10",
        description:
            'The dumbbell press is a classic exercise for strengthening the upper body and working on your chest. The chest muscle is the primary muscle targeted by the exercise, but as an added bonus, it also works on the anterior deltoid and triceps. It is an alternative to bench press with iron dumbbells and offers some unique advantages due to the use of individual dumbbells.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
      ExcersiseModel(
        name: "Decline Dumbbell Press",
        image: "assets/images/chest/Decline-Dumbbell-Press.gif",
        sets: "10",
        description:
            'The decline dumbbell press is a core strength exercise that benefits the lower chest muscles and the required defined chest. Defining the lower region is preferred for distinguishing between chest and abdominal muscles.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/chest/High-Cable-Crossover.gif",
        name: "High Cable Crossover",
        sets: "10",
        description:
            'The high cable crossover is a cable exercise targeting chest muscles. It involves using cable machines with pulleys set at the top position and crossing the arms in front of the body at the end of the movement. This movement targets the chest muscles, specifically the lower, inner, and outer regions, while also working on the shoulders and triceps as secondary muscles.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
    ],
  ),
  CardModel(
    image: "assets/images/back.jpg",
    name: "Intermediate Back",
    value: 2,
    excersises: [
      ExcersiseModel(
        image: "assets/images/back/Lat-Pulldown.gif",
        name: "Front Pull",
        sets: "10",
        description:
            'The lat pulldown exercise is a pulling exercise that primarily targets the latissimus dorsi muscles (known as "lats") in your upper back. It involves pulling a cable or bar downward towards your chest while sitting on a specially designed machine. The lat pulldown is usually performed with a wide grip, but it can also be done with a narrow grip or an underhand grip to target different muscle groups in the back and arms. It is a common exercise for building upper body strength and improving body posture.',
        descriptionImage:
            'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/Rope-Straight-Arm-Pulldown.gif",
        name: "Rope Straight Arm Pulldown",
        sets: "10",
        description:
            'The straight arm pulldown with a rope trains the abdominal muscles through a long range of motion, making it useful for those who find it challenging to feel their back during traditional pulldown exercises. Cable movements provide continuous tension throughout the entire range of motion. Using cables allows you to work on isolated and unconventional muscle parts during the exercise. More tension means more muscle activation.',
        descriptionImage:
            'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/Barbell-Bent-Over-Row.gif",
        name: "Barbell Bent Over Row",
        sets: "10",
        description:
            'The Barbell Bent Over Row is a compound weightlifting exercise that primarily targets the upper back muscles, including the latissimus dorsi, rhomboids, traps, as well as the rear deltoids and biceps. It also engages the core muscles for stability. This exercise is commonly used to build strength and muscle mass in the back and arms.',
        descriptionImage:
            'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/Dumbbell-Row.gif",
        name: "Dumbbell Row",
        sets: "10",
        description:
            'The dumbbell row exercise is an effective workout for strengthening and developing the back muscles. Single-arm dumbbell rowing builds the width and thickness of the latissimus dorsi muscles and improves overall shoulder joint function. Training one arm at a time ensures optimal focus on the targeted muscles and promotes fiber recruitment, addressing strength imbalances between sides of the body.',
        descriptionImage:
            'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/close-grip-cable-row.gif",
        name: "Close-Grip Cable Row",
        sets: "10",
        description:
            'V-Bar Handle: The V-bar handle design provides a more natural grip, which can improve wrist alignment and reduce stress on the joints. This can be particularly helpful for those experiencing wrist or elbow discomfort when using other types of handles.',
        descriptionImage:
            'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/Barbell-Deadlift.gif",
        name: "Barbell Deadlift",
        sets: "10",
        description:
            'The deadlift is a compound exercise that involves lifting weight from the ground to a standing position. Often considered one of the best exercises for building overall strength and power, it works on multiple muscle groups throughout the body.',
        descriptionImage:
            'assets/images/back/deadlift-muscle-worked-300x300.png',
      ),
    ],
  ),
  CardModel(
    image: "assets/images/all/cover_shoulder_2.jpg",
    name: "Intermediate Shoulders",
    value: 2,
    excersises: [
      ExcersiseModel(
        image: "assets/images/shoulder/Dumbbell-Shoulder-Press.gif",
        name: "Lateral Raise",
        sets: "10",
        description:
            'Dumbbell Shoulder Press, also known as Overhead Dumbbell Press, is an exercise targeting the shoulder muscles and the upper body. It involves lifting a pair of dumbbells from shoulder level to an overhead position, using the shoulders and arms.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Dumbbell-Lateral-Raise.gif",
        name: "Lateral Raise",
        sets: "10",
        description:
            'Dumbbell Lateral Raise is an exercise primarily targeting the lateral deltoid muscle, located on the sides of the shoulders. It is an effective isolation exercise for developing shoulder strength, stability, and aesthetics.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Incline-Dumbbell-Side-Lateral-Raise.gif",
        name: "Incline Dumbbell Lateral Raise",
        sets: "10",
        description:
            'Incline Single-Arm Dumbbell Lateral Raise is an exercise that targets the lateral head of the shoulder muscles. Many movements targeting the same muscle group may seem similar but focus on different parts of the muscles due to different angles. If you want to develop specific shoulder muscles, consider including exercises that target different angles in your training program.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Arnold-Press.gif",
        name: "Front Press",
        sets: "10",
        description:
            'The Arnold Press exercise is a common strength training exercise developed by Arnold Schwarzenegger in the 1970s. It is a variation of the traditional shoulder press, involving a rotating movement that targets multiple muscles in the shoulders, trapezius, and upper back. Here is a comprehensive guide to Arnold Press, including its benefits, techniques, and variations.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Two-Arm-Dumbbell-Front-Raise.gif",
        name: "Front Raise",
        sets: "10",
        description:
            'Starting Position: Simply begin by standing with a dumbbell in each hand, with the back of your hands facing forward.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Face-Pull.gif",
        name: "Face Pull",
        sets: "10",
        description:
            'Face Pull is an excellent exercise that effectively works on various muscles, including the shoulder, back, trapezius, and rear deltoids. It activates the rear deltoids and may benefit issues like poor posture and shoulder protrusion by impacting the muscles under the scapula and the muscles under the shoulder that cover the scapula. Additionally, Face Pull is one of the effective corrective exercises that help address poor posture and shoulder imbalances.',
        descriptionImage:
            'assets/images/shoulder/muscle-worked-in-the-face-pull-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/pek-fly-reverse.gif",
        name: "Reverse Fly",
        sets: "10",
        description:
            'Adjust the seat so that the handles are at shoulder level and make sure to maintain good neck and lower back posture.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Dumbbell-Shrug.gif",
        name: "Dumbbell Shrug",
        sets: "10",
        description:
            'Dumbbell Shrugs are an exercise primarily targeting the trapezius muscles, located in the upper back and neck area. Overall, Dumbbell Shrugs are a simple yet effective exercise that can provide many fitness benefits, whether you are a beginner or an experienced gym-goer. Adding dumbbells to your exercise routine can help you achieve your fitness goals.',
        descriptionImage:
            'assets/images/shoulder/barbell-shrug-muscle-worked-300x300.png',
      ),
    ],
  ),
  CardModel(
    image: "assets/images/all/cover_arm_2.jpg",
    name: "Intermediate Arms",
    value: 2,
    excersises: [
      ExcersiseModel(
        image: "assets/images/arm/Close-Grip-Z-Bar-Curl.gif",
        name: "Close-Grip Z-Bar Curl",
        sets: "10",
        description: 'Description is not available',
        descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/cable-curl.gif",
        name: "Cable Curl",
        sets: "10",
        description:
            'Cable Curl is an isolation exercise for the biceps. It is a pulling movement performed using the cable machine and is suitable for beginners.',
        descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Hammer-Curl.gif",
        name: "Hammer Curl",
        sets: "10",
        description:
            'Hammer Curl is a strength training exercise primarily targeting the brachialis muscle in the upper part of the arm. It is performed by holding weight in each hand with a neutral grip, meaning your palms face each other, and then lifting the weights towards the shoulders. The neutral grip targets the brachialis muscle, located on the outer part of the forearm, and helps in bending the elbow joint.',
        descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Rope-Pushdown.gif",
        name: "Rope Pushdown",
        sets: "10",
        description:
            'Starting Position: Connect a rope attachment to the upper part of the cable machine. Hold the rope in your hands, facing each other, then exhale and pull the rope downwards towards your waist. Pause for a brief moment and then slowly return to the starting position.',
        descriptionImage:
            'assets/images/arm/triceps-muscle-worked-1-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Dumbbell-Incline-Two-Arm-Extension.gif",
        name: "French Dumbbell Press",
        sets: "10",
        description:
            'Start by setting the bench at an angle ranging from 45 to 75 degrees or so. Hold one dumbbell and extend your arms straight up toward the ceiling. Inhale while bending your elbows, let the dumbbell move alongside your head directly. Wait for a short moment at the bottom, then exhale and straighten your arms.',
        descriptionImage:
            'assets/images/arm/triceps-muscle-worked-1-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Side-One-Arm-Reverse-Pushdown.gif",
        name: "Single-Arm Rope Pushdown",
        sets: "10",
        description: 'Description is not available',
        descriptionImage:
            'assets/images/arm/triceps-muscle-worked-1-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Reverse-Grip-Pushdown.gif",
        name: "Overhead Cable Curl",
        sets: "10",
        description:
            'Overhead Cable Curl is an isolation movement for a single joint, isolating the triceps without involving other muscle groups or joints. The underhand grip puts extra emphasis on the middle head of the triceps. As it helps specifically target one head, it is important to incorporate it into your routine, if not in every workout, to achieve balanced development.',
        descriptionImage:
            'assets/images/arm/triceps-muscle-worked-1-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Barbell-Reverse-Wrist-Curl-Over-a-Bench.gif",
        name: "Wrist Curl",
        sets: "10",
        description: 'Description is not available',
        descriptionImage: '',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Dumbbell-Wrist-Curl.gif",
        name: "Wrist Curl",
        sets: "10",
        description: 'Description is not available',
        descriptionImage: '',
      ),
    ],
  ),
  CardModel(
    image: "assets/images/all/cover_leg_2.jpg",
    name: "Intermediate Legs and Abs",
    value: 2,
    excersises: [
      ExcersiseModel(
        image: "assets/images/leg/LEG-EXTENSION.gif",
        name: "Leg Extension",
        sets: "10",
        description:
            'Leg Extensions are a common isolation exercise that primarily targets the quadriceps muscles, located in the front part of the thigh. Leg extension exercises typically involve using a leg extension machine found in most gyms. Here is a step-by-step guide on how to perform Leg Extensions.',
        descriptionImage:
            'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/BARBELL-SQUAT.gif",
        name: "Barbell Squat",
        sets: "10",
        description:
            'Barbell Squat is a strength training exercise that targets the muscles of the lower body, especially the quadriceps muscles, knee tendons, and buttocks. It is a compound exercise, meaning it works on multiple muscle groups at the same time. The exercise is performed using a barbell, a long straight bar loaded with weight plates.',
        descriptionImage:
            'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Leg-Press.gif",
        name: "Wide Leg Press",
        sets: "10",
        description:
            'Leg Press is a strength exercise and a type of resistance training. It is an effective movement to strengthen the quadriceps muscles located in the front part of the upper legs. It is usually performed using a leg press machine, consisting of a seat and a platform where weight plates can be added.',
        descriptionImage:
            'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Dumbbell-Rear-Lunge.gif",
        name: "Lunges",
        sets: "10",
        description:
            'Many movements targeting the same muscle group may seem similar, but they focus on different parts of the muscles due to different angles. If you want to build specific muscle areas, consider including exercises that focus on different angles in your training program.',
        descriptionImage:
            'assets/images/leg/Pistol-squat-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Leg-Curl.gif",
        name: "Leg Curl",
        sets: "10",
        description:
            'Leg Curl is an isolation exercise targeting the muscles at the back of the thigh, specifically the knee tendons. It is an effective exercise for developing strength, size, and muscle endurance in the knee tendons. It is usually performed using a leg curl machine found in gyms or fitness centers.',
        descriptionImage:
            'assets/images/leg/leg-curl-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Hack-Squat-Calf-Raise.gif",
        name: "Machine Calf Raise",
        sets: "10",
        description:
            'Since the targeted muscle group in this isolation exercise is the leg muscles, maximum muscle growth can be achieved by focusing more on the muscles in this area.',
        descriptionImage: 'assets/images/leg/calf-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Barbell-Seated-Calf-Raise.gif",
        name: "Calf Raise",
        sets: "10",
        description: '',
        descriptionImage: 'assets/images/leg/calf-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Decline-Sit-up.gif",
        name: "Abdominal Crunch",
        sets: "10",
        description:
            'Decline Sit-ups target the rectus abdominis and oblique muscles to strengthen the core muscles. It is an exercise you can implement to sculpt the upper abdominal muscles and the six-pack muscles.',
        descriptionImage: 'assets/images/leg/Crunch-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Ab-Coaster-Machine.gif",
        name: "Abdominal Crunch",
        sets: "10",
        description:
            'The AB Coaster is a piece of exercise equipment designed to target the abdominal muscles. It consists of a curved track that allows the user to perform a rolling motion while seated, focusing on the rectus abdominis and oblique muscles.',
        descriptionImage: 'assets/images/leg/Crunch-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Captains-Chair-Leg-Raise.gif",
        name: "Abdominal Leg Raise",
        sets: "10",
        description:
            'This exercise, focusing on strengthening the hip muscles, works to improve your core muscles, especially the lower abdominal muscles. Additionally, the muscles of the back, chest, and the oblique muscles act as stabilizers during the exercise.',
        descriptionImage:
            'assets/images/leg/Captains-Chair-Leg-Raise-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Weighted-Front-Plank.gif",
        name: "Plank",
        sets: "10",
        description:
            'Weighted Front Plank is a variation of the plank exercise made by adding weight. It is mostly recommended for advanced athletes. As a multi-functional movement, the plank not only targets the abdominal muscles but also engages the spine and hips. The plank strengthens and tightens your entire body, improves your posture and balance, reduces body fat, and can help enhance your metabolism.',
        descriptionImage: 'assets/images/leg/plank-muscle-worked-300x300.png',
      ),
    ],
  ),
];
List<CardModel> profUsersEnglish = [
  CardModel(
    image: "assets/images/all/cover_chest_3.jpg",
    name: "Advanced Chest",
    value: 3,
    excersises: [
      ExcersiseModel(
        image: "assets/images/chest/Incline-Barbell-Bench-Press.gif",
        name: "High Barbell Press",
        sets: "10",
        description:
            'Incline Bench Press is a compound exercise that primarily targets the upper chest muscles but also engages the front shoulders and the triceps. The movement is usually performed on an inclined bench raised at an angle of about 30 to 45 degrees.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/chest/Barbell-Bench-Press.gif",
        name: "Flat Barbell Press",
        sets: "10",
        description:
            'Bench Press is a common strength training exercise that primarily targets the chest muscles (pectoralis major and minor). The exercise can be done with different grips and angles to target various areas of the chest and can be performed in different forms like incline, decline, or flat bench. It is a fundamental exercise in bodybuilding, weightlifting, and general fitness workouts.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/chest/Incline-dumbbell-Fly.gif",
        name: "High Incline Fly",
        sets: "10",
        description:
            'Incline Dumbbell Fly is an isolation exercise that targets the upper chest muscles that are challenging to develop.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/chest/Dumbbell-Press-1.gif",
        name: "Level 6 Drop Set",
        sets: "10",
        description:
            'Dumbbell Press is a classic exercise to strengthen the upper part of the body and works on exercising your chest. The chest muscle is the primary muscle targeted by the exercise, but as an additional bonus, it also works on the anterior deltoid and the triceps. It is an alternative to barbell bench press and offers some unique advantages due to the use of individual dumbbells.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/chest/Pec-Deck-Fly.gif",
        name: "Butterfly Fly",
        sets: "10",
        description:
            'Pec Deck Fly is an exercise that relies on the machine and provides support for the body during the movement. The machine acts as a stabilizer here, with a focus on the major pectoral muscle in the chest and the minor pectoral muscle directly below it. This helps reduce the risk of injury compared to other chest exercises that require free weights. It will also help you build well-defined chest muscles by combining pushing and squeezing.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/chest/Decline-Dumbbell-Press.gif",
        name: "Inverted Bar",
        sets: "10",
        description:
            'Decline Dumbbell Press on Smith Machine is one of the core strength exercises with benefits for the lower chest muscles and the desired defined chest. It is advisable to define the lower area to distinguish between chest and abdominal muscles.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/chest/High-Cable-Crossover.gif",
        name: "High Cable Crossover",
        sets: "10",
        description:
            'High Cable Crossover is a cable exercise that targets the chest muscles. It involves using cable machines with the pulleys set to the highest position and crossing the arms in front of the body at the end of the movement. This movement targets the chest muscles, specifically the lower, inner, and outer regions, while also working on the shoulders and the triceps as secondary muscles.',
        descriptionImage:
            'assets/images/chest/Bench-Press-Muscle-work-300x300.png',
      ),
    ],
  ),
  CardModel(
    image: "assets/images/all/cover_shoulder_3.jpg",
    name: "Advanced Back",
    value: 3,
    excersises: [
      ExcersiseModel(
        image: "assets/images/back/Lat-Pulldown.gif",
        name: "Front Pulldown",
        sets: "10",
        description:
            'Lat Pulldown is an exercise that primarily targets the latissimus dorsi muscles (known as "lats") in your back. It involves pulling down a cable bar or handling it downwards towards your chest while sitting on a specially designed machine. This exercise is usually performed with a wide grip, but it can also be done with a narrow grip or an underhand grip to target different muscle groups in the back and arms. It is a common exercise to build upper body strength and improve body posture.',
        descriptionImage:
            'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/Rope-Straight-Arm-Pulldown.gif",
        name: "Rope Straight Arm Pulldown",
        sets: "10",
        description:
            'Rope Straight Arm Pulldown works on training the abdominal muscles through a long range of motion, making it beneficial for those who find it challenging to feel their back during traditional pulldown exercises. Cable movements provide continuous tension throughout the entire motion, allowing you to work on both the contracted and stretched phases of the exercise. More tension means more muscle activation.',
        descriptionImage:
            'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/Barbell-Bent-Over-Row.gif",
        name: "Barbell Bent Over Row",
        sets: "10",
        description:
            'Barbell Bent Over Row is a compound weightlifting exercise that primarily targets the upper back muscles, including the latissimus dorsi, rhomboids, traps, as well as the posterior deltoid and the biceps. It also engages the core muscles for stability. This exercise is commonly used to build strength and muscle mass in the back and arms.',
        descriptionImage:
            'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/Lever-T-bar-Row.gif",
        name: "Wide Grip Pump",
        sets: "10",
        description:
            'T-bar Row is considered a strength exercise that simulates the rowing movement in a boat. The goal is to strengthen the muscles that bring the arms towards the body, as well as the muscles that move the shoulder blades towards the spine. T-bar Row allows you to lift more weight, and due to the nature of this movement, you can benefit from lifting heavier weights.',
        descriptionImage:
            'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/close-grip-cable-row.gif",
        name: "Deep Ground Pull",
        sets: "10",
        description:
            'V-shaped Handle: The V-shaped handle design provides a more natural grip, improving wrist alignment and reducing joint stress. This can be particularly useful for those experiencing wrist or elbow pain when using other types of handles.',
        descriptionImage:
            'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/pek-fly-reverse.gif",
        name: "Reverse Butterfly",
        sets: "10",
        description:
            'Adjust the seat so that the handles are at shoulder level, and be sure to maintain good neck and lower back posture.',
        descriptionImage:
            'assets/images/back/SEATED-ROW-MACHINE-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/Barbell-Deadlift.gif",
        name: "Deadlift",
        sets: "10",
        description:
            'Barbell Deadlift is a compound exercise that involves lifting weight from the ground to a standing position. Often considered one of the best exercises for building overall strength and power, it works on training multiple muscle groups throughout the body.',
        descriptionImage:
            'assets/images/back/deadlift-muscle-worked-300x300.png',
      ),
    ],
  ),
  CardModel(
    image: "assets/images/shoulder.jpg",
    name: "Advanced Shoulders",
    value: 3,
    excersises: [
      ExcersiseModel(
        image: "assets/images/shoulder/Dumbbell-Shoulder-Press.gif",
        name: "Lateral Assembly",
        sets: "10",
        description:
            'Dumbbell Shoulder Press, also known as Dumbbell Upper Press, is an exercise targeting the shoulder muscles and the upper part of the body. It involves lifting a pair of dumbbells from shoulder level to an overhead position, using the shoulders and arms.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Dumbbell-Lateral-Raise.gif",
        name: "Lateral Raise",
        sets: "10",
        description:
            'Dumbbell Lateral Raise is an exercise that primarily targets the lateral deltoid muscle, located on the sides of the shoulders. It is an effective isolation exercise for developing shoulder strength, stability, and aesthetics.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Incline-Dumbbell-Side-Lateral-Raise.gif",
        name: "Incline Side Bench",
        sets: "10",
        description:
            'Incline Single-Arm Lateral Raise is an exercise targeting the lateral head of the shoulder muscles. Many movements that work on the same muscle group may look similar but focus on different parts of the muscles because of different angles. If you want to develop more specifically targeted muscles, consider including exercises that focus on different aspects in your training program.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/scott-press.gif",
        name: "Front Scott Press",
        sets: "10",
        description:
            'The Scott Press exercise was developed by the famous bodybuilding coach Vince Gironda for his student Larry Scott. It is a shoulder exercise that targets all three parts of the shoulder simultaneously. By incorporating an arch-like wrist rotation during the press, the exercise effectively engages the lateral, anterior, and posterior deltoids in a fluid motion. This comprehensive involvement sets the Scott Press apart from other shoulder exercises, making it a powerful tool for balanced shoulder development.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Two-Arm-Dumbbell-Front-Raise.gif",
        name: "Front Flap",
        sets: "10",
        description:
            'Starting Position: Simply start by standing with a dumbbell in each hand with the back part of your hands facing forward.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/back/pek-fly-reverse.gif",
        name: "Reverse Butterfly",
        sets: "10",
        description:
            'Adjust the seat so that the handles are at shoulder level, and be sure to maintain good neck and lower back posture.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Cable-Shoulder-Press.gif",
        name: "Rear Cable",
        sets: "10",
        description:
            'Cable Shoulder Press is a different form of the iron or dumbbell press and is one of the best exercises for building size and strength. There are many different forms of this exercise, and each has its own advantages, making it good to mix things up and take advantage of what each one offers.',
        descriptionImage:
            'assets/images/shoulder/dumbbell-shoulder-press-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Dumbbell-Shrug.gif",
        name: "Dumbbell Shrug",
        sets: "10",
        description:
            'Dumbbell Shrugs are an exercise primarily targeting the trapezius muscles, located in the upper back and neck area. Overall, Dumbbell Shrugs are a simple yet effective exercise that can provide many benefits to your overall fitness. Whether you are a beginner or an experienced gym-goer, adding dumbbells to your exercise routine can help you achieve your fitness goals.',
        descriptionImage:
            'assets/images/shoulder/barbell-shrug-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/shoulder/Barbell-Shrug.gif",
        name: "Barbell Shrug",
        sets: "10",
        description: '',
        descriptionImage:
            'assets/images/shoulder/barbell-shrug-muscle-worked-300x300.png',
      )
    ],
  ),
  CardModel(
    image: "assets/images/all/cover_arm_3.jpg",
    name: "Advanced Arms",
    value: 3,
    excersises: [
      ExcersiseModel(
        image: "assets/images/arm/rope-bicep-curls.gif",
        name: "Rope Sevens",
        sets: "10",
        description:
            'The primary target of this exercise is the biceps brachii muscle. The cable rope aids in the upward movement, allowing you to squeeze the biceps for maximum contraction. Developing the brachialis muscle helps strengthen your grip and can make your arm muscles look stronger and more massive.',
        descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/cable-curl.gif",
        name: "Full Cable Drop 6",
        sets: "10",
        description:
            'Cable Curl is an isolation exercise for the biceps muscle. It involves a pulling motion performed using a cable machine.',
        descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Hammer-Curl.gif",
        name: "Hammer Curl",
        sets: "10",
        description:
            'Hammer Curl is a strength training exercise primarily targeting the brachialis muscles in the upper part of the arm. It is performed by holding weights in each hand with a neutral grip, meaning the palms of the hands face each other, then curling the weights towards the shoulders. The neutral grip targets the brachialis muscle, located on the outer part of the forearm, and helps in elbow flexion.',
        descriptionImage: 'assets/images/arm/biceps-anatomy-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Rope-Pushdown.gif",
        name: "Rope Eights",
        sets: "10",
        description:
            'Starting Position: Connect a rope attachment to the upper part of the cable machine. Hold the rope in your hands facing each other, then exhale and pull the rope downward towards your waist. Pause for a brief moment and then return to the starting position slowly.',
        descriptionImage:
            'assets/images/arm/triceps-muscle-worked-1-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Dumbbell-Incline-Two-Arm-Extension.gif",
        name: "French Dumbbell",
        sets: "10",
        description:
            'Start by positioning the bench at an angle between 45 and 75 degrees, or thereabouts. Hold one dumbbell and extend your arms straight towards the ceiling. Inhale while bending your elbows, allowing the dumbbell to move alongside your head directly. Wait for a short second at the bottom and then exhale, straightening your arms.',
        descriptionImage:
            'assets/images/arm/triceps-muscle-worked-1-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Side-One-Arm-Reverse-Pushdown.gif",
        name: "Single Rope",
        sets: "10",
        description: '',
        descriptionImage:
            'assets/images/arm/triceps-muscle-worked-1-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Reverse-Grip-Pushdown.gif",
        name: "Above Bar",
        sets: "10",
        description:
            'Reverse Grip Pushdown is an isolation movement for one joint, which isolates the triceps muscle without assistance from other muscle groups or joints. The underhand grip puts more emphasis on the middle head of the triceps muscle. As it helps target one head specifically, its important to incorporate it into your routine, if not in every workout, for balanced development.',
        descriptionImage:
            'assets/images/arm/triceps-muscle-worked-1-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Barbell-Reverse-Wrist-Curl-Over-a-Bench.gif",
        name: "Rest",
        sets: "10",
        description: '',
        descriptionImage: '',
      ),
      ExcersiseModel(
        image: "assets/images/arm/Dumbbell-Wrist-Curl.gif",
        name: "Rest",
        sets: "10",
        description: '',
        descriptionImage: '',
      )
    ],
  ),
  CardModel(
    image: "assets/images/all/cover_leg_3.jpg",
    name: "Advanced Legs and Abs",
    value: 3,
    excersises: [
      ExcersiseModel(
        image: "assets/images/leg/Sled-Hack-Squat.gif",
        name: "Front Squat",
        sets: "10",
        description:
            'The Hack Squat machine focuses on the quadriceps muscles. It is also a compound exercise designed to train and strengthen the entire lower body, including the hips, knee tendons, quadriceps, and core muscles. Due to its safer application, beginners may prefer it.',
        descriptionImage:
            'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/BARBELL-SQUAT.gif",
        name: "Barbell Squat 11",
        sets: "10",
        description:
            'Barbell Squat is a strength training exercise targeting the lower body muscles, especially the quadriceps, knee tendons, and glutes. It is a compound exercise, meaning it works on multiple muscle groups at once. The exercise is performed using a barbell, a long straight bar loaded with plates.',
        descriptionImage:
            'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Leg-Press.gif",
        name: "Wide Leg Press 7",
        sets: "10",
        description:
            'Leg press exercise is a type of strength training. It is an effective movement to strengthen the quadriceps muscles located in the front part of your upper legs. It is usually done using a leg press machine, consisting of a seat and a platform where weight plates can be added.',
        descriptionImage:
            'assets/images/leg/HACK-SQUAT-MUSCLE-WORKED-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Dumbbell-Rear-Lunge.gif",
        name: "Lunges",
        sets: "10",
        description:
            'Many movements working the same muscle group may look similar but focus on different parts of the muscles as they operate at different angles. If you want to build specifically targeted muscles, consider incorporating exercises that focus on different aspects into your workout routine.',
        descriptionImage:
            'assets/images/leg/Pistol-squat-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Leg-Curl.gif",
        name: "Hamstring Curl",
        sets: "10",
        description:
            'Leg curl exercise is an isolation exercise targeting the muscles on the back of the thigh, specifically the hamstring tendons. It is an effective exercise for developing strength, size, and muscular endurance in the hamstring tendons. It is usually performed using a leg curl machine found in gyms or fitness centers.',
        descriptionImage:
            'assets/images/leg/leg-curl-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Hack-Squat-Calf-Raise.gif",
        name: "Machine Calf Raise",
        sets: "10",
        description:
            'Since the targeted muscle group in this isolation exercise is the leg muscles, maximum muscle growth can be achieved by focusing more on the muscles in this area.',
        descriptionImage: 'assets/images/leg/calf-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Barbell-Seated-Calf-Raise.gif",
        name: "Calf Raise",
        sets: "10",
        description: '',
        descriptionImage: 'assets/images/leg/calf-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Decline-Sit-up.gif",
        name: "Abdominals",
        sets: "10",
        description:
            'Decline sit-up exercises target the rectus abdominis and oblique muscles to strengthen the core muscles. It is an exercise you can apply to sculpt the upper abdominal muscles and the six-pack muscles.',
        descriptionImage: 'assets/images/leg/Crunch-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Ab-Coaster-Machine.gif",
        name: "Abdominals",
        sets: "10",
        description:
            'The AB Coaster is a piece of exercise equipment designed to target the abdominal muscles. It consists of a curved track that allows the user to perform a rolling motion while seated, focusing on the rectus abdominis and oblique muscles.',
        descriptionImage: 'assets/images/leg/Crunch-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Captains-Chair-Leg-Raise.gif",
        name: "Abdominals",
        sets: "10",
        description:
            'This leg raise exercise works on strengthening the hip muscles to improve your core muscles, especially the lower abdominal muscles. Additionally, it engages the back, chest, and oblique muscles as stabilizers during the exercise.',
        descriptionImage:
            'assets/images/leg/Captains-Chair-Leg-Raise-muscle-worked-300x300.png',
      ),
      ExcersiseModel(
        image: "assets/images/leg/Weighted-Front-Plank.gif",
        name: "Plank",
        sets: "10",
        description:
            'It is a weighted plank variation designed by adding resistance. It is mostly preferred for advanced athletes. Being a multi-functional movement, the plank not only targets the abdominal muscles but also focuses on the spine and hips. The plank strengthens and tightens your entire body, improves your posture and balance, reduces body fat, and can help enhance your metabolism.',
        descriptionImage: 'assets/images/leg/plank-muscle-worked-300x300.png',
      ),
    ],
  ),
];
