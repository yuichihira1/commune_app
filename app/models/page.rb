class Page < ApplicationRecord
	belongs_to :user, dependent: :destroy
end
