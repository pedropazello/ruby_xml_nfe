module RubyXmlNfe
  class Prod
    attr_reader :xml, :cProd, :cEAN, :xProd, :ncm, :cest, :cfop, :uCom, :qCom, :vUnCom,
      :vProd, :cEANTrib, :uTrib, :qTrib, :vUnTrib, :indTot

    def initialize(xml, params)
      @xml = xml

      @cProd = params[:cProd]
      @cEAN = params[:cEAN]
      @xProd = params[:xProd]
      @ncm = params[:NCM]
      @cest = params[:CEST]
      @cfop = params[:CFOP]
      @uCom = params[:uCom]
      @qCom = params[:qCom]
      @vUnCom = params[:vUnCom]
      @vProd = params[:vProd]
      @cEANTrib = params[:cEANTrib]
      @uTrib = params[:uTrib]
      @qTrib = params[:qTrib]
      @vUnTrib = params[:vUnTrib]
      @indTot = params[:indTot]
    end

    def build
      xml.prod do
        xml.cProd cProd
        xml.cEAN cEAN
        xml.xProd xProd
        xml.NCM ncm
        xml.CEST cest
        xml.CFOP cfop
        xml.uCom uCom
        xml.qCom qCom
        xml.vUnCom vUnCom
        xml.vProd vProd
        xml.cEANTrib cEANTrib
        xml.uTrib uTrib
        xml.qTrib qTrib
        xml.vUnTrib vUnTrib
        xml.indTot indTot
      end
    end
  end
end
