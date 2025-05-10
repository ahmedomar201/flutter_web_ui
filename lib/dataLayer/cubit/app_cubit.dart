import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/utils/constansts.dart';
import '../networks/repository/repository.dart';
import 'app_state.dart';

AppBloc get cubit => AppBloc.get(navigatorKey.currentContext!);

class AppBloc extends Cubit<AppState> {
  final Repository repo;

  AppBloc({required Repository repository}) : repo = repository, super(Empty());

  static AppBloc get(context) => BlocProvider.of(context);
}
