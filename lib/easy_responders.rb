require 'easy_responders/railtie'

module EasyResponders
  def responders *responders
    if responders.any?
      responder_class = Class.new(responder)
      responders.each do |responder|
        responder = responder.is_a?(Module) ? responder : "#{responder.to_s.classify}Responder".constantize
        responder_class.send(:include, responder)
      end
      self.responder = responder_class
    end
  end
end