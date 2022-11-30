class Mission < ApplicationRecord
    validates :name, presence: true
    #checks uniqueness of the scientists but limited to the name of Self and not the whole table
    validates :scientist, uniqueness: {scope: :name}
    validates :planet, presence: true
    
    belongs_to :scientist
    belongs_to :planet
end
