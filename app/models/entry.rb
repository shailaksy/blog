class Entry < ApplicationRecord
    validates :title, :author, :body, presence: true
end
