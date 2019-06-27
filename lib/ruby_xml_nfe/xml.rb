require 'nokogiri'
require 'ruby_xml_nfe/ide'

module RubyXmlNfe
  class Xml
    attr_reader :chNFe, :ide_params

    def initialize(name, params)
      @name = name
      @chNFe = params[:chNFe]
      @ide_params = params[:ide]
    end

    def build
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.NFe(xmlns: "http://www.portalfiscal.inf.br/nfe") do
          xml.infNFe(Id: "NFe#{chNFe}", versao: "4.00") do
            ide = RubyXmlNfe::Ide.new(xml, ide_params)
            ide.build
          end
        end
      end

      builder.to_xml
    end
  end
end
