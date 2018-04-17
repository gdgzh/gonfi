import 'package:flutter/material.dart';
import 'package:gonfi/app/theme.dart';
import 'package:gonfi/widget/tag.dart';
import 'package:gonfi/widget/time_widget.dart';
import 'package:gonfi_domain/models.dart';
import 'package:meta/meta.dart';

class SessionListItem extends StatelessWidget {
  final Session session;

  SessionListItem({@required this.session});

  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildTimeWidget(),
        _buildSessionItemContent(context),
      ],
    );
  }

  Widget _buildTimeWidget() {
    return new Padding(
      padding: const EdgeInsets.only(
          top: 32.0, bottom: 8.0, left: 16.0, right: 16.0),
      child: new TimeWidget(date: session.date),
    );
  }

  Widget _buildSessionItemContent(BuildContext context) {
    return new Card(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(16.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    this.session.topic,
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                new Text(
                  _buildSubtitle(),
                  style: Theme.of(context).textTheme.subhead,
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: new Row(
                    children: this.createTags(this.session.tags?.toList()),
                  ),
                ),
              ],
            ),
          ),
          _buildSpeakerItems(Colors.red),
        ],
      ),
    );
  }

  List<Tag> createTags(List<String> tagStrings) {
    List<Tag> tags = new List();
    tagStrings?.forEach((tag) => tags.add(new Tag(
          text: tag,
          color: GonfiThemeData.accentColor,
        )));
    return tags;
  }

  String _buildSubtitle() {
    String sessionLevel = "";

    switch (this.session.sessionLevel) {
      case SessionLevel.Beginner:
        sessionLevel = "Beginner";
        break;
      case SessionLevel.Intermediate:
        sessionLevel = "Intermediate";
        break;
      case SessionLevel.Pro:
        sessionLevel = "Pro";
        break;
    }

    return "${this.session.language} / ${this.session.room.number} / ${sessionLevel}";
  }

  Column _buildSpeakerItems(Color color) {
    List<Widget> speakers = this
        ?.session
        ?.speakers
        ?.map((Speaker speaker) => new _SessionSpeakerItem(speaker, color))
        ?.toList();
    return new Column(
      children: speakers,
    );
  }
}

class _SessionSpeakerItem extends StatelessWidget {
  final Speaker speaker;
  final Color color;

  _SessionSpeakerItem(this.speaker, this.color) : assert(speaker != null);

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: this.color,
      child: new ListTile(
        leading: new CircleAvatar(
          //TODO: Add placeholder image for speaker. Otherwise this might lead to a crash!
          backgroundImage: new NetworkImage(speaker.imageUri),
        ),
        title: new Text(
          "${this.speaker.name} ${this.speaker.lastName}",
          style: new TextStyle(color: Colors.white),
        ),
        subtitle: new Text(
          _buildSpeakerAddress(),
          style: new TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  String _buildSpeakerAddress() {
    String address = "";
    address = this.speaker.company?.name;
    if (address.isNotEmpty) {
      address = address +
          " / ${this.speaker.company?.address?.city
      }, ${this.speaker.company?.address.country}";
    } else {
      address =
          "${this.speaker.company?.address.city}, ${this.speaker.company?.address.country}";
    }
    return address;
  }
}
