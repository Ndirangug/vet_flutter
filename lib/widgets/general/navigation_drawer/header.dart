import 'package:flutter/material.dart';
import 'package:vet_flutter/generated/service.pb.dart';
import 'package:vet_flutter/screens/auth/fetch_user.dart';

import '../../../constants.dart';

class ProfileSummary extends StatefulWidget {
  @override
  _ProfileSummaryState createState() => _ProfileSummaryState();
}

class _ProfileSummaryState extends State<ProfileSummary> {
  Farmer farmer = Farmer();

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.grey.shade300,
              backgroundImage: NetworkImage(
                  'https://ui-avatars.com/api/?name=${farmer.firstName}+${farmer.lastName}'),
            ),
          ),
          Container(
            child: Text(
              '${farmer.firstName} ${farmer.lastName}',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            margin: EdgeInsets.only(top: 15, bottom: 5),
          ),
          Container(
            child: Text(
              farmer.phone,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            margin: EdgeInsets.only(top: 5),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: kColorPrimary,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    //print('begin getting farmer from cache');
    getCachedUser().then((cachedFarmer) {
        setState(() {
          //print('getting farmer');
          farmer = cachedFarmer;
        });
    });
  }
}

