require 'rubytcc/user_info'

module RubyTCC
  class AuthenticateLoginResult
    include XML::Mapping

    text_node :result, "Result" 
    object_node :user_info, "UserInfo", :class => RubyTCC::UserInfo
    text_node :session_id, "SessionID"
  end
end