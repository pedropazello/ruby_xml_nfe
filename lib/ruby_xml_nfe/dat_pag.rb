module RubyXmlNfe
  class DatPag
    attr_reader :xml, :indPag, :tPag, :vPag

    def initialize(xml, params)
      @xml = xml
      @indPag = params[:indPag]
      @tPag = params[:tPag]
      @vPag = params[:vPag]
    end

    def build
      xml.detPag do
        xml.indPag indPag
        xml.tPag tPag
        xml.vPag vPag
      end
    end
  end
end
