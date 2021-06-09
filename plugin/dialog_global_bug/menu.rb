require 'sketchup'

Sketchup.require File.join(File.dirname(__FILE__), 'dialogs', 'local_dialog')

module DialogGlobalBug
  module Menu
    EXTENSIONS_MENU = 'Extensions'.freeze
    MENU_NAME = 'Dialog global bug demo'.freeze
    MENU_LOCAL_DIALOG = 'Open dialog with local file'.freeze

    def self.add_local_file_dialog(menu)
      local_dialog_menu_item = menu.add_item(MENU_LOCAL_DIALOG) do
        dialog = Dialogs.local_dialog
        dialog.show
      end
      local_dialog_menu_item
    end

    def self.load_menu
      ext_menu = UI.menu(EXTENSIONS_MENU)
      menu = ext_menu.add_submenu(MENU_NAME)
      _menu_item = add_local_file_dialog(menu)
    end
  end
end
