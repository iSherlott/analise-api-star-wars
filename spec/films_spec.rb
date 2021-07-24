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

    context 'Validando se o filme 10 é válido e qual o tipo de retorno ao consultar', :type => :request do
        let (:response) {HttParty.get('/films/10?format=json')}

        it 'Validando o filme 10' do
            if response.code == 200
                expect(response.code).to eq(200)
            else
                expect(response.code).to_not eq(404)
            end
        end
    end

    context 'Validando o nome correto de um determinado episódio de filme', :type => :request do
        let (:response) {HttParty.get('/films/2?format=json')}
        title = 'The Empire Strikes Back'

        it 'Validando o nome ' + title do
            expect(response['title']).to eq(title)
        end
    end

    context 'Validando o ID do episódio e o tipo do dado se está correto', :type => :request do
        let (:response) {HttParty.get('/films/2?format=json')}
        id = 5

        it 'Validando o ID: ' + id.to_s do
            expect(response['episode_id']).to eql(id)
        end
    end
end