// features/admain/presentation/bloc/auth_bloc.dart
// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {

  File? categoryImage;

  AuthBloc(
      )
      : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
    

      if (event is CategoryImageFromCamera) {
        final image = await ImagePicker.platform
            .getImageFromSource(source: ImageSource.camera);
        categoryImage = File(image!.path);
        emit(CategoryImageFromCameraState());
      }

      if (event is CategoryImageFromGallery) {
        final image = await ImagePicker.platform
            .getImageFromSource(source: ImageSource.gallery);
        categoryImage = File(image!.path);
        emit(CategoryImageFromGalleryState());
      }

      

      
      
    });

      }
}