require 'httparty'

RSpec.describe 'Validar o formato da request (json válido) para a API' do
    it 'o header deve retornar application/json se a api retorna um json válido' do
        response = HttParty.get('films/?format=json')
        expect(response.header['content-type'] == 'application/json')
    end
end