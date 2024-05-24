import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../models/navbar_data.dart';
import '../../navigation_bar/navigation_bar_view.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({
    Key? key,
    required this.onItemChanged,
  }) : super(key: key);

  final Function(int newPosition) onItemChanged;

  @override
  State<NavigationBarWidget> createState() {
    return _NavigationBarWidgetState();
  }
}

class _NavigationBarWidgetState extends State<NavigationBarWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    Future.delayed(const Duration(seconds: 8), () {
      _controller!.forward();
    });
    // _delayDisplay();
  }

  void _delayDisplay() async {
    await Future.delayed(
      const Duration(seconds: 8),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller!,
      builder: (context, child) {
        return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 1.5),
              end: const Offset(0, 0),
            ).animate(
              CurvedAnimation(
                  curve: const Interval(.15, 0.3, curve: Curves.easeIn),
                  parent: _controller!),
            ),
            child: child);
      },
      child: NavigationBarView(
        navBarItems: [
          NavBarData(icon: Iconsax.search_normal),
          NavBarData(icon: Iconsax.message),
          NavBarData(icon: Iconsax.home),
          NavBarData(icon: Iconsax.heart),
          NavBarData(icon: Iconsax.frame),
        ],
        onItemChanged: widget.onItemChanged,
      ),
    );
  }
}
