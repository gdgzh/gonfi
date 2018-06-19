import 'package:flutter/material.dart';
import 'package:gonfi/app/pages/schedule/session_view_model.dart';

import 'session_tile.dart';

final sessionListKey = GlobalKey(debugLabel: 'sessionListKey');

class SessionList extends StatefulWidget {
  final List<SessionViewModel> sessionViewModels;
  SessionList({this.sessionViewModels}) : super(key: sessionListKey);
  @override
  SessionListState createState() {
    return SessionListState();
  }
}

class SessionListState extends State<SessionList> {
  ScrollController _scrollController;
  var scrollOffset = 0.0;
  var fixPoints = Map<String, double>();
  var showTime = "9:00";
  var currentFixPoint = 144.0;
  var _oldScrollOffset = 0.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: GestureDetector(
        onVerticalDragStart: (DragStartDetails details) {},
        child: Stack(
          children: [
            buildWithSliver(),
            TimeOverlay(
              text: showTime,
              topY: scrollOffset,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      this.handleScrolling();
    });
  }

  void handleScrolling() {
    if (_scrollController.offset > _oldScrollOffset) {
      handleUpscrolling();
    } else {
      handleDowndScrolling();
    }
    setState(() {
      _oldScrollOffset = _scrollController.offset;
    });
    print(
        'offset: ${_scrollController.offset} currentFixpoint: $currentFixPoint fixpoints: $fixPoints');
  }

  void handleUpscrolling() {
    if (_scrollController.offset >= currentFixPoint) {
      scrollOffset = currentFixPoint - _scrollController.offset;
      if ((scrollOffset * -1) >= 72) {
        var fixPointValues = fixPoints.values.toList();
        fixPointValues.sort((a, b) => a.compareTo(b));
        currentFixPoint = fixPointValues.firstWhere((element) {
          return element > currentFixPoint;
        });
        print('Set new currentFix point to $currentFixPoint');
        fixPoints.forEach((key, value) {
          if (value == currentFixPoint) {
            showTime = key;
            print('Set show time to $showTime');
          }
        });
        scrollOffset = 0.0;
      }
    }
  }

  void handleDowndScrolling() {
    if (_scrollController.offset <= currentFixPoint) {
      scrollOffset = currentFixPoint + _scrollController.offset;
      print('Scrollofset: ${(scrollOffset * -1)}');
      if ((scrollOffset * -1) <= 72) {
        var fixPointValues = fixPoints.values.toList();
        fixPointValues.sort((a, b) => a.compareTo(b));
        currentFixPoint = fixPointValues.firstWhere((element) {
          return element < currentFixPoint;
        });
        print('Set new currentFix point to $currentFixPoint');
        fixPoints.forEach((key, value) {
          if (value == currentFixPoint) {
            showTime = key;
            print('Set show time to $showTime');
          }
        });
        scrollOffset = 0.0;
      }
    } else {
      print('Not you should scroll');
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget buildWithSliver() {
    var lastSavedTime = "";
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              var viewModel = widget.sessionViewModels[index];
              var lastTime = viewModel.time;

              if (index > 0) {
                lastTime = widget.sessionViewModels[index - 1].time;
              } else {
                lastSavedTime = viewModel.time;
              }
              var hideTime = lastTime == viewModel.time;
              if (!hideTime) {
                var myfixpoint = (index - 1) * 72.0;
                fixPoints[lastSavedTime] = myfixpoint;
                print('Added fixpoint: $myfixpoint to $lastSavedTime');
                lastSavedTime = viewModel.time;
              }
              return SessionTile(
                title: viewModel.title,
                time: viewModel.time,
                subTitle: viewModel.subTitle,
                hideTime: hideTime || viewModel.time == showTime,
                onTap: () {},
              );
            },
            childCount: widget.sessionViewModels.length,
          ),
        )
      ],
    );
  }

  Widget buildListView() {
    if (widget.sessionViewModels == null || widget.sessionViewModels.isEmpty) {
      return Center(child: Text("No Sessions"));
    }
    List<Widget> listTiles = [];
    var lastTime = widget.sessionViewModels.first.time;
    widget.sessionViewModels.forEach((viewModel) {
      listTiles.add(SessionTile(
        title: viewModel.title,
        time: viewModel.time,
        subTitle: viewModel.subTitle,
        hideTime: lastTime == viewModel.time,
        onTap: () {},
      ));
      lastTime = viewModel.time;
    });

    return ListView(
      controller: _scrollController,
      children: listTiles,
    );
  }
}

class TimeOverlay extends ImplicitlyAnimatedWidget {
  final double topY;
  final String text;

  TimeOverlay({Key key, this.topY = 0.0, this.text})
      : super(key: key, duration: const Duration(microseconds: 0));

  @override
  _TimeOverlayState createState() => _TimeOverlayState();
}

class _TimeOverlayState extends AnimatedWidgetBaseState<TimeOverlay> {
  Tween<double> _topY;
  Tween<String> _text;
  @override
  void forEachTween(TweenVisitor visitor) {
    _topY = visitor(
      _topY,
      widget.topY,
      (dynamic value) => new Tween<double>(begin: value),
    );
    _text = visitor(
      _text,
      widget.text,
      (dynamic value) => new Tween<String>(begin: value),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    var textStyle = textTheme.body1
        .merge(TextStyle(color: theme.primaryColor, fontSize: 18.0));
    return Positioned(
      top: _topY.evaluate(animation),
      child: Container(
        margin: const EdgeInsets.only(left: 11.0, right: 8.0),
        width: 55.0,
        height: 20.0,
        //color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(_text.evaluate(animation), style: textStyle),
          ],
        ),
      ),
    );
  }
}
