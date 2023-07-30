import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/use_cases/fetch_newest_use_case.dart';
import 'newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit(this.fetchNewestBooksUseCase) : super(NewestBooksInitial());
  static NewestBooksCubit get(context) => BlocProvider.of(context);
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;

  Future<void> fetchNewestBooks() async {
    var requst = await fetchNewestBooksUseCase.call();
    requst.fold((failuer) {
      emit(NewestBooksFailuer(failuer.messages));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
