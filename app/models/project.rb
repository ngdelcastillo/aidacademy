class Project
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  field :name, type: String
  field :details, type: String
  field :banner, type: String
  field :target_date, type: Date
  field :target_amount, type: Float
  field :summary, type: String
  field :published, type: Boolean

  has_mongoid_attached_file :poster_photo, :styles => {:thumb => "80x80#", :medium => "220x165#", :large => "400x400#"}   
  belongs_to :user
end
