class Attachment < ApplicationRecord

  has_one_attached :time_slots
  has_one_attached :fields

  include Rails.application.routes.url_helpers

  def time_slots_url
    url_for(self.time_slots)
  end

  def fields_url
    url_for(self.fields)
  end
end
