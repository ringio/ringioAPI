module RingioAPI
  
  class Account < Base
    # override methods as a TEMPORARY solution of the JSON parsing bugs of Rails

    # move the nested resource to the root
    def self.find(account_id)
      super(account_id).account
    end
  end
  
end