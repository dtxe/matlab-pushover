function [  ] = notify( message )
%run_notify
%
% Sends an alert using pushover to the specified device in pushover_parameters.mat

%% Parameters
[API_TOKEN, USER_TOKEN] = pushover_parameters();

%% Script

cname = gethostname;

title = ['Message from ', cname];
fprintf('Message sent: %s\n', message);

post_params = {'token', API_TOKEN,...    % API token
               'user', USER_TOKEN,...    % user's ID token
               'message', message,...    % message to push
               'title', title};          % message title in notification bar
           
urlread('https://api.pushover.net/1/messages.json', 'Post', post_params);


end

