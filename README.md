# interview_survey_creator

This project is tool created for an interview with Enveritas that allows users to Create, Edit, and Export custom Surveys.

Figma: https://www.figma.com/file/U7A2Kq0J7y7i7dz8E7dpAp/Enveritas---interview_survey_creator?node-id=0%3A1

## Getting Started
- Runs on broswers, ios, and android
- "flutter run" from root of App

## Disclaimers
- Used styling and assets from https://enveritas.org
- Used a mobile first approach (PageTransitions and Modals need to be customized for Desktop Still)
- Majority of widgets in interview_survey_creator/widgets are from previous side project that I have written
- Added features outside the Interview Prompt, but most arent fully realized yet(i.e. Search, Export, Preview)
- State Management: Primarily would use https://pub.dev/packages/provider and would eventually want to use in combination with https://pub.dev/packages/flutter_bloc. However, I thought a statemanager might be overkill for now, so am passing most of the data manually.
