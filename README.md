# Flutter Bloc with GraphQL API Project

## Overview

This project is a Flutter application that utilizes the Bloc pattern for state management and
interacts with a GraphQL API. The project structure is organized to ensure clean architecture,
making the code scalable and maintainable.

### Project Structure

The project follows a layered architecture with the following main directories:

### data

#### data_sources:

Contains the data source implementations, such as API services.

api_services.dart: Handles the communication with the GraphQL API.

#### repository_impl:

Contains the repository implementation classes.

home/repository_impl.dart: Implementation of the repository for the home module.

### domain

#### dependency_injection:

Handles dependency injection setup.

dependency_injection.dart: Configures dependencies for the application.

#### models:

Contains the data models used in the application.

home/film_data_model.dart: Data model for film data in the home module.

#### repository:

Contains the repository interface classes.

home/home_repository.dart: Repository interface for the home module.

### presentation

#### bloc:

Contains the Bloc, Event, and State classes for state management.

home_bloc.dart: Bloc class for the home module.
home_event.dart: Event class for the home module.
home_state.dart: State class for the home module.

#### views:

Contains the UI components of the application.

#### screens:

Contains the screen widgets.
home_page.dart: Home page of the application.

#### widgets:

Contains reusable UI components.
home/home_failure_widget.dart: Failure widget used in the home module.

### utils

#### constants.dart:

Contains constants used throughout the application.



