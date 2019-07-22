require 'ruby_xml_nfe/fat'
require 'ruby_xml_nfe/dup'

module RubyXmlNfe
  class Cobr
    attr_reader :xml, :fat_params, :tag_dup

    def initialize(xml, params)
      @xml = xml
      @fat_params = params[:fat]
      @tag_dup = params[:dup]
    end

    def build
      xml.cobr do
        fat = RubyXmlNfe::Fat.new(xml, fat_params)
        fat.build

        tag_dup.map do |dup_params|
          _dup = RubyXmlNfe::Dup.new(xml, dup_params)
          _dup.build
        end
      end
    end
  end
end
