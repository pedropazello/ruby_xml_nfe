module RubyXmlNfe
  class Fat
    attr_reader :xml, :nFat, :vOrig, :vDesc, :vLiq

    def initialize(xml, params)
      @xml = xml
      @nFat  = params[:nFat]
      @vOrig = params[:vOrig]
      @vDesc = params[:vDesc]
      @vLiq  = params[:vLiq]
    end

    def build
      xml.fat do
        xml.nFat nFat
        xml.vOrig vOrig
        xml.vDesc vDesc
        xml.vLiq vLiq
      end
    end
  end
end
