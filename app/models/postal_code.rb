class PostalCode < ActiveRecord::Base
  def self.search(code)
    find_by_code(code)
  end
end
