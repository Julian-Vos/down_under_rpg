class QuestsController < ApplicationController
  def index
    @quests = Quest.order(description: :asc)
  end

  def create
    quest = Quest.new(category: params[:category], description: params[:description], experience: params[:experience])

    if quest.save
      Announcement.create!(category: 'QuestCreated', subject_id: quest.id)
    end

    redirect_to quests_path
  end

  def complete
    quest = Quest.find(params[:id])

    quest.update!(completed: true)

    Announcement.create!(category: 'QuestCompleted', subject_id: quest.id)

    @current_user.gain_experience(quest.experience)

    redirect_to quests_path
  end

  def seal; end
end
