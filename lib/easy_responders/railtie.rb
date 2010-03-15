module EasyResponders
  class Railtie < Rails::Railtie
    railtie_name 'easy_responders'
    
    initializer 'easy_responders.extend_actioncontroller' do |app|
      ActionController::Base.extend EasyResponders
    end
  end
end