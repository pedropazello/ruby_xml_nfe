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
    <dest>
      <CNPJ>10864769000101</CNPJ>
      <xNome>Supermercado Extra Ltda - Me</xNome>
      <enderDest>
        <xLgr>R Gonalo Jose Vituriano, S/n</xLgr>
        <nro>1516</nro>
        <xCpl>1582</xCpl>
        <xBairro>Santa Helena</xBairro>
        <cMun>3301009</cMun>
        <xMun>CAMPOS DOS GOYTACAZES</xMun>
        <UF>PB</UF>
        <CEP>58925000</CEP>
        <cPais>1058</cPais>
        <xPais>BRASIL</xPais>
      </enderDest>
      <indIEDest>9</indIEDest>
    </dest>
    <autXML>
      <CNPJ>08370779000149</CNPJ>
    </autXML>
    <det nItem="1">
      <prod>
        <cProd>PS4</cProd>
        <cEAN>SEM GTIN</cEAN>
        <xProd>Console Sony Playstation 4</xProd>
        <NCM>95045000</NCM>
        <CEST>2107900</CEST>
        <CFOP>5102</CFOP>
        <uCom>UN</uCom>
        <qCom>5.0000</qCom>
        <vUnCom>1400.0000000000</vUnCom>
        <vProd>7000.00</vProd>
        <cEANTrib>SEM GTIN</cEANTrib>
        <uTrib>UN</uTrib>
        <qTrib>5.0000</qTrib>
        <vUnTrib>1400.0000000000</vUnTrib>
        <indTot>1</indTot>
      </prod>
      <imposto>
        <ICMS>
          <ICMS00>
            <orig>0</orig>
            <CST>00</CST>
            <modBC>3</modBC>
            <vBC>7000.00</vBC>
            <pICMS>18.00</pICMS>
            <vICMS>1260.00</vICMS>
            <pFCP>2.00</pFCP>
            <vFCP>140.00</vFCP>
          </ICMS00>
        </ICMS>
        <IPI>
          <cEnq>999</cEnq>
          <IPINT>
            <CST>51</CST>
          </IPINT>
        </IPI>
        <II>
          <vBC>0.00</vBC>
          <vDespAdu>0.00</vDespAdu>
          <vII>0.00</vII>
          <vIOF>0.00</vIOF>
        </II>
        <PIS>
          <PISAliq>
            <CST>01</CST>
            <vBC>7000.00</vBC>
            <pPIS>1.65</pPIS>
            <vPIS>115.50</vPIS>
          </PISAliq>
        </PIS>
        <COFINS>
          <COFINSAliq>
            <CST>01</CST>
            <vBC>7000.00</vBC>
            <pCOFINS>7.60</pCOFINS>
            <vCOFINS>532.00</vCOFINS>
          </COFINSAliq>
        </COFINS>
      </imposto>
    </det>
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
        },
        dest: {
          CNPJ: "10864769000101",
          xNome: "Supermercado Extra Ltda - Me",
          enderDest: {
            xLgr: "R Gonalo Jose Vituriano, S/n",
            nro: "1516",
            xCpl: "1582",
            xBairro: "Santa Helena",
            cMun: "3301009",
            xMun: "CAMPOS DOS GOYTACAZES",
            UF: "PB",
            CEP: "58925000",
            cPais: "1058",
            xPais: "BRASIL"
          },
          indIEDest: "9"
        },
        autXML: {
          CNPJ: "08370779000149"
        },
        items: [
          {
            prod: {
              cProd: "PS4",
              cEAN: "SEM GTIN",
              xProd: "Console Sony Playstation 4",
              NCM: "95045000",
              CEST: "2107900",
              CFOP: "5102",
              uCom: "UN",
              qCom: "5.0000",
              vUnCom: "1400.0000000000",
              vProd: "7000.00",
              cEANTrib: "SEM GTIN",
              uTrib: "UN",
              qTrib: "5.0000",
              vUnTrib: "1400.0000000000",
              indTot: 1
            },
            imposto: {
              ICMS: {
                ICMS00: {
                  orig: "0",
                  CST: "00",
                  modBC: "3",
                  vBC: "7000.00",
                  pICMS: "18.00",
                  vICMS: "1260.00",
                  pFCP: "2.00",
                  vFCP: "140.00"
                }
              },
              IPI: {
                cEnq: 999,
                IPINT: {
                  CST: 51
                }
              },
              II: {
                vBC: 0.00,
                vDespAdu: 0.00,
                vII: 0.00,
                vIOF: 0.00,
              },
              PIS: {
                PISAliq: {
                  CST: "01",
                  vBC: 7000.00,
                  pPIS: 1.65,
                  vPIS: 115.50,
                }
              },
              COFINS: {
                COFINSAliq: {
                  CST: "01",
                  vBC: 7000.00,
                  pCOFINS: 7.60,
                  vCOFINS: 532.00,
                }
              }
            }
          }
        ]
      }
    end

    let(:xml) { RubyXmlNfe::Xml.new("foo.xml", params) }

    it "builds a valid NF-e XML" do
      expect(xml.build).to eq(xml_as_string)
    end
  end
end
