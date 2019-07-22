module RubyXmlNfe
  class Vol
    attr_reader :xml, :qVol, :esp, :pesoL, :pesoB
    def initialize(xml, params)
      @xml = xml
      @qVol = params[:qVol]
      @esp = params[:esp]
      @pesoL = params[:pesoL]
      @pesoB = params[:pesoB]
    end

    def build
      xml.vol do
        xml.qVol qVol if qVol
        xml.esp esp if esp
        xml.pesoL pesoL
        xml.pesoB pesoB
      end
    end
  end
end
