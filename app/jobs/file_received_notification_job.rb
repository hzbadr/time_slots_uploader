class FileReceivedNotificationJob < ApplicationJob
  queue_as :default
  SUBSCRIBERS = [NotificationService]
  def perform(attachment)
    SUBSCRIBERS.each do |subscriber|
      subscriber.new(attachment.time_slots_url).call
    end
  end
end
