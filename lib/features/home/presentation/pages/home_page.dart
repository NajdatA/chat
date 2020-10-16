import 'package:chat/core/util/app_localizations.dart';
import 'package:chat/core/util/generate_screen.dart';
import 'package:chat/features/home/presentation/bloc/bloc.dart';
import 'package:chat/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bloc = sl<HomeBloc>();

  @override
  void initState() {
    bloc.getCons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder(
        bloc: bloc,
        builder: (context, HomeState state) {
          if (state.isLoading) {
            return Center(
              child: CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 150, 190, 115)),
              ),
            );
          }
          return Container(
            child: Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/12),
              child: Column(
                children: [
                  Center(
                    child: Text(AppLocalizations.of(context).translate("my_private_consultations"),
                    style: TextStyle(color: Color.fromARGB(255, 150, 190, 115), fontWeight: FontWeight.bold, fontSize: 26),),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/1.14,
                    child: Stack(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: 15,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                              child: Container(
                                height: MediaQuery.of(context).size.height/10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0),
                                  border: Border.all(color: Colors.grey)
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(context, NameScreen.CHAT_SCREEN);
                                        },
                                        child: Container(
                                          color: Color.fromARGB(255, 150, 190, 115),
                                          child: Center(
                                            child: Text(
                                              'Aaa',
                                              style: TextStyle(color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.delete_outline, color:  Color.fromARGB(255, 150, 190, 115),),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.edit, color:  Color.fromARGB(255, 150, 190, 115),),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        Positioned(
                          bottom: 1,
                          right: 25,
                          child: GestureDetector(
                            onTap: () {
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 150, 190, 115)
                                      .withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
