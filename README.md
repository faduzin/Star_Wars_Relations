
# Projeto Final de Banco de Dados II - Neo4j e Interface Web

Este repositório contém o código e a documentação do projeto final da disciplina Banco de Dados II, que utiliza o sistema de gerenciamento de banco de dados Neo4J para modelar e consultar as relações complexas entre personagens, locais, itens e afiliações no universo de Star Wars. O projeto inclui scripts de inserção de dados no Neo4J, uma interface web para interação com o banco de dados e materiais de apresentação e relatório.

## Estrutura do Repositório

- **Insert.cypher**: Script em Cypher utilizado para inserir dados no banco de dados Neo4J. Ele cria os nós e as relações entre personagens, locais, itens e afiliações do universo Star Wars.

- **index.html**: Página web que integra HTML, CSS e JavaScript para permitir a interação do usuário com o banco de dados. Através desta interface, é possível realizar consultas, visualizar dados e inserir novos personagens e relações. O Neo4j JavaScript Driver é utilizado para fazer chamadas ao banco de dados.

- **apresentacao.pdf**: Slides da apresentação do projeto, detalhando as escolhas tecnológicas, o modelo de dados e as funcionalidades implementadas.

- **relatorio.pdf**: Documento que descreve em detalhes o desenvolvimento do banco de dados e da interface, as tecnologias utilizadas e as etapas de construção, bem como vantagens e desvantagens da utilização de um banco de dados orientado a grafos.

## Tecnologias Utilizadas

- **Neo4J**: Banco de dados orientado a grafos, utilizado para armazenar e consultar as relações complexas entre os dados interconectados do universo de Star Wars.
  
- **Cypher**: Linguagem de consulta usada no Neo4J para definir, manipular e consultar grafos.

- **HTML, CSS e JavaScript**: Utilizados para criar a interface gráfica de interação com o banco de dados.

- **Neo4j JavaScript Driver**: Integra a interface web com o banco de dados, permitindo consultas dinâmicas e inserções a partir da página HTML.

## Como Usar

1. **Configuração do Neo4J**:
   - Instale e configure o Neo4J em sua máquina.
   - Use o script `Insert.cypher` para popular o banco de dados com informações sobre personagens, locais e itens do universo Star Wars.
   
2. **Interface Web**:
   - Abra o arquivo `index.html` em seu navegador para interagir com o banco de dados. A página permite:
     - Buscar detalhes sobre personagens.
     - Procurar conexões entre personagens (ex. relações familiares ou mestre-aprendiz).
     - Adicionar novos personagens e relações.

3. **Apresentação e Relatório**:
   - Os arquivos `apresentacao.pdf` e `relatorio.pdf` fornecem uma visão detalhada do projeto, incluindo as tecnologias utilizadas, o modelo de dados e a justificativa para o uso de um banco de dados orientado a grafos.

## Contribuidores

- Éric Fadul Cunha Yoshida
- Henrique Garcia Campanha
- Lidyane Küster
- Luiz Eduardo Casella
- Stella Hadassa Alves Vieira
