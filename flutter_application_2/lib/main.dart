import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // TextEditingControllerlar
  TextEditingController _firstController = TextEditingController();
  TextEditingController _secondController = TextEditingController();

  // Parolni ko'rsatish yoki yashirish uchun flag
  bool _isObscured = true;

  // Tekshiruv uchun qiymatlar
  String correctName = "Maryamxon Meliboyeva";
  String correctPassword = "1234567";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // X ikonka va Log In matni
              Row(
                children: [
                  Icon(Icons.close),
                  SizedBox(width: 170),
                  Text(
                    "Log in",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              SizedBox(height: 20),
              // Facebook bilan davom etish tugmasi
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.facebook, color: Colors.white, size: 40),
                        SizedBox(width: 30),
                        Text(
                          "Continue with Facebook",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Google bilan davom etish tugmasi
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 237, 243),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://w7.pngwing.com/pngs/168/533/png-transparent-google-logo-google-logo-google-home-google-now-google-plus-company-text-trademark-thumbnail.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 30),
                        Text(
                          "Continue with Google",
                          style: TextStyle(
                              color: Color.fromARGB(255, 10, 10, 10),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // OR matni
              Text(
                "OR",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 20),
              // Ism/familiya TextField
              TextField(
                controller: _firstController,
                decoration: InputDecoration(
                  labelText: 'Ism / Familiya',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.cancel),
                    onPressed: () {
                      _firstController.clear(); // Ma'lumotni o'chirish
                    },
                  ),
                ),
              ),
              SizedBox(height: 30),
              // Parol TextField
              TextField(
                controller: _secondController,
                obscureText: _isObscured, // Matnni yashirish
                decoration: InputDecoration(
                  labelText: 'Parol',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscured
                          ? Icons.remove_red_eye
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured; // Parolni togglash
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 50),
              // Log In tugmasi
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    // Kiritilgan ma'lumotlarni tekshirish
                    if (_firstController.text == correctName &&
                        _secondController.text == correctPassword) {
                      // Agar ma'lumotlar to'g'ri bo'lsa boshqa sahifaga o'tish
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NextPage(),
                        ),
                      );
                    } else {
                      // Agar noto'g'ri bo'lsa, Snackbar orqali xatolik ko'rsatish
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Noto'g'ri ism yoki parol"),
                        ),
                      );
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 240, 69, 21),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              // Forgot your password matni
              Text(
                "Forgot your password?",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Yangi sahifa
class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yangi Sahifa'),
      ),
      body: Center(
        child: Text(
          'Siz muvaffaqiyatli kirishingiz mumkin!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
