import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'delete_event.dart';
part 'delete_state.dart';

class DeleteBloc extends Bloc<DeleteEvent, DeleteState> {
  DeleteBloc() : super(DeleteInitial()) {
    on<DeleteEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
