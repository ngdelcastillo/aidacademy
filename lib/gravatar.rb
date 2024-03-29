class Gravatar
  def initialize
  end
  # Returns a Gravatar URL associated with the email parameter.
  #
  # Gravatar Options:
  # - rating: Can be one of G, PG, R or X. Default is X.
  # - size: Size of the image. Default is 80px.
  # - default: URL for fallback image if none is found or image exceeds rating.
  def url(email,gravatar_options={})
    grav_url = 'http://www.gravatar.com/avatar.php?'
    grav_url << "gravatar_id=#{Digest::MD5.new.update(email)}"
    grav_url << "&rating=#{gravatar_options[:rating]}" if gravatar_options[:rating]
    grav_url << "&size=#{gravatar_options[:size]}" if gravatar_options[:size]
    grav_url << "&default=#{gravatar_options[:default]}" if gravatar_options[:default]
    grav_url
  end
end
