class Link < ApplicationRecord
  validates :out_url, :presence => true, :format => URI::regexp(%w(http https))
end
