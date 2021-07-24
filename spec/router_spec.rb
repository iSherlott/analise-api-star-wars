require 'httparty'

RSpec.describe 'Valida retornos para URLs inválidas.', :type => :request do 
    it 'A rota é válida.' do
        response = HttParty.get('/people/?format=jsonx')
        expect(response['detail']).to eq('Not found')
    end
end