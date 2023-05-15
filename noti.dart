import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class notiful extends StatefulWidget {
  const notiful({super.key});

  @override
  State<notiful> createState() => _notifulState();
}

class _notifulState extends State<notiful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Local Notification in Flutter"),
            backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Container( 
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                     ElevatedButton(
                  child: Text('notifiy'),
                  onPressed: () {_showNotification();} 
                ),
                    
              ],
            ),
        ),
    );
  } 
 void _showNotification() async {
   await AwesomeNotifications().createNotification(
    content: NotificationContent(
        id: 1,
        channelKey: 'basic',
        title: 'My Notification Title',
        body: 'This is the body of my notification',
        notificationLayout: NotificationLayout.BigText,
        
    ),
);
}
}