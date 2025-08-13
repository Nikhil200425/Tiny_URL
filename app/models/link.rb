class Link < ApplicationRecord
    validates :title, presence: true, length: { minimum: 2 }, uniqueness: true
    validates :hyperlink, presence: true, format: URI.regexp(%w[http https]), uniqueness: true
    before_create :generate_tiny_code
    private
    def generate_tiny_code
        special_char = [ "@", "#", "$", "%", "^", "&", "*" ]
        self.tiny_code = SecureRandom.alphanumeric(3) + special_char.sample + SecureRandom.alphanumeric(4)
    end
end
