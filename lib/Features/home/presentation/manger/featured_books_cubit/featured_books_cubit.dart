import 'package:booklyapp/Features/home/domain/use_cases/fetch_futured_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_books_states.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.fetchFuturedBooksUseCase)
      : super(FeaturedBooksInitial());
  static FeaturedBooksCubit get(context) => BlocProvider.of(context);
  final FetchFuturedBooksUseCase fetchFuturedBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    var requst = await fetchFuturedBooksUseCase.call();
    requst.fold((failuer) {
      emit(FeaturedBooksFailuer(failuer.messages));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
