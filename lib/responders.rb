require 'responders/railtie'

module Responders
  def responder *responders
    if responders.any?
      responder_class = Class.new(super())
      responders.each do |responder|
        responder = responder.is_a?(Module) ? responder : "#{responder.to_s.classify}Responder".constantize
        responder_class.send(:include, responder)
      end
      self.responder = responder_class
    else
      super()
    end
  end
end