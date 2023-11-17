import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'adress_screen_event.dart';
part 'adress_screen_state.dart';

class AdressScreenBloc extends Bloc<AdressScreenEvent, AdressScreenState> {
  AdressScreenBloc() : super(AdressScreenInitial()) {
    on<AdressScreenEvent>((event, emit) {});
  }
}
