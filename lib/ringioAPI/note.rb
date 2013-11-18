module RingioAPI
  
  class Note < Base

    def save

      result = super

      # move the fields returned after an update response to their proper place in the root
      begin
        self.id = self.note.id
      rescue NoMethodError
      end
      begin
        self.contact_id = self.note.contact_id
      rescue NoMethodError
      end
      begin
        self.author_id = self.note.author_id
      rescue NoMethodError
      end
      begin
        self.body = self.note.body
      rescue NoMethodError
      end
      begin
        self.last_updated = self.note.last_updated
      rescue NoMethodError
      end
      begin
        self.date_created = self.note.last_updated
      rescue NoMethodError
      end

      # clean the unused nested resource
      begin
        self.note = nil
      rescue NoMethodError
      end

      result
    end


  end

end
