require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
 test 'invalid sign up information' do
   get signup_path
   assert_no_difference 'User.count' do
     post users_path, params: { user: {name: "",
                                        email: "user@invalid",
                                        password: "foo",
                                        password_confirmation: "bar"}}
     end                              
  
  test "valid signup information" do
   get signup_path
   assert_difference 'User.count', 1 do
    post users_path, params: {user: {name: "Example User", 
    email:"user@example.com",
    password:             "password",
    password_confirmation: "password"}}
    
 end
end
 follow_redirect!
 assert_template 'users/show'
 assert is_logged_in?
 #assert_select 'div#<CSS id for error explanation>'
 #assert_select 'div.<CSS class for field with error>'
 end
end
