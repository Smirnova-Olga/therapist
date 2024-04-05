# therapist

A new Flutter project.

## The app structure

- lib(folder)

  - app(folder)
    - my_app.dart(root of the app)

  - core(folder)  
    - ui_kit(folder)
      - global_widgets(folder)
        - custom_app_bar.dart(contains a customized appbar for use throughout the app)
        - custom_divider.dart(contains a customized divider for use throughout the app)
        - custom_search_bar.dart(contains a customized search bar for use throughout the app)  
      - theme(folder)
        - app_text_theme.dart(contains a text theme for the app)
        - color_theme.dart(contains a color theme for the app)  

  - data(folder)
    - models(folder)
      - therapist_model.dart(data model representing the therapist)
    - repository(folder)
      - therapist_repository.dart(repository for interacting with therapist data)

  - presentation(folder)
    - choose_therapist_screen(folder)
        - cubit(folder)
            - choose_therapist_cubit.dart(Cubit to control the state of the choose_therapist_screen)
            - choose_therapist_state.dart(State used by ChooseTherapistCubit)
        - screens(folder)  
            - choose_therapist_page.dart(Main UI widget of the choose_therapist_screen)
        - widgets(folder)
            - therapist_card_widget.dart(widget displaying therapist information)

  - main.dart(application entry point)    
