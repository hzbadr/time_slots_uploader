class CreateAttachmentService < BaseService

  def initialize(time_slots)
    @time_slots = time_slots
  end

  def call
    @attachment = Attachment.new(time_slots: @time_slots)

    if @attachment.save
      FileReceivedNotificationJob.perform_later(@attachment)
    end
  end
end