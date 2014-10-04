require 'rubytcc/ui'
require 'rubytcc/fan'
require 'rubytcc/humidification'

module RubyTCC
  class ThermostatInfo
    include XML::Mapping

    numeric_node :thermostat_id, "ThermostatID"
    text_node :mac_id, "MacID"
    numeric_node :domain_id, "DomainID"
    numeric_node :instance, "Instance"
    text_node :device_name, "DeviceName"
    text_node :user_defined_device_name, "UserDefinedDeviceName"
    boolean_node :upgrading, "Upgrading"
    object_node :ui, "UI", :class => RubyTCC::UI
    object_node :fan, "Fan", :class => RubyTCC::Fan
    object_node :humidification, "Humidification", :class => RubyTCC::Humidification
    boolean_node :can_control_schedule, "CanControlSchedule"
    boolean_node :will_support_schedule, "WillSupportSchedule"
  end
end