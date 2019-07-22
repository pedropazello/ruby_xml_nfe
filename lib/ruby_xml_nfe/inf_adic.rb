module RubyXmlNfe
  class InfAdic
    attr_reader :xml, :infAdFisco, :infCpl

    def initialize(xml, params)
      @xml = xml
      @infAdFisco = params[:infAdFisco]
      @infCpl = params[:infCpl]
    end

    def build
      xml.infAdic do
        xml.infAdFisco infAdFisco
        xml.infCpl infCpl
      end
    end
  end
end
