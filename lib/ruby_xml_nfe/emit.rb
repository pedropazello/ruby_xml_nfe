require 'nokogiri'
require 'ruby_xml_nfe/ender_emit'

module RubyXmlNfe
  class Emit
    attr_reader :xml, :cnpj, :xNome, :xFant, :ender_emit_params, :ie, :crt

    def initialize(xml, params)
      @xml = xml
      @cnpj = params[:CNPJ]
      @xNome = params[:xNome]
      @xFant = params[:xFant]
      @ender_emit_params = params[:enderEmit]
      @ie = params[:IE]
      @crt = params[:CRT]
    end

    def build
      xml.emit do
        xml.CNPJ cnpj
        xml.xNome xNome
        xml.xFant xFant

        ender_emit = RubyXmlNfe::EnderEmit.new(xml, ender_emit_params)
        ender_emit.build

        xml.IE ie
        xml.CRT crt
      end
    end
  end
end
