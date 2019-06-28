module RubyXmlNfe
  class IpiInt
    attr_reader :xml, :cst

    def initialize(xml, params)
      @xml = xml
      @cst = params[:CST]
    end

    def build
      xml.IPINT do
        xml.CST cst
      end
    end
  end
end
