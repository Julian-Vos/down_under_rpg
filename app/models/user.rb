class User < ApplicationRecord
  validates :username, :location, :temperature, presence: true

  has_secure_password

  def experience_goal
    47.5 * level + 2.5 * level**2
  end

  def gain_experience(points)
    self.experience += points

    while experience >= experience_goal
      self.level += 1

      Announcement.create!(category: 'LevelUp', statement: level)
    end

    save!
  end
end
