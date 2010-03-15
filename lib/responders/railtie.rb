module Responders
  class Railtie < Rails::Railtie
    railtie_name 'responders'
    
    initializer 'responders.extend_actioncontroller' do |app|
      ActionController::Base.extend Responders
    end
  end
end