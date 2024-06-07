import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graphql_showcase/domain/models/home/film_data_model.dart';
import 'package:flutter_graphql_showcase/domain/repository/home/home_repository.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this.homeRepository) : super(HomeInitial()) {
    on<FetchHomeDataEvent>((event, emit) async {
      emit(HomeLoading());
      try {
        FilmDataModel? data = await homeRepository.fetchAllFilms();
        if (data != null) {
          emit(HomeSuccess(list: data.allFilms.films));
        } else {
          emit(HomeFailure());
        }
      } catch (e) {
        emit(HomeFailure(message: "An error occurred: $e"));
      }
    });
  }

  final HomeRepository homeRepository;
}
