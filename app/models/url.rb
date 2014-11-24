class Url < ActiveRecord::Base
  # validates_format_of :url, :with => \Ahttp:\/\/|\Ahttps:\/\/, :on => :create
  # validate :valid_url, :on => :create
  validates_format_of :url, :with => URI::regexp(%w(http https))
  validates :url, uniqueness: true
  after_create :generate_shortened_url

  def generate_shortened_url
    self.shortened_url = (self.id+10).to_s(36)
    self.save
  end

  def display_shortened_url
    ENV['BASE_URL'] + self.shortened_url
  end

  # private

  # def valid_url
  #   uri = URI.parse(url)
  #   uri.kind_of?(URI::ABS_URI)
  # rescue URI::InvalidURIError
  #   false
  # end

end
