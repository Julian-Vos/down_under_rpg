class Announcement < ApplicationRecord
  CATEGORIES = %w(PostCreated QuestCreated QuestCompleted PhotoCreated LevelUp Extra).freeze

  validates :category, inclusion: { in: CATEGORIES }

  belongs_to :subject, polymorphic: true, optional: true

  def subject
    case category
    when 'PostCreated'
      Post.find(subject_id)
    when 'QuestCreated', 'QuestCompleted'
      Quest.find(subject_id)
    when 'PhotoCreated'
      Photo.find(subject_id)
    end
  end
end
