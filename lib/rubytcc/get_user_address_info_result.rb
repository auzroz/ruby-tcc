require 'rubytcc/user_address_info'

module RubyTCC
  class GetUserAddressInfoResult
    include XML::Mapping

    object_node :user_address_info, "UserAddressInfo", :class => RubyTCC::UserAddressInfo
	end
end