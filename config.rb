require 'twitter_cldr'

class Formatters < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
  end

  helpers do
    def datetime_ago(datetime)
      datetime.localize.ago.to_s
    end
  end
end

::Middleman::Extensions.register(:formatters, Formatters)

###
# Blog settings
###

# Time.zone = "UTC"

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  # blog.prefix = "blog"

  # blog.permalink = "{year}/{month}/{day}/{title}.html"
  # Matcher for blog source files
  blog.sources = "posts/{year}-{month}-{day}-{title}.html"
  blog.permalink = "{category}/{title}.html"
  # blog.taglink = "tags/{tag}.html"
  # blog.layout = "layout"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  # blog.default_extension = ".markdown"

  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"

  # Enable pagination
  blog.paginate = true
  blog.per_page = 10
  blog.page_link = "page/{num}"
end

page "/feed.xml", layout: false

activate :deploy do |deploy|
  deploy.method = :git
  # Optional Settings
  # deploy.remote   = "custom-remote" # remote name or git url, default: origin
  # deploy.branch   = "custom-branch" # default: gh-pages
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  deploy.build_before = true # default: false
end

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
# page "/path/to/file.html", layout: false
#
# With alternative layout
# page "/path/to/file.html", layout: :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

activate :formatters

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'

set :layouts_dir, 'layouts'
set :partials_dir, 'shared'

set :markdown_engine, :kramdown
set :markdown, smartypants: true

# Pretty URLs
activate :directory_indexes

activate :syntax, :line_numbers => true

# Thumbnail generator
require 'middleman-thumbnailer'
  activate :thumbnailer, 
    :dimensions => {
      :lg_1c => '288x',
      :md_1c => '240x',
      :sm_1c => '794x',
      :xs_1c => '480x',
      :lg_1c_2x => '576x',
      :md_1c_2x => '480x',
      :sm_1c_2x => '1588x',
      :xs_1c_2x => '960x',
      :lg_2c => '576x',
      :md_2c => '480x',
      :sm_2c => '1588x',
      :xs_2c => '960x',
      :lg_2c_2x => '1152x',
      :md_2c_2x => '960x',
      :lg_3c => '864x',
      :md_3c => '720x',
      :lg_3c_2x => '1728x',
      :md_3c_2x => '1440x',
      :lg_4c => '1152x',
      :md_4c => '960x',
      :lg_4c_2x => '2304x',
      :md_4c_2x => '1920x'
    },
    :include_data_thumbnails => true,
    :namespace_directory => %w(photons)

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript
  
  # Minify HTML on build
  activate :minify_html

  # Enable cache buster
  activate :asset_hash, :exts => %w(ico manifest jpg png gif js css)

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
  
  # Gzip for faster site
  activate :gzip

  # activate :imageoptim
end
