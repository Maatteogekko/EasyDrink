import 'package:flutter/material.dart';

/// by Adam Jonsson at https://stackoverflow.com/a/54173729/13406917
class ExpandableSection extends StatefulWidget {
  final Widget child;
  final bool expanded;
  final Duration duration;
  final Axis axis;
  final Curve curve;

  const ExpandableSection({
    this.expanded = false,
    required this.child,
    this.duration = kThemeAnimationDuration,
    this.axis = Axis.vertical,
    this.curve = Curves.fastOutSlowIn,
    Key? key,
  }) : super(key: key);

  @override
  _ExpandedSectionState createState() => _ExpandedSectionState();
}

class _ExpandedSectionState extends State<ExpandableSection> with SingleTickerProviderStateMixin {
  late final AnimationController expandController;
  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    _runExpandCheck();
  }

  ///Setting up the animation
  void prepareAnimations() {
    expandController = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    animation = Tween<double>(
      // TODO finetune and expose outside
      begin: 0.1,
      end: 1,
    ).animate(expandController);
  }

  void _runExpandCheck() {
    if (widget.expanded) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void didUpdateWidget(ExpandableSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck();
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axis: widget.axis,
      axisAlignment: 1.0,
      sizeFactor: animation,
      child: widget.child,
    );
  }
}
