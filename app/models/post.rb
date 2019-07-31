class Post < ApplicationRecord
  # validates :user_id, presence: true
  belongs_to :user, :optional => true
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :episode_name, presence: true

end
