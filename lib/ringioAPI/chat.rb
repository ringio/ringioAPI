module RingioAPI

  class Chat < Base

    def save

      result = super

      # move the fields returned after an update response to their proper place in the root
      begin
        self.id = self.chat.id
      rescue NoMethodError
      end
      begin
        self.contact_id = self.chat.contact_id
      rescue NoMethodError
      end
      begin
        self.author_id = self.chat.author_id
      rescue NoMethodError
      end
      begin
        self.body = self.chat.body
      rescue NoMethodError
      end
      begin
        self.last_updated = self.chat.last_updated
      rescue NoMethodError
      end
      begin
        self.date_created = self.chat.last_updated
      rescue NoMethodError
      end

      # clean the unused nested resource
      begin
        self.chat = nil
      rescue NoMethodError
      end

      result
    end


  end

end
