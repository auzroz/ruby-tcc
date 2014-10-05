require 'rubytcc/scheduled_period_info'

module RubyTCC
  class Schedule
    include XML::Mapping

    array_node :scheduled_periods, "ScheduledPeriods", "ScheduledPeriodInfo", :class => RubyTCC::ScheduledPeriodInfo
    numeric_node :max_number_of_periods_in_day, "MaxNumberOfPeriodsInDay"
    text_node :displayed_units, "DisplayedUnits"
  end
end