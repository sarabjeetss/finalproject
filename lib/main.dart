import 'package:flutter/material.dart';
import 'dart:async';

// Splash Screen
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });

    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/splash.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// Login Page
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    if (_cardNumberController.text == '123456789' && _passwordController.text == '123') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid credentials')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(maxWidth: 400),
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFb00b1c),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Sign on using your CIBC card number',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 80),
                      TextField(
                        controller: _cardNumberController,
                        decoration: InputDecoration(
                          labelText: 'Card Number',
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _login,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Color(0xFFb00b1c),
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                          textStyle: TextStyle(fontSize: 18),
                        ),
                        child: Text('Login'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Home Page
// Home Page
class HomePage extends StatelessWidget {
  final double savingsTotal = 1220.0; // Example total for Savings
  final double chequingTotal = 1256.92; // Example total for Chequing

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: <Widget>[
            Image.asset(
              'assets/logo.jpg',
              height: 100, // Adjust this value to control the size of the logo
            ),
            SizedBox(width: 16), // Space between the logo and the text
            Text(
              'CIBC Bank',
              style: TextStyle(
                color: Color(0xFFb00b1c),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[
              // Add options to the left of search.jpg
              TextButton(
                onPressed: () {
                  // Implement the onPressed action for "About CIBC"
                },
                child: Text(
                  'About CIBC',
                  style: TextStyle(
                    color: Color(0xFFb00b1c),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(width: 8),
              TextButton(
                onPressed: () {
                  // Implement the onPressed action for "Wealth"
                },
                child: Text(
                  'Wealth',
                  style: TextStyle(
                    color: Color(0xFFb00b1c),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(width: 8),
              TextButton(
                onPressed: () {
                  // Implement the onPressed action for "Commercial"
                },
                child: Text(
                  'Commercial',
                  style: TextStyle(
                    color: Color(0xFFb00b1c),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(width: 8),
              TextButton(
                onPressed: () {
                  // Implement the onPressed action for "Personal"
                },
                child: Text(
                  'Personal',
                  style: TextStyle(
                    color: Color(0xFFb00b1c),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(width: 16), // Space between the last option and search.jpg
              Image.asset(
                'assets/screen.jpg',
                height: 40, // Adjust the size as needed
              ),
              SizedBox(width: 8),
              Image.asset(
                'assets/call.jpg',
                height: 20, // Adjust the size as needed
              ),
              SizedBox(width: 8),
              TextButton(
                onPressed: () {
                  // Implement the onPressed action for "Contact Us"
                },
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                    color: Color(0xFFb00b1c),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Color(0xFFb00b1c),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Savings Account',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFb00b1c),
                            ),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SavingsPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 20),
                              textStyle: TextStyle(fontSize: 18, color: Color(0xFFb00b1c)),
                            ),
                            child: Text('View Transactions'),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.white,
                            child: Text(
                              'Total: \$${savingsTotal.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Chequing Account',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFb00b1c),
                            ),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ChequingPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 20),
                              textStyle: TextStyle(fontSize: 18, color: Color(0xFFb00b1c)),
                            ),
                            child: Text('View Transactions'),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.white,
                            child: Text(
                              'Total: \$${chequingTotal.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'My Account',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFb00b1c),
                            ),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Account Info'),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('Name: Sarabjeet Singh'),
                                        Text('Institution Number: 014'),
                                        Text('Transit Number: 00182'),
                                        Text('Account Number: 25478'),
                                        SizedBox(height: 10),
                                        Text('Account Benefits: Youth'),
                                      ],
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        child: Text('Close'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 20),
                              textStyle: TextStyle(fontSize: 18, color: Color(0xFFb00b1c)),
                            ),
                            child: Text('View'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BodyArea(), // Include BodyArea here
          ],
        ),
      ),
    );
  }
}




class SavingsPage extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    {"date": "2024-08-01", "description": "Interest Earned", "amount": 5.25},
    {"date": "2024-08-02", "description": "Transfer from Chequing", "amount": 300},
    {"date": "2024-08-03", "description": "Deposit", "amount": 100},
    {"date": "2024-08-04", "description": "Transfer from Chequing", "amount": 200},
    {"date": "2024-08-05", "description": "Interest Earned", "amount": 4.75},
    {"date": "2024-08-06", "description": "Deposit", "amount": 150},
    {"date": "2024-08-07", "description": "Transfer from Chequing", "amount": 250},
    {"date": "2024-08-08", "description": "Interest Earned", "amount": 3.5},
    {"date": "2024-08-09", "description": "Deposit", "amount": 200},
    {"date": "2024-08-10", "description": "Transfer from Chequing", "amount": 400},
  ];

  final double savingsTotal = 1220.0; // Example total for Savings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Savings Account'),
        backgroundColor: Color(0xFFb00b1c),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    'Total Balance: \$${savingsTotal.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFb00b1c),
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      itemCount: transactions.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(transactions[index]['description']),
                          subtitle: Text(transactions[index]['date']),
                          trailing: Text('\$${transactions[index]['amount'].toStringAsFixed(2)}'),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}



class ChequingPage extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    {"date": "2024-08-01", "description": "Direct Deposit", "amount": 1500},
    {"date": "2024-08-02", "description": "Grocery Store", "amount": -75.5},
    {"date": "2024-08-03", "description": "Utility Bill", "amount": -120.75},
    {"date": "2024-08-04", "description": "Transfer to Savings", "amount": -300},
    {"date": "2024-08-05", "description": "Salary", "amount": 2000},
    {"date": "2024-08-06", "description": "ATM Withdrawal", "amount": -200},
    {"date": "2024-08-07", "description": "Online Purchase", "amount": -50},
    {"date": "2024-08-08", "description": "Transfer from Savings", "amount": 250},
    {"date": "2024-08-09", "description": "Refund", "amount": 75},
    {"date": "2024-08-10", "description": "Deposit", "amount": 150},
  ];

  final double chequingTotal = 1256.92; // Example total for Chequing

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chequing Account'),
        backgroundColor: Color(0xFFb00b1c),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    'Total Balance: \$${chequingTotal.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFb00b1c),
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      itemCount: transactions.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(transactions[index]['description']),
                          subtitle: Text(transactions[index]['date']),
                          trailing: Text('\$${transactions[index]['amount'].toStringAsFixed(2)}'),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}




// Body Area
class BodyArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Your Trusted Banking Partner',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFb00b1c), // Text color
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'With CIBC, you get personalized service, competitive interest rates, and secure banking solutions. Experience banking that truly understands you.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Boost Your Business Potential',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFb00b1c), // Text color
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Optimize your business operations with our tailored banking solutions. Enjoy benefits like dedicated relationship managers, quick loan approvals, and more.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Digital Banking Services',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFb00b1c), // Text color
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Access your bank anytime, anywhere with CBIC digital banking services. Enjoy the convenience of mobile banking, internet banking, and more.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false, // Remove the debug banner
  ));
}
