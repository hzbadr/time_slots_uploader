class CreateAttachmentService < BaseService

  def initialize(time_slots, fields)
    @time_slots = time_slots
    @fields = fields
  end

  def call
    @attachment = Attachment.new(time_slots: @time_slots, fields: @fields)

    if @attachment.save
      FileReceivedNotificationJob.perform_later(@attachment.time_slots_url, @attachment.fields_url)
    end
  end
end
