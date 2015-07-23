require "simple_flash/version"
require "simple_flash/controller_helpers"

module SimpleFlash
end

I18n.backend.class.send :include, I18n::Backend::Cascade
ActionController::Base.send :include, SimpleFlash::ControllerHelpers
