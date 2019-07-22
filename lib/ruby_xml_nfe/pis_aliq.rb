module RubyXmlNfe
  class PisAliq
    attr_reader :xml, :cst, :vBC, :pPIS, :vPIS

    def initialize(xml, params)
      @xml = xml
      @cst = params[:CST]
      @vBC = params[:vBC]
      @pPIS = params[:pPIS]
      @vPIS = params[:vPIS]
    end

    def build
      xml.PISAliq do
        xml.CST cst
        xml.vBC vBC
        xml.pPIS pPIS
        xml.vPIS vPIS
      end
    end
  end
end
