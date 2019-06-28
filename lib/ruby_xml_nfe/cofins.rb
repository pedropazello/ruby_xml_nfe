module RubyXmlNfe
  class Cofins
    attr_reader :xml

    def initialize(xml, params)
      @xml = xml
    end

    def build
      xml.COFINS do
      end
    end
  end
end
