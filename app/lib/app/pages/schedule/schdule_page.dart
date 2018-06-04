import 'package:flutter/material.dart';
import 'package:gonfi/app/inject/inject.dart';
import 'package:gonfi/app/pages/schedule/schedule_bloc.dart';

class SchedulePage extends StatefulWidget {
  @override
  SchedulePageState createState() => SchedulePageState();
}

class SchedulePageState extends State<SchedulePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScheduleBloC _bloc;
  @override
  Widget build(BuildContext context) {
    _bloc = InjectorProvider.of(context).scheduleBloc;
    return Scaffold(
      appBar: buildAppBar(context),
      body: TabBarView(
        controller: _tabController,
        children: [
          new Center(child: Text('May 8')),
          new Center(child: Text('May 9')),
          new Center(child: Text('May 10')),
          new Center(child: Text('Agenda')),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget buildUserIcon(BuildContext context) {
    return StreamBuilder<String>(
        stream: _bloc.photoUrl,
        builder: (context, snapshot) {
          if (snapshot.data == null || snapshot.data.isEmpty) {
            return Icon(Icons.account_circle);
          }
          return CircleAvatar(
            radius: 16.0,
            backgroundImage: NetworkImage(snapshot.data),
          );
        });
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: buildUserIcon(context),
        color: Theme.of(context).primaryColor,
        onPressed: () {
          _bloc.singInWithGoogle();
        },
      ),
      elevation: 0.0,
      centerTitle: true,
      title: Text(
        'Schedule',
        style: Theme.of(context).textTheme.headline,
      ),
      backgroundColor: Theme.of(context).canvasColor,
      bottom: TabBar(
        controller: _tabController,
        tabs: [
          buildTab("May 8", context),
          buildTab("May 9", context),
          buildTab("May 10", context),
          buildTab("Agenda", context),
        ],
      ),
    );
  }

  Tab buildTab(String text, BuildContext context) {
    return Tab(
      child: Text(
        text,
        style: TextStyle(color: Theme.of(context).textTheme.body1.color),
      ),
    );
  }
}
