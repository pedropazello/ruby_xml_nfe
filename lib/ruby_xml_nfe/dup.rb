module RubyXmlNfe
  class Dup
    attr_reader :xml, :nDup, :dVenc, :vDup

    def initialize(xml, params)
      @xml = xml
      @nDup = params[:nDup]
      @dVenc = params[:dVenc]
      @vDup = params[:vDup]
    end

    def build
      xml.dup_ do
        xml.nDup nDup
        xml.dVenc dVenc
        xml.vDup vDup
      end
    end
  end
end
