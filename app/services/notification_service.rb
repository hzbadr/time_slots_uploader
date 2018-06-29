require 'net/http'

class NotificationService < BaseService

  SERVICE_URL = "http://localhost:3001/notify" 

  def initialize(time_slots_url, fields_url)
    @time_slots_url = time_slots_url
    @fields_url = fields_url
  end

  def call
    uri = URI(SERVICE_URL)
    Net::HTTP.post_form(uri, { time_slots_url: @time_slots_url, fields_url: @fields_url })
  rescue
    #TODO HZ: Notify Admin?
  end

end