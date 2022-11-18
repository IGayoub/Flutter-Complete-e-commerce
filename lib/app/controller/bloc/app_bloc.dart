import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:project3/app/controller/action.dart';
import 'package:project3/app/controller/event/auth/back_action.dart';
import 'package:project3/app/controller/event/auth/options_actions.dart';
import 'package:project3/app/controller/event/auth/signup_actions.dart';
import 'package:project3/app/controller/event/home/home_action.dart';
import 'package:project3/app/controller/event/menu/menu_action.dart';
import 'package:project3/app/controller/state/auth/state.dart';
import 'package:project3/app/controller/state/home/state.dart';
import 'package:project3/app/controller/state/menu/state.dart';
import 'package:project3/app/controller/state/state.dart';

class AppBloc extends Bloc<Action, State> {
  AppBloc()
      : super(State(
            stateAuth: StateAuth.empty(),
            stateHome: StateHome.empty(),
            stateMenu: StateMenu.empty())) {
    //Auth Event
    on<OptionSignInAction>(
      (event, emit) {
        emit(
          State(
            stateAuth: StateAuth.opsignIn(
              contextEmpty: event.context,
            ),
          ),
        );
      },
    );
    on<OptionSignUpAction>(
      (event, emit) {
        emit(
          State(
            stateAuth: StateAuth.opsignUp(
              contextEmpty: event.context,
            ),
          ),
        );
      },
    );
    on<BackAction>(
      (event, emit) {
        emit(
          State(
            stateAuth: StateAuth.back(
              contextEmpty: event.context,
            ),
          ),
        );
      },
    );
    on<SignInAction>(
      (event, emit) {
        emit(
          State(
            stateAuth: StateAuth.login(
              contextEmpty: event.context,
            ),
          ),
        );
      },
    );
    on<SignUpAction>(
      (event, emit) {
        emit(
          State(
            stateAuth: StateAuth.signup(
              contextEmpty: event.context,
            ),
          ),
        );
      },
    );
    //Home Event
    on<HomeMenuAction>(
      (event, emit) {
        emit(State(
            stateAuth: StateAuth.empty(),
            stateHome: StateHome.menu(contextV: event.context!)));
      },
    );
    on<HomeCloseMenuAction>(
      (event, emit) {
        emit(State(
            stateAuth: StateAuth.empty(),
            stateHome: StateHome.menuClose(contextV: event.context!)));
      },
    );
    on<HomeCardDetailsAction>(
      (event, emit) {
        emit(
          State(
            stateAuth: StateAuth.empty(),
            stateHome: StateHome.details(
                contextV: event.context!, nameImg: event.imageName),
          ),
        );
      },
    );
    on<HomeBackCardDetailsAction>(
      (event, emit) {
        emit(
          State(
            stateAuth: StateAuth.empty(),
            stateHome: StateHome.backCardDetails(contextV: event.context!),
          ),
        );
      },
    );
    on<HomeCategorieSeeAllseeAllFeaturedAction>(
      (event, emit) {
        emit(
          State(
            stateAuth: StateAuth.empty(),
            stateHome: StateHome.cardSeeAllFeautred(contextV: event.context),
            stateMenu: StateMenu.empty(),
          ),
        );
      },
    );
    on<HomeCategorieSeeAllseeAllBestSellAction>(
      (event, emit) {
        emit(
          State(
            stateAuth: StateAuth.empty(),
            stateHome: StateHome.cardSeeAllBestSell(contextV: event.context),
            stateMenu: StateMenu.empty(),
          ),
        );
      },
    );
    //Menu Event
    on<MenuItemProfileAction>(
      (event, emit) {
        emit(
          State(
            stateHome: StateHome.empty(),
            stateAuth: StateAuth.empty(),
            stateMenu: StateMenu.profile(contextV: event.context!),
          ),
        );
      },
    );
    on<MenuItemMyCartAction>(
      (event, emit) {
        emit(
          State(
            stateHome: StateHome.empty(),
            stateAuth: StateAuth.empty(),
            stateMenu: StateMenu.mycart(contextV: event.context!),
          ),
        );
      },
    );
    on<MenuItemFavouriteAction>(
      (event, emit) {
        emit(
          State(
            stateHome: StateHome.empty(),
            stateAuth: StateAuth.empty(),
            stateMenu: StateMenu.favourite(contextV: event.context!),
          ),
        );
      },
    );
    on<MenuItemMyOrdersAction>(
      (event, emit) {
        emit(
          State(
            stateHome: StateHome.empty(),
            stateAuth: StateAuth.empty(),
            stateMenu: StateMenu.myOrders(contextV: event.context!),
          ),
        );
      },
    );
    on<MenuItemLanguageAction>(
      (event, emit) {
        emit(
          State(
            stateHome: StateHome.empty(),
            stateAuth: StateAuth.empty(),
            stateMenu: StateMenu.language(contextV: event.context!),
          ),
        );
      },
    );
    on<MenuItemSettingsAction>(
      (event, emit) {
        emit(
          State(
            stateHome: StateHome.empty(),
            stateAuth: StateAuth.empty(),
            stateMenu: StateMenu.settings(contextV: event.context!),
          ),
        );
      },
    );
  }
}
