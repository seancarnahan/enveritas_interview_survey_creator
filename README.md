# interview_survey_creator

This project is tool created for an interview with Enveritas that allows users to Create, Edit, and Export custom Surveys.

Figma: https://www.figma.com/file/U7A2Kq0J7y7i7dz8E7dpAp/Enveritas---interview_survey_creator?node-id=0%3A1

## Getting Started
- Runs on broswers, ios, and android
- Versions: Flutter 3.3.0 and Dart 2.18.0
  - https://docs.flutter.dev/get-started/install
- "flutter run" from root of App

## Structure
- Majority of code is in /lib
- /ios, /macos, /web, /linux, /windows, /android are used for specific configuration options for their corresponding device(ex: controlling release versioning)
- /constants -> Just has device constraints
- /mock -> has sample survey data
- /models -> Survey Object has a list of type SurveyQuestionable(abstract) which has 4 classes that implement it(text, boolean, number, multiple choice)
- /pages -> Navigation System is built around named routes. These pages hold the majority of the apps contents
- /providers -> State Management: https://pub.dev/packages/provider
  - AllSurveysProvider -> keeps track of the state of all Surveys(NOTE: w/ BE implementation, would not use this and instead use a subscription model with real time updates)
  - SurveyProvider -> has all the actions that can performed on a survey and updates is corresponding members with the changes
  - QuestionCreatorProvider -> is used to sync the state with question creator form and its corresponding preview
- /services -> NavigationService makes routing calls more clear when needed. Keyboard service is used for textfields(taken from previous app, but still my code)
- /widgets -> taken from previous side project and basic common components with Enveritas theming

## Disclaimers
- Used styling and assets from https://enveritas.org
- Used a mobile first approach
- Majority of widgets in interview_survey_creator/widgets are from previous side project that I have written
- Added features outside the Interview Prompt Scope, but most arent fully realized yet(i.e. Search, Export, Versioning)

## Flutter Doctor Summary:
<img width="520" alt="image" src="https://user-images.githubusercontent.com/29028698/193466472-2c982a87-ac30-48cb-9794-d15c61976c99.png">
