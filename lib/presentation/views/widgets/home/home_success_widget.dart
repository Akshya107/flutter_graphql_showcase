import 'package:flutter/material.dart';
import 'package:flutter_graphql_showcase/domain/models/home/film_data_model.dart';

class HomeSuccessWidget extends StatelessWidget {
  final List<Film> list;

  const HomeSuccessWidget({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => Card(
              child: ListTile(
                title: Text(list[index].title),
                subtitle: Text("Director: ${list[index].director}"),
              ),
            ));
  }
}
