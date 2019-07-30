class User < ApplicationRecord
  has_secure_password
  # # # Validations -- see the Rails Guide
  validates :email_address, :presence => true, :uniqueness => true
  has_many :posts, dependent: :destroy
  has_many :active_relationships, class_name: "Relationship",
                                  foreign_key: "follower_id",
                                  dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship",
                                  foreign_key: "followed_id",
                                  dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  # Returns a user's status feed. (See 14.3.2 & 14.3.3)
  def feed
    # Post.where("user_id IN (?) OR user_id = ?", following_ids, id)

    following_ids = "SELECT followed_id FROM relationships
                 WHERE  follower_id = :user_id"
    Post.where("user_id IN (#{following_ids})
                 OR user_id = :user_id", user_id: id)
  end

  # Follows a user.
    def follow(other_user)
      following << other_user
    end

    # Unfollows a user.
    def unfollow(other_user)
      following.delete(other_user)
    end

    # Returns true if the current user is following the other user.
    def following?(other_user)
      following.include?(other_user)
    end

end
