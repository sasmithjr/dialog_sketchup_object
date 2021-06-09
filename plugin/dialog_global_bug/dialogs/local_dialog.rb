require 'sketchup'

module DialogGlobalBug
  module Dialogs
    def self.local_dialog
      dialog = UI::HtmlDialog.new

      dialog.add_action_callback('myCustomCallback') do |_|
        puts 'my custom callback called'
      end

      dialog.add_action_callback('close') do |_|
        dialog.close
      end

      dialog.set_file(File.join(__dir__, 'html', 'index.html'))

      dialog
    end
  end
end
