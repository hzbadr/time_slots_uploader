class AttachmentsController < ApplicationController
  def create
    CreateAttachmentService.call(params[:time_slots], params[:fields])
  end
end
