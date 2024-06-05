import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'show_event.dart';
part 'show_state.dart';

class ShowBloc extends Bloc<ShowEvent, ShowState> {
  ShowBloc() : super(ShowInitial()) {
    on<ShowEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
