import 'package:flutter/material.dart';

class SessionTile extends StatefulWidget {
  SessionTile({
    Key key,
    @required this.title,
    this.time = "",
    this.subTitle = "",
    this.isFavor = false,
    this.onTap,
    this.hideTime = false,
  })  : assert(title != null),
        super(key: key);
  final String title;
  final String time;
  final String subTitle;
  final bool isFavor;
  final VoidCallback onTap;
  final bool hideTime;

  @override
  SessionTileState createState() {
    return SessionTileState();
  }
}

class SessionTileState extends State<SessionTile> {
  updatePosition() {
    final renderBox = context.findRenderObject() as RenderBox;
    if (renderBox == null) return;
    print('My render box ${renderBox.globalToLocal(const Offset(0.0, 0.0))}');
  }

  @override
  Widget build(BuildContext context) {
    updatePosition();
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return buildTile(textTheme, theme);
  }

  Container buildTile(TextTheme textTheme, ThemeData theme) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0),
      height: 70.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTime(textTheme, theme),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  buildTitle(textTheme),
                  buildSubtitle(textTheme),
                  buildCategory(textTheme)
                ],
              ),
            ),
          ),
          buildIconButton(theme)
        ],
      ),
    );
  }

  IconButton buildIconButton(ThemeData theme) {
    return IconButton(
      icon: Icon(
        widget.isFavor ? Icons.star : Icons.star_border,
        color: theme.primaryColor,
      ),
      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
      onPressed: () {},
    );
  }

  Text buildSubtitle(TextTheme textTheme) {
    return Text(
      widget.subTitle,
      style: textTheme.body2,
    );
  }

  Text buildTitle(TextTheme textTheme) {
    return Text(
      widget.title,
      style: textTheme.subhead.merge(TextStyle(fontWeight: FontWeight.w500)),
    );
  }

  Widget buildCategory(TextTheme textTheme) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.greenAccent,
          ),
          width: 12.0,
          height: 12.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(
            'Keynote',
            style: textTheme.body2,
          ),
        )
      ],
    );
  }

  Widget buildTime(TextTheme textTheme, ThemeData theme) {
    var textStyle = textTheme.body1
        .merge(TextStyle(color: theme.primaryColor, fontSize: 18.0));
    if (widget.hideTime) {
      textStyle = textStyle.merge(TextStyle(color: Colors.transparent));
    }
    return Text(
      widget.time,
      style: textStyle,
    );
  }
}
