# Umschlag: SDK for Ruby

[![Build Status](https://cloud.drone.io/api/badges/umschlag/umschlag-ruby/status.svg)](https://cloud.drone.io/umschlag/umschlag-ruby)
[![Join the Matrix chat at https://matrix.to/#/#umschlag:matrix.org](https://img.shields.io/badge/matrix-%23umschlag%3Amatrix.org-7bc9a4.svg)](https://matrix.to/#/#umschlag:matrix.org)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/892ff7a444a24efeb15864823512b970)](https://www.codacy.com/app/umschlag/umschlag-ruby?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=umschlag/umschlag-ruby&amp;utm_campaign=Badge_Grade)
[![Gem Version](https://badge.fury.io/rb/umschlag.svg)](https://badge.fury.io/rb/umschlag)

**This project is under heavy development, it's not in a working state yet!**

Where does this name come from or what does it mean? It's quite simple, it's one german word for transshipment, I thought it's a good match as it is related to containers and a harbor.

This repository will provide a client SDK for Ruby. This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0-alpha1
- Package version: 1.0.0-alpha1
- Build package: org.openapitools.codegen.languages.RubyClientCodegen


## Installation


### Build a gem

To build a gem for this SDK and install the gem just execute the following commands if you got a working Ruby setup prepared:

```bash
gem build umschlag.gemspec
gem install ./umschlag-1.0.0-alpha1.gem
```


## Install from Rubygems

If you want to install a published version you just need to add the gem to your Gemfile:

```ruby
gem 'umschlag', '~> 1.0.0-alpha1'
```


### Install from Git

If you want to install a unpublished version through this git repository just add the following to your Gemfile:

```ruby
gem 'umschlag', git: 'https://github.com/umschlag/umschlag-ruby.git'
```


## Getting Started

Please follow the [installation](#installation) instructions and then run the following code:

```ruby
require 'umschlag'

api = Umschlag::AuthApi.new
auth_login = Umschlag::AuthLogin.new # AuthLogin | The credentials to authenticate

begin
  # Authenticate an user by credentials
  result =  api.login_user(auth_login)
  p result
rescue Umschlag::ApiError => e
  puts "Exception when calling AuthApi->login_user: #{e}"
end

```


## Documentation for endpoints

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Umschlag::AuthApi* | [**login_user**](docs/AuthApi.md#login_user) | **POST** /auth/login | Authenticate an user by credentials
*Umschlag::AuthApi* | [**refresh_auth**](docs/AuthApi.md#refresh_auth) | **GET** /auth/refresh | Refresh an auth token before it expires
*Umschlag::AuthApi* | [**verify_auth**](docs/AuthApi.md#verify_auth) | **GET** /auth/verify/{token} | Verify validity for an authentication token
*Umschlag::ProfileApi* | [**show_profile**](docs/ProfileApi.md#show_profile) | **GET** /profile/self | Retrieve an unlimited auth token
*Umschlag::ProfileApi* | [**token_profile**](docs/ProfileApi.md#token_profile) | **GET** /profile/token | Retrieve an unlimited auth token
*Umschlag::ProfileApi* | [**update_profile**](docs/ProfileApi.md#update_profile) | **PUT** /profile/self | Retrieve an unlimited auth token
*Umschlag::TeamApi* | [**append_team_to_user**](docs/TeamApi.md#append_team_to_user) | **POST** /teams/{team_id}/users | Assign a user to team
*Umschlag::TeamApi* | [**create_team**](docs/TeamApi.md#create_team) | **POST** /teams | Create a new team
*Umschlag::TeamApi* | [**delete_team**](docs/TeamApi.md#delete_team) | **DELETE** /teams/{team_id} | Delete a specific team
*Umschlag::TeamApi* | [**delete_team_from_user**](docs/TeamApi.md#delete_team_from_user) | **DELETE** /teams/{team_id}/users | Remove a user from team
*Umschlag::TeamApi* | [**list_team_users**](docs/TeamApi.md#list_team_users) | **GET** /teams/{team_id}/users | Fetch all users assigned to team
*Umschlag::TeamApi* | [**list_teams**](docs/TeamApi.md#list_teams) | **GET** /teams | Fetch all available teams
*Umschlag::TeamApi* | [**permit_team_user**](docs/TeamApi.md#permit_team_user) | **PUT** /teams/{team_id}/users | Update user perms for team
*Umschlag::TeamApi* | [**show_team**](docs/TeamApi.md#show_team) | **GET** /teams/{team_id} | Fetch a specific team
*Umschlag::TeamApi* | [**update_team**](docs/TeamApi.md#update_team) | **PUT** /teams/{team_id} | Update a specific team
*Umschlag::UserApi* | [**append_user_to_team**](docs/UserApi.md#append_user_to_team) | **POST** /users/{user_id}/teams | Assign a team to user
*Umschlag::UserApi* | [**create_user**](docs/UserApi.md#create_user) | **POST** /users | Create a new user
*Umschlag::UserApi* | [**delete_user**](docs/UserApi.md#delete_user) | **DELETE** /users/{user_id} | Delete a specific user
*Umschlag::UserApi* | [**delete_user_from_team**](docs/UserApi.md#delete_user_from_team) | **DELETE** /users/{user_id}/teams | Remove a team from user
*Umschlag::UserApi* | [**list_user_teams**](docs/UserApi.md#list_user_teams) | **GET** /users/{user_id}/teams | Fetch all teams assigned to user
*Umschlag::UserApi* | [**list_users**](docs/UserApi.md#list_users) | **GET** /users | Fetch all available users
*Umschlag::UserApi* | [**permit_user_team**](docs/UserApi.md#permit_user_team) | **PUT** /users/{user_id}/teams | Update team perms for user
*Umschlag::UserApi* | [**show_user**](docs/UserApi.md#show_user) | **GET** /users/{user_id} | Fetch a specific user
*Umschlag::UserApi* | [**update_user**](docs/UserApi.md#update_user) | **PUT** /users/{user_id} | Update a specific user


## Documentation for models

 - [Umschlag::AuthLogin](docs/AuthLogin.md)
 - [Umschlag::AuthToken](docs/AuthToken.md)
 - [Umschlag::AuthVerify](docs/AuthVerify.md)
 - [Umschlag::GeneralError](docs/GeneralError.md)
 - [Umschlag::Profile](docs/Profile.md)
 - [Umschlag::Team](docs/Team.md)
 - [Umschlag::TeamUser](docs/TeamUser.md)
 - [Umschlag::TeamUserParams](docs/TeamUserParams.md)
 - [Umschlag::User](docs/User.md)
 - [Umschlag::UserTeamParams](docs/UserTeamParams.md)
 - [Umschlag::ValidationError](docs/ValidationError.md)
 - [Umschlag::ValidationErrorErrors](docs/ValidationErrorErrors.md)


## Documentation for authorization


### BasicAuth

- **Type**: HTTP basic authentication

### HeaderAuth


- **Type**: API key
- **API key parameter name**: X-API-Key
- **Location**: HTTP header


## Security

If you find a security issue please contact umschlag@webhippie.de first.


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

Apache-2.0


## Copyright

```
Copyright (c) 2018 Thomas Boerger <thomas@webhippie.de>
```
