require 'sketchup'
Sketchup.require File.join(File.dirname(__FILE__), 'menu')

module DialogGlobalBug
  GEMS_TO_INSTALL = [
  ].freeze

  def self.install_gems
    GEMS_TO_INSTALL.each do |gem|
      Gem.install gem
    end
  end

  def self.launch
    install_gems
    DialogGlobalBug::Menu.load_menu
    file_loaded(__FILE__)
  end

  launch unless file_loaded?(__FILE__)
end
