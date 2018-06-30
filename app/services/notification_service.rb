require 'net/http'

class NotificationService < BaseService

  #TODO HZ: Move to configuration
  SERVICE_URL = "http://localhost:3001/notify"

  def initialize(time_slots_url, fields_url)
    @time_slots_url = time_slots_url
    @fields_url = fields_url
  end

  def call
    uri = URI(Rails.application.config.classifier_service_url)
    Net::HTTP.post_form(uri, { time_slots_url: @time_slots_url, fields_url: @fields_url })
  rescue
    #TODO HZ: Notify Admin?
  end

end