module RubyXmlNfe
  class Icms00
    attr_reader :xml, :orig, :cst, :modBC, :vBC, :pICMS, :vICMS, :pFCP, :vFCP

    def initialize(xml, params)
      @xml = xml
      @orig = params[:orig]
      @cst = params[:CST]
      @modBC = params[:modBC]
      @vBC = params[:vBC]
      @pICMS = params[:pICMS]
      @vICMS = params[:vICMS]
      @pFCP = params[:pFCP]
      @vFCP = params[:vFCP]
    end

    def build
      xml.ICMS00 do
        xml.orig orig
        xml.CST cst
        xml.modBC modBC
        xml.vBC vBC
        xml.pICMS pICMS
        xml.vICMS vICMS
        xml.pFCP pFCP if pFCP
        xml.vFCP vFCP if vFCP
      end
    end
  end
end
