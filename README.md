# Analise Api Star Wars

<p>A aplicação consiste em escrever testes para alguns cenários conforme descrito
abaixo, baseado nas APIs do Star Wars, disponível em: https://swapi.dev
Deverão ser desenvolvidos os cenários para teste das seguintes operações:</p>
<br />

1. Validar o formato da request (json válido) para a seguinte
   API: https://swapi.dev/api/films/?format=json
2. Validar se o retorno HTTP é válido para um GET
3. Validar retornos para URLs inválidas, como por exemplo:
   https://swapi.dev/api/people/?format=jsonx
4. Validar se o filme 10 é válido e qual o tipo de retorno ao consultar;
5. Validar o nome correto de um determinado episódio de filme;
6. Validar o ID do episódio e o tipo do dado está correto
7. Validar o formato de data válida (padrão americano) e validar se a data não é
   padrão Brasil
8. Validar o peso e altura do “people” C-3PO e validar pelo menos um filme que
   ele tenha participado

### Diferenciais:

- Boas práticas na elaboração dos testes
- Validar outros cenários que identifique necessários para uma API
  Observações importantes:
- O projeto deverá ser criado no GitHub. Deverá ser enviado o link para o
  projeto;
- O código deve ser enviado por completo, possíveis dependências devem
  ser explicitadas;
- O candidato é livre para escolher o framework de sua preferência. O teste,
  preferencialmente, deve ser escrito em Ruby.

## Dependencies

rspec ^3.10.0<br />
rake ^13.0.6<br />
httparty ^0.18.1<br />

## Install

Execute o bundler install para instalar todas as dependencias utilizada no projeto.

## Checkpoint

```
id: configurando ambiente
etapa: Preparando o ambiente de desenvolvimento para aplicar os teste.

id: Test #1 Finalizado
etapa: Finalizado o teste de mesa da primeira solicitação.

id: Test #2 Finalizado
etapa: Finalizado o teste de mesa da segunda solicitação, corrigido o endpoint da requisição do test #1.
Corrigido a comparação de '==' para 'to eq'

id: Test #3 Finalizado
etapa: Efetuado o inicio do teste #4, Finalizado o teste de mesa da terceira solicitação.

id: Test #4 Finalizado
etapa: Criado o diario de bordo do checkpoint do git, trocado o final dos arquivos de '_test' para '_spec'.
Finalizado a validação se existe o filme 10, contudo, não consegui retorna o tipo.

id: Test #5 Finalizado
etapa: Finalizado o teste de mesa da quinta etapa.

id: Test #6 Finalizado
etapa: Finalizado o teste de mesa da sexta etapa.

id: Test #7 Finalizado
etapa: Finalizado o teste de mesa da setima etapa.

id: Test #8 Finalizado
etapa: Finalizado o teste de mesa da setima etapa.
```

## Biography

<a href="https://www.rubydoc.info/gems/rspec-expectations/frames">rspec expectations</a><br />
<a href="https://www.udemy.com/course/curso-de-testes-ruby-com-rspec">Curso de Testes para Ruby on Rails com RSpec - Udemy</a><br />
<a href="https://br.sensedia.com/post/rest-api-understand-the-step-by-step-to-perform-tests">rest api understand the step by step to perform tests<a><br />
<a href="https://relishapp.com/rspec/rspec-core/v/3-8/docs/filtering/conditional-filters">conditional filters - RSpec</a><br />
<a href="https://www.youtube.com/watch?v=oIN1EIrebVA&ab_channel=ProgramadorShowzim">Introdução ao TDD com Ruby on Rails e Rspec</a><br />
<a href="https://stackoverflow.com/questions/24980295/strictly-convert-string-to-integer-or-nil">strictly convert string to integer or nil</a><br />
<a href="https://relishapp.com/rspec/rspec-core/docs/example-groups/shared-examples">shared examples</a><br />
