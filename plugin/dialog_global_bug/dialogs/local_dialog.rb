require 'sketchup'

module DialogGlobalBug
  module Dialogs
    def self.local_dialog
      dialog = UI::HtmlDialog.new

      dialog.add_action_callback('myCustomCallback') do |_|
        puts 'my custom callback called'
      end

      dialog.add_action_callback('requestLocalFilePath') do |_|
        path = File.join(__dir__, 'html', 'local_data.json')
        puts "Path: #{path}"
        dialog.execute_script("getFileWithPath('#{path}')")
      end

      dialog.add_action_callback('load_link') do |_, url|
        puts "HtmlDialog#set_url('#{url}')"
        dialog.set_url(url)
      end

      dialog.add_action_callback('close') do |_|
        dialog.close
      end

      dialog.set_file(File.join(__dir__, 'html', 'index.html'))

      dialog
    end
  end
end
