import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graphql_showcase/domain/repository/home/home_repository.dart';
import 'package:flutter_graphql_showcase/presentation/bloc/home_bloc.dart';
import 'package:flutter_graphql_showcase/presentation/views/widgets/home/home_failure_widget.dart';
import 'package:flutter_graphql_showcase/presentation/views/widgets/loading_widget.dart';
import 'package:flutter_graphql_showcase/presentation/views/widgets/home/home_success_widget.dart';
import 'package:flutter_graphql_showcase/utils/constants.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.appBarTitle),
      ),
      body: BlocProvider(
        create: (context) =>
            HomeBloc(GetIt.I<HomeRepository>())..add(FetchHomeDataEvent()),
        child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          switch (state.runtimeType) {
            case HomeSuccess:
              var st = state as HomeSuccess;
              return HomeSuccessWidget(
                list: st.list,
              );
            case HomeFailure:
              return const HomeFailureWidget();
          }
          return const LoadingWidget();
        }),
      ),
    );
  }
}
