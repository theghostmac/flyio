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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            onPressed: () {}, // TODO: Handle Receive Money button press
            label: const Text('Receive Money'),
            backgroundColor: Colors.black,
            icon: const Icon(Icons.arrow_downward),
          ),
          const SizedBox(height: 16),
          FloatingActionButton.extended(
            onPressed: () {}, // TODO: Handle Send Money button press
            label: const Text('Send Money'),
            backgroundColor: Colors.black,
            icon: const Icon(Icons.arrow_upward),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
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
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3, // 1/3 of the screen
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 400,
            child: Container(
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
            ),
          ),
          const Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleIndicator(isSelected: true),
                SizedBox(width: 8),
                CircleIndicator(isSelected: true),
                SizedBox(width: 8),
                CircleIndicator(isSelected: true),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CircleIndicator extends StatelessWidget {
  final bool isSelected;

  const CircleIndicator({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.black : Colors.white,
      ),
    );
  }
}
