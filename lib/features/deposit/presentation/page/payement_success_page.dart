import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_button.dart';
import 'package:eweatlthbankingapp/features/home_screen/presenation/home_page.dart';
import 'package:eweatlthbankingapp/features/tranfer_screen/presentation/transfer_screen.dart';
import 'package:flutter/material.dart';

class PaymentSuccessScreen extends StatefulWidget {
  const PaymentSuccessScreen({super.key});

  @override
  State<PaymentSuccessScreen> createState() => _PaymentSuccessScreenState();
}

class _PaymentSuccessScreenState extends State<PaymentSuccessScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _opacityAnimation;
  Animation<Offset>? _positionAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.easeIn,
      ),
    );

    _positionAnimation = Tween<Offset>(
      begin: Offset(0, 0.05),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.easeOut,
      ),
    );

    _controller!.forward();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          StarryBackground(),
          FadeTransition(
            opacity: _opacityAnimation!,
            child: SlideTransition(
              position: _positionAnimation!,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Spacer(),
                  const Icon(Icons.check_circle_outline,
                      size: 100, color: Colors.green),
                  const SizedBox(height: 20),
                  const Text(
                    "Deposit successful!!",
                    style: TextStyle(
                      // color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Your account has been successfully topped up.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: LongButton(
                      ///we send them to the home screen instead over here
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainHomeScreen()),
                              (Route<dynamic> route) =>
                          false,
                        );
                      },
                      title: "Done",
                      isLoading: false,
                    ),
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
