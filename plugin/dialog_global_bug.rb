require 'sketchup'
require 'extensions'

module DialogGlobalBug
  VERSION = '0.0.1'.freeze

  unless file_loaded?(__FILE__)
    ext = SketchupExtension.new 'Dialog Global Bug', 'dialog_global_bug/loader'
    ext.description = 'Plugin to demonstrate a bug in the sketchup global object in the UIDialog'
    ext.version = VERSION
    ext.copyright = 'Smitty 2021'
    ext.creator = 'Smitty'
    Sketchup.register_extension ext, true

    file_loaded(__FILE__)
  end
end
