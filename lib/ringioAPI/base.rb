require 'active_resource'

module RingioAPI
  
  class Base < ActiveResource::Base
    
    self.format = :json
    RingioAPI::Base.site = 'http://dev.ringio.com'
    
  end
  
end