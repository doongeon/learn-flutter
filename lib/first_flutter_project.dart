import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/button.dart';
import 'package:learn_flutter/widgets/card.dart';

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Hello, 동건',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'welcome back',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    '\$5 194 382',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyButton(
                        text: "Transfer",
                        bgColor: Colors.orangeAccent,
                        textColor: Colors.white,
                      ),
                      MyButton(
                        text: "Request",
                        bgColor: Color(0xFF333333),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Wallets",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Column(
                    children: [
                      MyCard(
                          region: "Euro",
                          balance: "6 428",
                          currency: "EUR",
                          bgColor: Color.fromARGB(255, 44, 44, 62),
                          icon: Icons.euro),
                      MyCard(
                          region: "Japan",
                          balance: "200 000",
                          currency: "YEN",
                          bgColor: Colors.black87,
                          icon: Icons.currency_yen),
                      MyCard(
                          region: "US",
                          balance: "2 000 000",
                          currency: "DOLLAR",
                          bgColor: Color.fromARGB(255, 44, 44, 62),
                          icon: Icons.currency_exchange),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
