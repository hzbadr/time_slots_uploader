class FileReceivedNotificationJob < ApplicationJob
  queue_as :default

  def perform(time_slots_url, fields_url)
    NotificationService.new(time_slots_url, fields_url).call
  end
end
