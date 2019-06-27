module RubyXmlNfe
  class AutXml
    attr_reader :xml, :cnpj

    def initialize(xml, params)
      @xml = xml
      @cnpj = params[:CNPJ]
    end

    def build
      xml.autXML do
        xml.CNPJ cnpj
      end
    end
  end
end
