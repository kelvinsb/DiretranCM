module EnderecosHelper
finder = Correios::CEP::AddressFinder.new
endereco = finder.get("87310500")

end
