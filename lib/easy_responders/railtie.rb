module EasyResponders
  class Railtie < Rails::Railtie    
    initializer 'easy_responders.extend_actioncontroller' do |app|
      ActionController::Base.extend EasyResponders
    end
  end
end