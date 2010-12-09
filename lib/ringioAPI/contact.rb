module RingioAPI
  
  class Contact < Base

    # override methods as a TEMPORARY solution of the JSON parsing bugs of Rails
    def self.find(contact_id)
      super(contact_id).contact
    end

    def save
      new_data = []
      begin
        self.data.each do |d|
          new_data << {:type => d.type, :value => d.value, :is_primary => d.is_primary, :rel => d.rel}
        end
      rescue NoMethodError
      end
      result = super

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

      begin
        self.contact = nil
      rescue NoMethodError
      end

      result
    end
  
  end

end