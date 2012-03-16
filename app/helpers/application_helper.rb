module ApplicationHelper
  def javascript_include_tag_for_jquery
    if Rails.env.production?
      javascript_include_tag "http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
    else
      javascript_include_tag "vendor/jquery-1.7.1.min.js"
    end
  end
end
