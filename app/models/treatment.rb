class Treatment < ApplicationRecord
    belongs_to :user
    belongs_to :illness
end
