require 'active_resource'

module RingioAPI
  
  class Base < ActiveResource::Base
    
    self.format = :json
    
  end
  
end