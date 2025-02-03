import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isMining = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7941D), // Orange background color
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Dashboard", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            poolMiningCard(),
            SizedBox(height: 16),
            bonusBalanceCard(),
            SizedBox(height: 16),
            cryptoTabProducts(),
            SizedBox(height: 16),
            joinUsSection(),
          ],
        ),
      ),
    );
  }

  Widget poolMiningCard() {
    return cardContainer(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "POOL MINING (1)",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "1,000 H/s",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Switch(
                value: isMining,
                onChanged: (value) {
                  setState(() {
                    isMining = value;
                  });
                },
                activeColor: Colors.blue,
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            "0.000000000000 BTC",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          Text("0.00", style: TextStyle(color: Colors.grey, fontSize: 12)),
          SizedBox(height: 8),
          Text("MINING CURRENCY: BTC", style: TextStyle(color: Colors.white)),
          SizedBox(height: 12),
          translucentButton("TURN ON", Icons.flash_on, Colors.blue),
        ],
      ),
    );
  }

  Widget bonusBalanceCard() {
    return cardContainer(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "BONUS BALANCE",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "100 HSH",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12),
          translucentButton(
            "SHARE TO EARN",
            FontAwesomeIcons.share,
            Colors.green,
          ),
        ],
      ),
    );
  }

  Widget cryptoTabProducts() {
    return cardContainer(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "CRYPTOTAB PRODUCTS",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CT Farm Pro",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Pro mining farm for real pros!",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              Icon(Icons.arrow_forward, color: Colors.blue),
            ],
          ),
        ],
      ),
    );
  }

  Widget joinUsSection() {
    return cardContainer(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "JOIN US",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Subscribe to grow your mining network and get more bitcoins.",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(FontAwesomeIcons.telegram, color: Colors.blue),
              Icon(FontAwesomeIcons.instagram, color: Colors.purple),
              Icon(FontAwesomeIcons.xTwitter, color: Colors.white),
              Icon(FontAwesomeIcons.facebook, color: Colors.blue),
              Icon(FontAwesomeIcons.discord, color: Colors.blueAccent),
              Icon(FontAwesomeIcons.youtube, color: Colors.red),
            ],
          ),
        ],
      ),
    );
  }

  Widget cardContainer(Widget child) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.8), // Low opacity card
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }

  Widget translucentButton(String text, IconData icon, Color color) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color.withOpacity(0.7), // Semi-transparent button background
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextButton.icon(
        onPressed: () {},
        icon: Icon(icon, color: Colors.white),
        label: Text(text, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
