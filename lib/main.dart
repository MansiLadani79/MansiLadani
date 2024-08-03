import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Figma Design to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection(),
            MainSection(),
            FreeSection(),
            WhatWeDoSection(),
            FeaturedThingsSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.grey,
            width: 100,
            height: 50,
          ),
          Row(
            children: [
              TextButton(onPressed: () {}, child: Text('Home')),
              TextButton(onPressed: () {}, child: Text('About Us')),
              TextButton(onPressed: () {}, child: Text('Shop')),
              TextButton(onPressed: () {}, child: Text('Contact')),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Call to action'),
            style: ElevatedButton.styleFrom(
              primary: Colors.grey, // Button color
            ),
          ),
        ],
      ),
    );
  }
}

class MainSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "The future of web design, today",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text("The future of web design, today"),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Call to action'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey, // Button color
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey,
              height: 400,
            ),
          ),
        ],
      ),
    );
  }
}

class FreeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      width: double.infinity,
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Don’t forget to grab this one, it’s free!",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text("Download the Ultimate con tomate guide."),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: Text('Call to action'),
            style: ElevatedButton.styleFrom(
              primary: Colors.grey, // Button color
            ),
          ),
        ],
      ),
    );
  }
}

class WhatWeDoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What we do",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
              "Our mission is very important to the planet: we plant as many trees as possible. Can you figure out?"),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FeatureItem(text: "We recycle everything we see"),
                  FeatureItem(text: "We teach people how to reuse their stuff"),
                  FeatureItem(text: "We believe in human beings as problem solvers"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String text;

  FeatureItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          color: Colors.grey,
        ),
        SizedBox(width: 8),
        Text(text),
      ],
    );
  }
}

class FeaturedThingsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Featured things",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 8),
          Center(
            child: Text(
                "Our mission is very important to the planet: we plant as many \n"
                    " trees as possible. Can you figure out?"),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardItem(),
              CardItem(),
              CardItem(),
            ],
          ),
          SizedBox(height: 55),
          Center(
            child: Text(
              "Our mission is very important to the planet: we plant as many \n"
                  "trees as possible. Can you figure out?",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Call to action'),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey, // Button color
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            color: Colors.grey,
          ),
          SizedBox(height: 8),
          Text(
            "The future of web design, today",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text("The future of web design, today"),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
            child: Text('Call to action'),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
               // Background color
              onPrimary: Colors.black,
              side: BorderSide(color: Colors.grey),// Button color
            ),
          ),


        ],
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Our mission is very important to the planet: we plant as many trees as possible. Can you figure out?",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
              // More Information
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "More information",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    FooterItem(text: "Home"),
                    FooterItem(text: "About us"),
                    FooterItem(text: "Shop"),
                    FooterItem(text: "Contact"),
                  ],
                ),
              ),
              // Stay in Contact
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Stay in contact",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    FooterItem(text: "info@contact.com"),
                    FooterItem(text: "+34 654 654 654"),
                  ],
                ),
              ),
              // Subscribe Section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Subscribe now to the newsletter",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    CustomTextField(hintText: "Your name"),
                    CustomTextField(hintText: "Your email"),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (bool? value) {},
                        ),
                        Expanded(
                          child: Text(
                            "I consent to the privacy policy",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Subscribe!'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey, // Button color
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Divider(color: Colors.white30),
          SizedBox(height: 16),
          Center(
            child: Text(
              "© 2024 Your Company. All rights reserved.",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class FooterItem extends StatelessWidget {
  final String text;

  FooterItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.white),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;

  CustomTextField({required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
        ),
      ),
    );
  }
}
