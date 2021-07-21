require 'httparty'

RSpec.describe 'Validar o formato da request (json válido) para a API' do
    it 'o header deve retornar application/json se a api retorna um json válido.' do
        response = HttParty.get('/films/?format=json')
        expect(response.header['content-type']).to eq('application/json')
    end
end

RSpec.describe 'Validar se o retorno HTTP é válido para um GET' do
    it 'o retorno do HTTP é um GET.' do
        response = HttParty.get('/films/?format=json')
        expect(response.code).to eq(200)
    end
end

RSpec.describe 'Validar retornos para URLs inválidas.' do 
    it 'A rota é válida.' do
        response = HttParty.get('/people/?format=jsonx')
        expect(response['detail']).to eq('Not found')
    end
end

RSpec.describe 'Validar se o filme 10 é válido e qual o tipo de retorno ao consultar' do
    it 'O filme 10 é válido.' do
        response = HttParty.get('/films/6?format=json')
        expect(response.code).to eq(200)
    end
end