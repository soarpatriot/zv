# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions
#
activate :sprockets

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :development do
  activate :livereload
end
# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end

set :html_dir, 'views'
set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'
 
# (1..8).each do |i|
#  proxy "/views/detail#{i}.html", "/views/detail.html"
# end
# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  #activate :minify_css

  # Minify Javascript on build
  #activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash
  #  set :index_directory, "views"
  set :index_file, "index.html"
  # Use relative URLs
  activate :relative_assets
  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

