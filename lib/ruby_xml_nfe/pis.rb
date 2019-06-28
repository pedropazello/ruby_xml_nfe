module RubyXmlNfe
  class Pis
    attr_reader :xml

    def initialize(xml, params)
      @xml = xml
    end

    def build
      xml.PIS do
      end
    end
  end
end
