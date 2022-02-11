class PersonSerializer < ActiveModel::Serializer
  attributes :id, :first, :last, :records

  def first
    object.first_name
  end

  def last
    object.last_name
  end

  def records
    object.record_count
  end

  belongs_to :organisation
end
