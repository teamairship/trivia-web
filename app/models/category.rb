class Category < ApplicationRecord
  
  enum status: {
    inactive: -1,
    active: 0
  }
end