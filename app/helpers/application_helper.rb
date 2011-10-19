module ApplicationHelper
  def javascript_include_tag_for_jquery
    if Rails.env.production?
      javascript_include_tag 'http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js'
    else
      javascript_include_tag 'vendor/jquery-1.6.4.min.js'
    end
  end

  def flash_movie_path(source)
    asset_paths.compute_public_path(source, 'flash')
  end
end
