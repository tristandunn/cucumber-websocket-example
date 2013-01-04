module ApplicationHelper
  def javascript_include_tag_for_jquery
    if Rails.env.production?
      javascript_include_tag "http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"
    else
      javascript_include_tag "vendor/jquery-1.8.3.min.js"
    end
  end
end
