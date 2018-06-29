class AttachmentsChannel < ApplicationCable::Channel

  def subscribed
    stream_from "attachments_channel"
  end

  def send_file(data)
    CreateAttachmentService.call(data[:time_slots], data[:fields])
  end
end