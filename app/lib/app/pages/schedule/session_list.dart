import 'package:flutter/material.dart';

class SessionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: ListView(
        children: [
          buildListItem(textTheme, theme),
          buildListItem(textTheme, theme),
          buildListItem(textTheme, theme),
        ],
      ),
    );
  }

  Container buildListItem(TextTheme textTheme, ThemeData theme) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0),
      height: 70.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "08:00",
            style: textTheme.body1
                .merge(TextStyle(color: theme.primaryColor, fontSize: 18.0)),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Regsistration",
                    style: textTheme.subhead,
                  ),
                  Text(
                    "1.5 hour / Registrationdesk",
                    style: textTheme.body2,
                  ),
                  Row(
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
                  )
                ],
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.star_border,
              color: theme.primaryColor,
            ),
            padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
