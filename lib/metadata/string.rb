class String
  def to_d
    # convert 10/31/2012 -> Oct 31, 2012
    date = self.split('/')
    Date.new(date[2].to_i, date[0].to_i, date[1].to_i)
  end
end
