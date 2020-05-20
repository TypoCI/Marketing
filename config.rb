# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :sprockets
sprockets.append_path 'node_modules'

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

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

helpers do
  def root_url
    ENV.fetch('URL') { 'https://typoci.com' }
  end

  def current_url
    if current_page.url == '/'
      root_url + '/'
    else
      root_url + current_page.url[0..-1].sub('.html', '')
    end
  end
end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings
Dir[File.dirname(__FILE__) + '/lib/tags/*.rb'].each { |file| require file }
require 'lib/tilt/redcarpet_liquid_template'
require 'lib/markdown_helper/bootstrap_renderer'

activate :syntax
set :markdown_engine, :redcarpet_liquid
set :markdown, fenced_code_blocks: true, smartypants: true, tables: true, footnotes: true, renderer: MarkdownHelper::BootstrapRenderer

configure :build do
  activate :asset_hash, ignore: %r{^(images|uploads)/.*}
end
