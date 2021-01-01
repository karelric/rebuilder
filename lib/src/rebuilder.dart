import 'dart:async';
import 'package:flutter/material.dart';

typedef ErrorBuilder = Widget Function(BuildContext context, Object error);

typedef Builder = FutureOr<Widget> Function(BuildContext context, Widget child);

class Rebuilder extends StatefulWidget {
  final WidgetBuilder waiting;

  final ErrorBuilder errorBuilder;

  final Builder builder;

  final Widget child;

  Rebuilder({
    Key key,
    @required this.waiting,
    @required this.errorBuilder,
    @required this.builder,
    this.child,
  }) : super(key: key);

  @override
  _RebuilderState createState() => _RebuilderState();

  static _RebuilderState of(BuildContext context) {
    return context.findAncestorStateOfType<_RebuilderState>();
  }
}

class _RebuilderState extends State<Rebuilder> {
  Widget _child;

  @override
  void initState() {
    super.initState();
    _child = widget.waiting(context);
    _futureBuilder(context);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: create your own transition animation
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 200),
      child: _child,
    );
  }

  void rebuild() {
    setState(() => _child = widget.waiting(context));
    _futureBuilder(context);
  }

  Future<void> _futureBuilder(BuildContext context) async {
    try {
      final w = await widget.builder(context, widget.child);
      setState(() => _child = w);
    } catch (e) {
      setState(() => _child = widget.errorBuilder(context, e));
    }
  }
}
