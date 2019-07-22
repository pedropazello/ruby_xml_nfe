module RubyXmlNfe
  class Vol
    attr_reader :xml, :pesoL, :pesoB
    def initialize(xml, params)
      @xml = xml
      @pesoL = params[:pesoL]
      @pesoB = params[:pesoB]
    end

    def build
      xml.vol do
        xml.pesoL pesoL
        xml.pesoB pesoB
      end
    end
  end
end
