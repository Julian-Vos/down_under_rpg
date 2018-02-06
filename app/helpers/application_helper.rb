module ApplicationHelper
  def paginate(relation, page)
    relation.limit(10).offset(page * 10)
  end
end
