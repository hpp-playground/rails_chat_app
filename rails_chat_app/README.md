# rails6-chat-app

## how to build

```
bash init.sh
```

## endpoints

|named root|HTTP METHOD|path|
|-|-|-|
|new_user_session_path|GET|/users/sign_in(.:format)|
|new_user_session_path|GET|/users/sign_in(.:format|
|user_session_path|POST|/users/sign_in(.:format)|
|destroy_user_session_path|DELETE|/users/sign_out(.:format)|
|new_user_password_path|GET|/users/password/new(.:format)|
|edit_user_password_path|GET|/users/password/edit(.:format)|
|user_password_path|PATCH|/users/password(.:format)|
||PUT|/users/password(.:format)|
||POST|/users/password(.:format)|
|cancel_user_registration_path|GET|/users/cancel(.:format)|
|new_user_registration_path|GET|/users/sign_up(.:format)|
|edit_user_registration_path|GET|/users/edit(.:format)|
|user_registration_path|PATCH|/users(.:format)|
||PUT|/users(.:format)|
||DELETE|/users(.:format)|
||POST|/users(.:format)|
|root_path|GET|/|
|thread_path|GET|/threads/:id(.:format)|
