import 'package:flutter/material.dart';
import 'package:gonfi_domain/models.dart';

class TeamScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CustomScrollView(
      physics: new BouncingScrollPhysics(),
      slivers: <Widget>[
        new SliverAppBar(
          expandedHeight: 150.0,
          flexibleSpace: new FlexibleSpaceBar(
              title: new Text(
                'Meet the Team',
                style: new TextStyle(fontSize: 32.0),
              ),
              background: new Image(
                  image: new NetworkImage(
                      "http://childrensministryleader.com/wp-content/uploads/2015/08/CM-Team-2.jpg"))),
        ),
        new SliverList(
            delegate: new SliverChildBuilderDelegate(
                (BuildContext context, int index) {},
                childCount: 10))
      ],
    );
  }
}

class _TeamMemberWidget extends StatelessWidget {
  final TeamMember teamMember;

  _TeamMemberWidget({this.teamMember});

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Card(
        child: new Column(
          children: <Widget>[
            new CircleAvatar(
              child:
                  new Image(image: new NetworkImage(this.teamMember.imageUri)),
            ),
            new Text("${this.teamMember.name} ${this.teamMember.lastName}"),
            new Text(this.teamMember.role),
            new Row(
              children: _iconForSocialMediaprofile(),
            )
          ],
        ),
      ),
    );
  }

  List<Icon> _iconForSocialMediaprofile() {
    List<SocialMediaProfile> profiles =
        this.teamMember.socialMediaProfiles.toList();
    List<Icon> icons = profiles.map((SocialMediaProfile profile) {
      switch (profile) {
        case SocialMediaProfile.facebook:
          return Icon(Icons.face);
        case SocialMediaProfile.twitter:
          return Icon(Icons.face);
        case SocialMediaProfile.linkedin:
          return Icon(Icons.face);
      }
    });
    return icons;
  }
}
