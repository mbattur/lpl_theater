module DateFormatHelper
  def time_only(datetime_object)
    return unless datetime_object
    datetime_object.strftime("%I:%M %p")
  end

  def date_and_time(datetime_object)
    return unless datetime_object
    datetime_object.strftime("%Y-%m-%d %I:%M %p")
  end
end