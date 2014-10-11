module RubyTCC
  class ShortLocationInfo
  	include XML::Mapping

  	numeric_node :location_id, "LocationID"
  	boolean_node :can_control, "CanControl"
  	text_node :name, "Name"
  	text_node :type, "Type"
  	text_node :country_code, "CountryCode"
    text_node :street_address, "StreetAddress"
    text_node :city, "City"
    text_node :state, "State"
  	numeric_node :zip_code, "ZipCode"
  	text_node :time_zone, "TimeZone"
    boolean_node :use_day_light_saving_time, "UseDayLightSavingTime"
    numeric_node :contractor_id, "ContractorId"
    text_node :notifications_emails, "NotificationEmails"
  end
end