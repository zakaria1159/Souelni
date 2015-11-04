class Question < ActiveRecord::Base
    validates :titre, presence: true
    validates :categorie, presence:true
    validates :question, presence:true
end
