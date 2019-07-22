require 'nokogiri'
require 'ruby_xml_nfe/ender_dest'

module RubyXmlNfe
  class Dest
    attr_reader :xml, :cnpj, :xNome, :ender_dest_params, :indIEDest, :ie, :email

    def initialize(xml, params)
      @xml = xml
      @cnpj = params[:CNPJ]
      @xNome = params[:xNome]
      @ender_dest_params = params[:enderDest]
      @indIEDest = params[:indIEDest]
      @ie = params[:IE]
      @email = params[:email]
    end

    def build
      xml.dest do
        xml.CNPJ cnpj
        xml.xNome xNome

        ender_emit = RubyXmlNfe::EnderDest.new(xml, ender_dest_params)
        ender_emit.build

        xml.indIEDest indIEDest
        xml.IE ie if ie
        xml.email email if email
      end
    end
  end
end
