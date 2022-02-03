import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_document_assistant/pages/profile_com/temp_db.dart';

class ProfilesPage extends StatefulWidget {
  const ProfilesPage({Key? key}) : super(key: key);

  @override
  _ProfilesPageState createState() => _ProfilesPageState();
}

class _ProfilesPageState extends State<ProfilesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ProfilesList(),
    );
  }
}

class ProfilesList extends StatelessWidget {
  const ProfilesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: profiles.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xFF030B18),
                        width: 1.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: ListTile(
                  onTap: (){},
                    title:Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(profiles[index].name!,style: TextStyle(color: Color(0xff10288D),fontWeight: FontWeight.bold,fontSize: 18),),
                      ],
                    ) ,
                    subtitle:Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(profiles[index].designation!),
                      ],
                    ) ,
                    leading:CircleAvatar(

                    child: Image.asset(profiles[index].image!,width: 150,height: 120,fit: BoxFit.cover,)

                    ),

                     trailing:Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          child: Text(profiles[index].companyId.toString(), style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Text("Documents"),

                    ],
                  ) ,

                  ),
              ),
            );
            }
          ),
    );
  }
}
