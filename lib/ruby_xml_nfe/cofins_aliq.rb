module RubyXmlNfe
  class CofinsAliq
    attr_reader :xml, :cst, :vBC, :pCOFINS, :vCOFINS

    def initialize(xml, params)
      @xml = xml
      @cst = params[:CST]
      @vBC = params[:vBC]
      @pCOFINS = params[:pCOFINS]
      @vCOFINS = params[:vCOFINS]
    end

    def build
      xml.COFINSAliq do
        xml.CST cst
        xml.vBC vBC
        xml.pCOFINS pCOFINS
        xml.vCOFINS vCOFINS
      end
    end
  end
end
