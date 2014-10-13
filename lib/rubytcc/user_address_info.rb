module RubyTCC
  class UserAddressInfo
    include XML::Mapping

    text_node :user_name, "UserName"
    text_node :first_name, "FirstName"
    text_node :last_name, "LastName"
    text_node :country_code, "CountryCode"
    text_node :state_name, "StateName"
    text_node :street_address, "StreetAddress"
    text_node :city, "City"
    text_node :zip_code, "ZipCode"
    text_node :time_zone, "TimeZone"
    boolean_node :use_day_light_saving_time, "UseDayLightSavingTime"
  end
end