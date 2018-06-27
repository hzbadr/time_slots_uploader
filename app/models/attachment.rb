class Attachment < ApplicationRecord

  has_one_attached :time_slots

  def time_slots_url
    Rails.application.routes.url_helpers.url_for(self.time_slots)
  end
end
