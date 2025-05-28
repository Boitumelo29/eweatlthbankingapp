import 'package:auto_route/auto_route.dart';
import 'package:eweatlthbankingapp/common_widgets/background/starry_background.dart';
import 'package:eweatlthbankingapp/common_widgets/widgets/buttons/long_button.dart';
import 'package:eweatlthbankingapp/core/routes/router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TransferSuccessPage extends StatefulWidget {
  const TransferSuccessPage({super.key});

  @override
  State<TransferSuccessPage> createState() => _TransferSuccessPageState();
}

class _TransferSuccessPageState extends State<TransferSuccessPage>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _opacityAnimation;
  Animation<Offset>? _positionAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.easeIn,
      ),
    );

    _positionAnimation = Tween<Offset>(
      begin: const Offset(0, 0.05),
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
                    "Transfer successful!!",
                    style: TextStyle(
                        // color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "You have successfully transferred.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: LongButton(
                      onTap: () {
                        context.router.push(const MainHomeRoute());
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
