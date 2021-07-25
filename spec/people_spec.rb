require 'httparty'

RSpec.describe 'Validando o peso e altura e validar pelo menos um filme que ele tenha participado', :type => :request do
    let (:response) {HttParty.get('/people/2')}
    film = '1'

    context 'C-3PO' do
        it 'o peso está válido' do
            expect(response['mass']).to be_truthy
        end

        it 'o altura está válido' do
            expect(response['height']).to be_truthy
        end

        it 'o C-3PO participou do filme ' + film do
            expect(response['films'].include?('https://swapi.dev/api/films/' + film +'/')).to be(true)
        end
    end
end