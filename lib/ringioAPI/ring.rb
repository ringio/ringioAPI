module RingioAPI
  
  class Ring < Base

    # override method as a temporary solution of the JSON parsing bugs of Rails
    def self.find(ring_id)
      super(ring_id).ring
    end

    def save
      raise "Cannot change Ringio rings"
    end


  end

end