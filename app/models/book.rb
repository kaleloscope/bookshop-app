class Book
  include Mongoid::Document
  include Mongoid::Timestamps
  include BooksConcern

  # associations
  # belongs_to :author
  has_many :authors

  # fields
  field :name, type: String
  field :no_of_pages, type: Integer
  field :summary, type: String

  # validations
  validates :name, presence: true, uniqueness: true
  validates :no_of_pages, presence: true, numericality: { greater_than: 0}

  # callbacks
  # before_save :check_author_count, if: :authors_are_present?


  private
    def check_author_count
      if self.authors.count > 4
        self.errors.add(:base, "Authors count can not be 4")
      end
    end

    def authors_are_present?
      
    end
end
