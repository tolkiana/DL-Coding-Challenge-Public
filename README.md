# Sports Weather

![SportsWeather](https://raw.githubusercontent.com/tolkiana/DL-Coding-Challenge-Public/nelida/SportsWeather/Assets.xcassets/AppIcon.appiconset/weather@40.png)

Sports Weather is an app that provides realtime weather information but unlike any reagular weather app _Sports Weather_ is foucused in users that practice outdoor activires providing information about appropiate weather conditions for their activities.

Some outdoor activities might include:
  - Climbing
  - Hiking
  - Running
  - Biking
  - Skiing
  - Camping, etc.

### App Features

- Get realtime information based on your current location.
- Daily Forecast.
- Hourly Forecast.
- Searching weather for different Cities.
- Maps with weather in nearby Cities.
- Notifications about weather conditions for specific Sports or Activities.
- Profile and customization about favorite sports and desire conditions.

### Project Structure

The Source code of the project can be found in this repository in the `Source/` folder which it's organized with the following folder structure:

- Storyboards
- Core
- Extensions
- Constants
- ViewControllers
- Views
- Cells
- ViewModels

The `Core/` folder contains important classes that support the base architecture of the application and its organized in the following folders.

- Models
- Services
- APIs 
- Network
- Persistance


### Top level Architecture

The following diagram represents the top level architecture of the app.

![SportsWeather](https://raw.githubusercontent.com/tolkiana/DL-Coding-Challenge-Public/nelida/SportsWeather/Documentation/Architecture.png)


### Third Party Libraries

| Library        | Version      | Installed with  |
| -------------  |:-------------:| --------------:|
| Alamofire      | 4.3          | Carthage        |


### Code Documentation

The Projects uses [Jazzy](https://github.com/realm/jazzy) third party library to generate Apple Like documentation.

You can find the gnerated documentation under the `Documentation/` folder.

### Continuos Integration
_To Do_
