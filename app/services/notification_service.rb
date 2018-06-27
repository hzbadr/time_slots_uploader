require 'net/http'

class NotificationService < BaseService

  SERVICE_URL = "http://locahost:3001/notify" 

  def initialize(attachment)
    @attachment = attachment
  end

  def call
    uri = URI('http://www.example.com/search.cgi')
    Net::HTTP.post_form(uri, {attachment_path: attachment_path})
  rescue
    #TODO HZ: Notify Admin?
  end

end