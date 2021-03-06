###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  # activate :livereload

  # Autoprefixer
  activate :autoprefixer do |config|
    config.browsers = ['last 2 versions', 'Explorer >= 9']
    config.cascade  = false
    config.inline   = true
    # config.ignore   = ['hacks.css']
  end
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :fonts_dir, 'fonts'

set :audio_dir, 'audio'


# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript
  # set :js_compressor, Uglifier.new(mangle: false)

  # Gzip
  activate :gzip

  # Minify HTML on build
  activate :minify_html do |html|
    html.remove_input_attributes = false
  end

  # Optimization images
  activate :imageoptim

  # Autoprefixer
  activate :autoprefixer do |config|
    config.browsers = ['last 2 versions', 'Explorer >= 9']
    config.cascade  = false
    config.inline   = true
    # config.ignore   = ['hacks.css']
  end

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
