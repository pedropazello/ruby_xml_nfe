require "ruby_xml_nfe/xml"
require "ruby_xml_nfe/ide"

RSpec.describe RubyXmlNfe::Xml do
  describe "#build" do
    let(:xml_as_string) do
      <<-XML
<?xml version="1.0"?>
<NFe xmlns="http://www.portalfiscal.inf.br/nfe">
  <infNFe Id="NFe33190614708867000100550010000000011031955240" versao="4.00">
    <ide>
      <cUF>33</cUF>
      <cNF>03195524</cNF>
      <natOp>VENDA</natOp>
      <mod>55</mod>
      <serie>1</serie>
      <nNF>123</nNF>
      <dhEmi>31/07/1994</dhEmi>
      <dhSaiEnt>31/07/1994</dhSaiEnt>
      <tpNF>1</tpNF>
      <idDest>1</idDest>
      <cMunFG>3304557</cMunFG>
      <tpImp>1</tpImp>
      <tpEmis>1</tpEmis>
      <cDV>0</cDV>
      <tpAmb>1</tpAmb>
      <finNFe>1</finNFe>
      <indFinal>1</indFinal>
      <indPres>9</indPres>
      <procEmi>0</procEmi>
      <verProc>1.0</verProc>
    </ide>
    <emit>
      <CNPJ>14708867000100</CNPJ>
      <xNome>PEDRO LAB</xNome>
      <xFant>PEDRO LAB</xFant>
      <enderEmit>
        <xLgr>TEST STREET</xLgr>
        <nro>131</nro>
        <xCpl>FUNDOS</xCpl>
        <xBairro>ANCHIETA</xBairro>
        <cMun>3304557</cMun>
        <xMun>RIO DE JANEIRO</xMun>
        <UF>RJ</UF>
        <CEP>123456</CEP>
        <cPais>1058</cPais>
        <xPais>BRASIL</xPais>
        <fone>21212121212</fone>
      </enderEmit>
      <IE>123456</IE>
      <CRT>3</CRT>
    </emit>
  </infNFe>
</NFe>
      XML
    end

    let(:params) do
      {
        chNFe: "33190614708867000100550010000000011031955240",
        ide: {
          cUF: "33",
          cNF: "03195524",
          natOp: "VENDA",
          mod: "55",
          serie: "1",
          nNF: "123",
          dhEmi: "31/07/1994",
          dhSaiEnt: "31/07/1994",
          tpNF: "1",
          idDest: "1",
          cMunFG: "3304557",
          tpImp: "1",
          tpEmis: "1",
          cDV: "0",
          tpAmb: "1",
          finNFe: "1",
          indFinal: "1",
          indPres: "9",
          procEmi: "0",
          verProc: "1.0"
        },
        emit: {
          CNPJ: "14708867000100",
          xNome: "PEDRO LAB",
          xFant: "PEDRO LAB",
          enderEmit: {
            xLgr: "TEST STREET",
            nro: "131",
            xCpl: "FUNDOS",
            xBairro: "ANCHIETA",
            cMun: "3304557",
            xMun: "RIO DE JANEIRO",
            UF: "RJ",
            CEP: "123456",
            cPais: "1058",
            xPais: "BRASIL",
            fone: "21212121212"
          },
          IE: "123456",
          CRT: "3"
        }
      }
    end

    let(:xml) { RubyXmlNfe::Xml.new("foo.xml", params) }

    it "builds a valid NF-e XML" do
      expect(xml.build).to eq(xml_as_string)
    end
  end
end
