require 'java-properties/encoding/special_chars'
require 'java-properties/encoding/separators'
require 'java-properties/encoding/unicode'

module JavaProperties
  # Module to encode and decode
  module Encoding

    def self.encode!(text)
      SpecialChars.encode!(text)
      Separators.encode!(text)
      Unicode.encode!(text)
      text
    end
    
    def self.decode!(text)
      Unicode.decode!(text)
      Separators.decode!(text)
      SpecialChars.decode!(text)
      text
    end

  end
end