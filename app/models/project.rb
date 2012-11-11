class Project
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps
  field :name, type: String
  field :details, type: String
  field :banner, type: String
  field :target_date, type: Date
  field :target_amount, type: Float
  field :summary, type: String
  field :status, type: String, default: 'draft' #draft, submitted, published

  has_mongoid_attached_file :poster_photo, :styles => {:thumb => "80x80#", :medium => "220x165#", :large => "400x400#"}   
  belongs_to :user
  validates_presence_of :name, :poster_photo, :target_date, :target_amount, :summary
  validates_numericality_of :target_amount
end
