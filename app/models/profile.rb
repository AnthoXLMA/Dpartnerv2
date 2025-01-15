class Profile < ApplicationRecord
  belongs_to :user

  validates :profile_picture, presence: false
  has_and_belongs_to_many :dances

  GENDER = ['Lady, Gentleman']
  DANCE_STYLES = ['Salsa, Bachata, Kizomba, Zouk, Zumba', 'Valse',
                  "Tango", 'Rumba', 'Cha-Cha', 'Son Cubano', 'Merengue',
                  'Foxtrot', 'Swing', 'Jive', 'Zouk']
end
