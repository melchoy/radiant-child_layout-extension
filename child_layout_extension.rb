# Uncomment this if you reference any of your controllers in activate
# require_dependency "application_controller"
require "radiant-child_layout-extension"

class ChildLayoutExtension < Radiant::Extension
  version     RadiantChildLayoutExtension::VERSION
  description RadiantChildLayoutExtension::DESCRIPTION
  url         RadiantChildLayoutExtension::URL

  # See your config/routes.rb file in this extension to define custom routes

  extension_config do |config|
    # config is the Radiant.configuration object
  end

  def activate
    # tab 'Content' do
    #   add_item "Child Layout", "/admin/child_layout", :after => "Pages"
    # end
  end
end
