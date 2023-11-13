import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.black,
        title: const Text('Hi, GhostMac 🚀'),
        centerTitle: false,
      ),
      body: const WalletPageView(),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Transactions',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Learn',
            ),
        ],
      ),
      floatingActionButton: Column(
        
      ),
    );
  }
}

class WalletPageView extends StatelessWidget {
  const WalletPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        WalletRow(
          title: 'Available Balance',
          balance: '\$0.00',
          toggleVisibility: () {},
          button1Text: 'Deposit',
          button2Text: 'Withdraw',
        ),
        WalletRow(
          title: 'Savings Pocket',
          balance: '\$0.00',
          toggleVisibility: () {},
          button1Text: 'Add Money',
          button2Text: 'Transfer',
        ),
        WalletRow(
          title: 'Portfolio Value',
          balance: '\$0.00',
          toggleVisibility: () {},
          button1Text: "Today's Earnings: \$0.00",
          button2Text: "All-time Earnings",
        ),
      ],
    );
  }
}

class WalletRow extends StatelessWidget {
  const WalletRow({
    required this.title,
    required this.balance,
    required this.toggleVisibility,
    required this.button1Text,
    required this.button2Text,
    Key? key,
  }) : super(key: key);

  final String title;
  final String balance;
  final VoidCallback toggleVisibility;
  final String button1Text;
  final String button2Text;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 12),
                ),
                Text(
                  balance,
                  style: const TextStyle(fontSize: 30),
                ),
                GestureDetector(
                  onTap: toggleVisibility,
                  child: const Icon(Icons.remove_red_eye),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: Text(
                          button1Text,
                          style: const TextStyle(color: Colors.white),
                        ),),
                    ElevatedButton(
                        onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                        child: Text(
                            button2Text,
                          style: const TextStyle(color: Colors.white),
                        ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
        ),
    );
  }}