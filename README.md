# Script Execution Notifier with Pushover
  
This script is designed to work with the Pushover mobile application.
If you don't have it, you can get it here: https://pushover.net/
  
Although it's designed for Pushover, it would be simple to modify it
to work with other APIs that take HTTP POST data (for SMS instead, for example).

## Setup
After signing up for Pushover:
1. create a new application on Pushover
1. copy `pushover_parameters.template.m` into `pushover_parameters.m`
1. save the application's API Token into the `api_key` variable in the pushover_parameters.m file
1. save your user's User Token into the `user_key` variable
  

