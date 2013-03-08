module ApplicationHelper
  def markdown
    Redcarpet::Markdown.new(Redcarpet::Render::HTML,:autolink => true, :space_after_headers => true)
  end

  def show_date(date)
    new_date = Date.strptime(date) unless date.nil?
    new_date.strftime("%m/%d/%Y") unless date.nil?
  end

end
