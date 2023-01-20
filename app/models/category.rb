# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  status     :integer          default("active"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_categories_on_status  (status)
#
class Category < ApplicationRecord
  
  enum status: {
    inactive: -1,
    active: 0
  }
end
