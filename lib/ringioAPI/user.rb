module RingioAPI
  
  class User < Base

    # override methods as a temporary solution of the JSON parsing bugs of Rails
    def self.find(user_id)
      super(user_id).user
    end

  end

end