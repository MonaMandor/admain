import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'update_event.dart';
part 'update_state.dart';

class UpdateBloc extends Bloc<UpdateEvent, UpdateState> {
  UpdateBloc() : super(UpdateInitial()) {
    on<UpdateEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
