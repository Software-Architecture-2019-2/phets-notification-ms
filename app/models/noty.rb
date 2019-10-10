class Noty < ApplicationRecord
  validates :user_id, presence: true
  validates :notification_body, presence: true
  validates :notification_type, presence: true

  after_create :init_state

  def init_state
    self.notification_state = 0
  end
end
