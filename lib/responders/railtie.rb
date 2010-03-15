module Responders
  class Railtie < Rails::Railtie
    initializer "action_controller.extend_responders" do |app|
      ActionController::Base.extend Responders
    end
  end
end