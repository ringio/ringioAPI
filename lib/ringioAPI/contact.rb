module RingioAPI
  
  class Contact < Base

    class Datum < Base
    end

    def save

      # change the array of Datum objects to an array of hashes just to make it easy to parse as JSON
      new_data = []
      begin
        old_data = self.data
        self.data.each do |d|
          if d
            new_data << {:type => d.type, :value => d.value, :is_primary => d.is_primary, :rel => d.rel}
          end
        end
        self.data = new_data
      rescue NoMethodError
      end

      result = super

      # restore the array of Datums
      begin
        self.data = old_data
      rescue NoMethodError
      end


      # move the fields returned after an update response to their proper place in the root
      begin
        self.id = self.contact.id
      rescue NoMethodError
      end
      begin
        self.last_updated = self.contact.last_updated
      rescue NoMethodError
      end
      begin
        self.date_created = self.contact.last_updated
      rescue NoMethodError
      end

      # clean the unused nested resource
      begin
        self.contact = nil
      rescue NoMethodError
      end

      result
    end
  
  end

end