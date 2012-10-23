class Project
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :details, type: String
  field :banner, type: String
  field :target_date, type: Date
  field :target_amount, type: Float
  field :summary, type: String
  field :published, type: Boolean
  belongs_to :user
end
