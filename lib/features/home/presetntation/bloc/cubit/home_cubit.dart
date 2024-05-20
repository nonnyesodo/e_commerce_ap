import 'package:bloc/bloc.dart';
import 'package:eccomerce/features/home/presetntation/pages/cart.dart';
import 'package:eccomerce/features/home/presetntation/pages/favourite.dart';
import 'package:eccomerce/features/home/presetntation/pages/profile.dart';
import 'package:meta/meta.dart';
import '../../pages/home.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List bottomnavScreen = const [HomePage(), Favorite(), Cart(), Profile()];
  int bottonnavIndex = 0;

  changeBottomNav(value) {
    emit(HomeLoading());
    bottonnavIndex = value;
    emit(HomeILoaded());
  }
}
