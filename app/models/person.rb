class Person < ApplicationRecord
  belongs_to :organisation

  def self.search(search)
    if search
      @people = Person.joins(:organisation)
        .where('first_name like ?', "%'#{search}'%")
        .or(Person.where('last_name like ?', "%'#{search}'%"))
        .or(Person.where("organisations.title like ?", "%#{search}%"))
    else
      @people = Person.includes(:organisation).all
    end
  end
end
