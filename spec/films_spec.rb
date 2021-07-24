require 'httparty'

RSpec.describe 'Validando a rota de filmes', :type => :request do
    context 'Verificando seu formato e requisição.' do
        let (:response) {HttParty.get('/films/?format=json')}
        
        it 'o header está em formato json.' do
            expect(response.header['content-type']).to eq('application/json')
        end
        
        it 'o retorno do HTTP é um GET.' do
            expect(response.code).to eq(200)
        end
    end

    context 'Valida se o filme 10 é válido e qual o tipo de retorno ao consultar', :type => :request do
        let (:response) {HttParty.get('/films/10?format=json')}

        it 'O filme 10 é valido' do
            if response.code == 200
                puts response.code
                expect(response.code).to eq(200)
            else
                puts response.code
                expect(response.code).to_not eq(404)
            end
        end
    end
end