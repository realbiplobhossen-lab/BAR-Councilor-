import 'package:flutter/material.dart';

void main() {
  runApp(const BarCouncilExamApp());
}

class BarCouncilExamApp extends StatelessWidget {
  const BarCouncilExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bar Council MCQ Exam',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: const Color(0xFFF4F6F9),
      ),
      home: const YearSelectionScreen(),
    );
  }
}

class Question {
  final int id;
  final String questionText;
  final List<String> options;
  final int correctOptionIndex;

  Question({
    required this.id,
    required this.questionText,
    required this.options,
    required this.correctOptionIndex,
  });
}

List<Question> getQuestionsForYear(String year) {
  if (year == '২০১২') {
    return [
      Question(
        id: 1,
        questionText: 'ফৌজদারি মামলায় আত্মরক্ষামূলক পরিস্থিতির দাবি উঠলে তা প্রমাণের দায়িত্ব কার?',
        options: [
          'ক) অভিযোগকারীর',
          'খ) রাষ্ট্রের',
          'গ) উক্ত দাবি উত্থাপনকারীর',
          'ঘ) ক্ষতিগ্রস্ত ব্যক্তির'
        ],
        correctOptionIndex: 2,
      ),
      Question(
        id: 2,
        questionText: 'মালিকের অনুমতি নিয়ে ক\' একটি বাড়িতে অবস্থানকালে বাড়ির মালিকানা দাবি করে। এক্ষেত্রে আইনগত বাধাকে কি বলে?',
        options: [
          'ক) স্বীকৃতি (Admission)',
          'খ) স্ব-কার্যজনিত বাধা (Estopped)',
          'গ) দাবী ত্যাগ (Waiver)',
          'ঘ) মৌন সম্মতি (Acquiescence)'
        ],
        correctOptionIndex: 1,
      ),
      Question(
        id: 3,
        questionText: 'এক পক্ষের দাবীকৃত ঘটনা প্রমাণের দরকার হবে না, যদি তা হয়-',
        options: [
          'ক) অপর পক্ষ কর্তৃক স্বীকৃত',
          'খ) ঐতিহাসিক সত্য',
          'গ) প্রাকৃতিক নিয়ম সিদ্ধ',
          'ঘ) সাক্ষ্য দ্বারা প্রমাণিত'
        ],
        correctOptionIndex: 0,
      ),
      Question(
        id: 4,
        questionText: 'আদালতে মামলার একটি পক্ষ নিজের সাক্ষী কোন বিষয়ে ইসিঙ্গপূর্ণ প্রশ্ন (Leading Question) করতে পারে?',
        options: [
          'ক) যে কোন বিষয়ে',
          'খ) স্বীকৃত বিষয়ে',
          'গ) তর্টিত বিষয়ে',
          'ঘ) বিশেষজ্ঞ মতামত বিষয়ে'
        ],
        correctOptionIndex: 1,
      ),
      Question(
        id: 5,
        questionText: 'কোন পক্ষ নিজ সাক্ষীকে একবার পরীক্ষার পর কোন কারণে পুনরায় পরীক্ষা (Re-examination) করতে পারে?',
        options: [
          'ক) পূর্বের বক্তব্যে ভুল শোধরানো',
          'খ) পূর্বের বক্তব্য স্পষ্টীকরণ',
          'গ) কোন কিছু মিথ্যা প্রমাণ',
          'ঘ) বিশেষজ্ঞ মতামত বিষয়ে'
        ],
        correctOptionIndex: 1,
      ),
      Question(
        id: 6,
        questionText: 'কোন সাক্ষীকে জেরা করার উদ্দেশ্য হচ্ছে-',
        options: [
          'ক) তার ব্যক্তিত্বের ধরণ পরীক্ষা',
          'খ) ভিন্ন দাবি প্রতিষ্ঠা করা',
          'গ) তর্টিত বিষয়ে সত্য উদ্ঘাটন',
          'ঘ) তার মর্যাদা পরীক্ষা'
        ],
        correctOptionIndex: 2,
      ),
      Question(
        id: 7,
        questionText: 'দোবারা দোষ (Res judicata) বিষয়ে দেওয়ানী কার্যবিধির কত ধারায় বিধান আছে?',
        options: [
          'ক) ৯ ধারা',
          'খ) ১০ ধারা',
          'গ) ১১ ধারা',
          'ঘ) ১৫১ ধারা'
        ],
        correctOptionIndex: 2,
      ),
      Question(
        id: 8,
        questionText: 'এক জেলার আদালতে বিচারাধীন দেওয়ানী মামলা অন্য জেলার আদালতে স্থানান্তরের করতে পারে কোন কর্তৃপক্ষ?',
        options: [
          'ক) সংশ্লিষ্ট জেলা জজ',
          'খ) সংশ্লিষ্ট বিচারিক আদালত',
          'গ) হাইকোর্ট বিভাগ',
          'ঘ) সরকার'
        ],
        correctOptionIndex: 2,
      ),
    ];
  }
  return [];
}

class YearSelectionScreen extends StatelessWidget {
  const YearSelectionScreen({super.key});

  final List<String> years = const [
    '২০১২', '২০১৩', '২০১৫', '২০১৭', '২০২০', '২০২২', '২০২৩', '২০২৫', '২০২৬'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('বাংলাদেশ বার কাউন্সিল MCQ প্রস্তুতি'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'মডেল টেস্টের জন্য একটি সাল নির্বাচন করুন:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 2.2,
                ),
                itemCount: years.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo.shade50,
                      foregroundColor: Colors.indigo.shade900,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Colors.indigo.shade200),
                      ),
                    ),
                    onPressed: () {
                      final questions = getQuestionsForYear(years[index]);
                      if (questions.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('তথ্য'),
                            content: Text('${years[index]} সালের প্রশ্নগুলো পরবর্তীতে যুক্ত করা হবে। আপাতত ২০১২ সাল দিয়ে টেস্ট করুন।'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('ঠিক আছে'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExamScreen(year: years[index], questions: questions),
                          ),
                        );
                      }
                    },
                    child: Text(
                      '${years[index]} পরীক্ষা',
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExamScreen extends StatefulWidget {
  final String year;
  final List<Question> questions;

  const ExamScreen({super.key, required this.year, required this.questions});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  int currentIndex = 0;
  Map<int, int> selectedAnswers = {};

  @override
  Widget build(BuildContext context) {
    final question = widget.questions[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('বার কাউন্সিল MCQ - ${widget.year}'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'প্রশ্ন: ${currentIndex + 1} / ${widget.questions.length}',
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'নেগেটিভ মার্ক: ০.২৫',
                    style: TextStyle(fontSize: 12, color: Colors.indigo.shade900, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  question.questionText,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: question.options.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedAnswers[currentIndex] == index;
                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: isSelected ? Colors.indigo : Colors.grey.shade300,
                        width: isSelected ? 2 : 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: isSelected ? Colors.indigo.shade50 : Colors.white,
                    ),
                    child: RadioListTile<int>(
                      title: Text(
                        question.options[index],
                        style: TextStyle(
                          fontSize: 16,
                          color: isSelected ? Colors.indigo.shade900 : Colors.black87,
                        ),
                      ),
                      value: index,
                      groupValue: selectedAnswers[currentIndex],
                      activeColor: Colors.indigo,
                      onChanged: (value) {
                        setState(() {
                          selectedAnswers[currentIndex] = value!;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: currentIndex > 0
                      ? () {
                          setState(() {
                            currentIndex--;
                          });
                        }
                      : null,
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('পূর্ববর্তী'),
                ),
                currentIndex < widget.questions.length - 1
                    ? ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo, foregroundColor: Colors.white),
                        onPressed: () {
                          setState(() {
                            currentIndex++;
                          });
                        },
                        icon: const Icon(Icons.arrow_forward),
                        label: const Text('পরবর্তী'),
                      )
                    : ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
                        onPressed: () {
                          _showResultDialog(context);
                        },
                        icon: const Icon(Icons.check_circle),
                        label: const Text('সাবমিট করুন'),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showResultDialog(BuildContext context) {
    int correctCount = 0;
    int wrongCount = 0;
    int unattemptedCount = 0;

    for (int i = 0; i < widget.questions.length; i++) {
      if (!selectedAnswers.containsKey(i)) {
        unattemptedCount++;
      } else if (selectedAnswers[i] == widget.questions[i].correctOptionIndex) {
        correctCount++;
      } else {
        wrongCount++;
      }
    }

    double finalScore = correctCount - (wrongCount * 0.25);

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('পরীক্ষার ফলাফল', textAlign: TextAlign.center),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('✔️ সঠিক উত্তর: $correctCount'),
            const SizedBox(height: 8),
            Text('❌ ভুল উত্তর: $wrongCount'),
            const SizedBox(height: 8),
            Text('⏭️ উত্তর করা হয়নি: $unattemptedCount'),
            const Divider(height: 24),
            Text(
              'প্রাপ্ত নম্বর: ${finalScore.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: const Text('হোমে ফিরে যান'),
          ),
        ],
      ),
    );
  }
}
