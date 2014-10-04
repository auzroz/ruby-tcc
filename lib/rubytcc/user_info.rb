module RubyTCC
  class UserInfo
  	include XML::Mapping

  	numeric_node :user_id, "UserID"
  	text_node :user_name, "UserName"
  	text_node :first_name, "FirstName"
  	text_node :last_name, "LastName"
  	text_node :language, "Language"

  end
end