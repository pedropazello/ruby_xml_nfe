module RubyXmlNfe
  class IcmsTot
    attr_reader *%i(xml vBC vICMS vICMSDeson vFCP vBCST vST vFCPST
      vFCPSTRet vProd vFrete vSeg vDesc vII vIPI vIPIDevol vPIS vCOFINS vOutro vNF)

    def initialize(xml, params)
      @xml = xml
      @vBC = params[:vBC]
      @vICMS = params[:vICMS]
      @vICMSDeson = params[:vICMSDeson]
      @vFCP = params[:vFCP]
      @vBCST = params[:vBCST]
      @vST = params[:vST]
      @vFCPST = params[:vFCPST]
      @vFCPSTRet = params[:vFCPSTRet]
      @vProd = params[:vProd]
      @vFrete = params[:vFrete]
      @vSeg = params[:vSeg]
      @vDesc = params[:vDesc]
      @vII = params[:vII]
      @vIPI = params[:vIPI]
      @vIPIDevol = params[:vIPIDevol]
      @vPIS = params[:vPIS]
      @vCOFINS = params[:vCOFINS]
      @vOutro = params[:vOutro]
      @vNF = params[:vNF]
    end

    def build
      xml.ICMSTot do
        xml.vBC vBC
        xml.vICMS vICMS
        xml.vICMSDeson vICMSDeson
        xml.vFCP vFCP
        xml.vBCST vBCST
        xml.vST vST
        xml.vFCPST vFCPST
        xml.vFCPSTRet vFCPSTRet
        xml.vProd vProd
        xml.vFrete vFrete
        xml.vSeg vSeg
        xml.vDesc vDesc
        xml.vII vII
        xml.vIPI vIPI
        xml.vIPIDevol vIPIDevol
        xml.vPIS vPIS
        xml.vCOFINS vCOFINS
        xml.vOutro vOutro
        xml.vNF vNF
      end
    end
  end
end
