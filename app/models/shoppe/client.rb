module Shoppe
  class Client < ActiveRecord::Base
  
 self.table_name = 'shoppe_client'
  scope :nit, -> nits { where(nit: nits) }
  scope :ordered, -> { order(:id)}
    # Validations
 belongs_to :ordered_clients, :polymorphic => true
 belongs_to :order, :class_name => 'Shoppe::Order', :touch => true

    def description
      "#{nit} (#{company})"
    end


def self.search(search)
 

    where('nit LIKE ?', "%#{search}%")

end
    # The user's first name & last name concatenated
    #

  
    # The user's first name & initial of last name concatenated
    #
    # @return [String]

  
  
    # Attempt to authenticate a user based on email & password. Returns the 
    # user if successful otherwise returns false.
    #
    # @param email_address [String]
    # @param paassword [String]
    # @return [Shoppe::User]
  end
end
