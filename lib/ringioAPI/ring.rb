module RingioAPI
  
  class Ring < Base

    # override methods as a temporary solution of the JSON parsing bugs of Rails
    def self.find(ring_id)
      super(ring_id).ring
    end

    def save

      result = super

      # move the fields returned after an update response to their proper place in the root
      begin
        self.id = self.ring.id
      rescue NoMethodError
      end

      # clean the unused nested resource
      begin
        self.ring = nil
      rescue NoMethodError
      end

      result
    end


  end

end