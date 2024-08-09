# TRABALHO 01:  Estoque do Cliente
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Eduardo Pitanga Loureiro: edudupilo@gmail.com<br>
Theo Mischiatti Gomes: theo.gomes@outlook.com.br<br>
Gabriel Dias Brito: cientistadias@gmail.com<br>
Julio Cesar: julio.siilvafn2019@gmail.com<br>


### 2.MINI-MUNDO<br>

> O cliente deseja um sistema simples, no qual consiga fazer o controle de estoque,
seja de bebidas, carnes, ou outro produtos de um restaurante, e se possível, um controle
sobre a validade dos produtos em estoque.
O sistema será gerenciado por uma única pessoa, da qual fará a inclusão dos
produtos no estoque sempre que chegarem ao restaurante. Da inclusão, deseja-se saber o
nome do produto, a quantidade, seja em kilos ou litros, a categoria, seja copa, câmara ou
outro, a data de inclusão e a data de validade. Além disso, deseja-se ser possível o
cadastro de novos produtos e novas categorias de estoque.
Assim como a entrada, o sistema deve permitir a saída de estoque, informando a
data de consumo (data de inclusão), quantidade e categoria.
Dadas essas funcionalidades do sistema, deseja-se a construção de relatórios com
uma visualização detalhada de certas coisas. Deseja-se visualizar um relatório com o total
de produtos no estoque atual, separados por categoria. Outro relatório com o total
consumido no mês X, separado por categoria. Além disso, também é desejado um relatório
informando quais e a quantidade dos produtos que estão para vencer até dia Y.

### 3.PERGUNTAS A SEREM RESPONDIDAS<br>
#### 3.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
a) Será possível obter relatórios relacionados a saída e entrada de produto, como tal sua quantidade, validade, preços e outras informações a ajudar na tomada de decisão.


b) O cliente informou que precisa inicialmente dos seguintes relatórios:
* Relatório que mostre o total de produtos em estoque, separados por categoria
* Relatório que mostre o total de produtos consumidos em determinados mês, separados por categoria.
* Relatorio que mostre os produtos que estão para vencer e sua quantidade até determinado dia do mês.
* Relatório que mostre todas as movimentações de entrada e saída de produtos, mostrando datas, quantidades, categorias e outras informações relevantes.
* Relatório que mostre quais categorias de produtos estão vencendo com frequência.

    
### 5.MODELO CONCEITUAL<br>
    A) Utilizar a Notação adequada (Preferencialmente utilizar o BR Modelo 3)
    B) O mínimo de entidades do modelo conceitual pare este trabalho será igual a 3 e o Máximo 5.
        * informe quais são as 3 principais entidades do sistema em densenvolvimento<br>(se houverem mais de 3 entidades, pense na importância da entidade para o sistema)       
    C) Principais fluxos de informação/entidades do sistema (mínimo 3). <br>Dica: normalmente estes fluxos estão associados as tabelas que conterão maior quantidade de dados 
    D) Qualidade e Clareza
        Garantir que a semântica dos atributos seja clara no esquema (nomes coerentes com os dados).
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas (Aplicar os conceitos de normalização abordados).   
        
[![Modelo Conceitual do Estoque](https://github.com/aJulinx/TemplateBD1/blob/8a1410205ac59e5f2cb8e6766dc5af88580db62c/files/Conceitual_3%20estoque.png)

#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Eduardo Pitanga, Júlio César, Theo Mischiatti.]

#### 5.2 Descrição dos dados 

    [Estoque_inclusao]: [Tabela que armazena as informações relativas à inclusão de produtos no estoque.]
- `id_inclusão`: Identificador único para cada inclusão.<br>
- `id_produto`: Identificador do produto incluído.<br>
- `quantidade`: Quantidade de produtos incluídos.<br>
- `preço`: Preço do produto incluído.<br>
- `data_inclusão`: Data em que o produto foi incluído no estoque.<br>
- `data_validade`: Data de validade do produto incluído.<br>

[Estoque exclusao]:[Tabela que armazena as informações relativas à exclusão de produtos do estoque.]
- `id_exclusão`: Identificador único para cada exclusão.<br>
- `id_produto`: Identificador do produto excluído.<br>
- `quantidade`: Quantidade de produtos excluídos.<br>
- `data_exclusao`: Data em que o produto foi excluído do estoque.<br>
- `preço_venda`: Preço que o produto foi vendido.<br>

[Produto]: [Tabela que armazena as informações relativas aos produtos.]
- `id_produto`: Identificador único do produto.<br>
- `nome_produto`: Nome do produto.<br>
- `categoria_produto`: Categoria à qual o produto pertence.<br>
- `id_usuario`: Chave estrangeira do usuário que cadastrou o produto.<br>

[Categoria]: [Tabela que armazena as informações relativas às categorias de produtos.]
- `id_categoria`: Identificador único da categoria.<br>
- `nome_Categoria`: Nome da categoria.<br>
- `id_usuario`: Chave estrangeira do usuário que cadastrou a categoria.<br>

[Usuario]: [Tabela que armazena as informações relativas aos usuários.]
- `id_user`: Identificador único do usuário.<br>
- `nome`: Nome do usuário.<br>
- `login`: Nome de login do usuário.
- `senha`: Senha do usuário.


># Marco de Entrega 01: Do item 1 até o item 5.2 (5 PTS) <br> 

### 6	MODELO LÓGICO<br>

[![Modelo Lógico do Estoque](https://github.com/aJulinx/TemplateBD1/blob/b73606498ea2fb75b9d2794d30ef6f39e033bced/files/L%C3%B3gico_Estoque_1.png).


### 7	MODELO FÍSICO<br>

[![SQL](https://github.com/aJulinx/TemplateBD1/blob/e698473d5894772aa4ce9e5de8cd81e0466fc052/files/Script-3.sql).
      
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
[![SQL](https://github.com/aJulinx/TemplateBD1/blob/e698473d5894772aa4ce9e5de8cd81e0466fc052/files/Script-3.sql).



### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Usa template da disciplina disponibilizado no Colab.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
```sql
select * from categoria;<br>

select * from estoque_exclusao;<br>

select * from estoque_inclusao;<br>

select * from produto;<br>

select * from usuario;<br>

```
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

```sql
--1) Deseja-se visualizar um relatório com o total de produtos no estoque atual, separados por categoria.<br>

SELECT
    nome_produto AS Produto,
    ((SELECT SUM(quantidade) FROM estoque_inclusao eis WHERE eis.id_produto = pp.id_produto) - 
    (SELECT SUM(quantidade) FROM estoque_exclusao exs WHERE exs.id_produto = pp.id_produto)) AS quantidade
FROM
    produto pp
WHERE
    categoria_produto = 1
GROUP BY
    id_produto,
    nome_produto
ORDER BY
    nome_produto


--2) Outro relatório com o total consumido no mês X, separado por categoria.
select 
	nome_produto as Produto, 
	sum(quantidade) as Total_Saida
from 
	estoque_exclusao
	inner join produto on (estoque_exclusao.id_produto = produto.id_produto)
where 
	data_exclusao between '07/01/2024' and '07/30/2024' and
	categoria_produto = 2
group by 
	nome_produto
order by
	nome_produto

--3) relatório informando quais e a quantidade dos produtos que estão para vencer até o dia Y
select 
    nome_produto as Produto,
    (incluido - excluido) as quantidade_a_vencer
from (
    select 
        pp.id_produto,
        pp.nome_produto,
        (select sum(quantidade) from estoque_inclusao eis where eis.id_produto = pp.id_produto and eis.data_validade <= '2024-07-30') as incluido,
        (select sum(quantidade) from estoque_exclusao exs where exs.id_produto = pp.id_produto) as excluido
    from
        produto pp
    where 
        pp.categoria_produto = 2
	) 
group by 
	nome_produto, 
	incluido, 
	excluido
having 
	(incluido - excluido) is not null and 
	(incluido - excluido) > 0
order by 
	nome_produto

--4) gastos totais no mes X
select 
	sum(preco) as Total_Gasto
from
	estoque_inclusao ei
	inner join produto pp on (pp.id_produto = ei.id_produto)
where 
	pp.categoria_produto in (1,2) and
	data_inclusao between '07/01/2024' and '07/30/2024'

```

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

```sql
a)
--1) Outro relatório com o total consumido no mês X, separado por categoria.
select
	nome_produto as Produto, 
	sum(quantidade) as Total_Saida
from 
	estoque_exclusao
	inner join produto on (estoque_exclusao.id_produto = produto.id_produto)
where 
	data_exclusao between '07/01/2024' and '07/30/2024' and
	categoria_produto = 2
group by 
	nome_produto
order by 
	nome_produto


--2) gastos totais no mes X
select 
	sum(preco) as Total_Gasto
from
	estoque_inclusao ei
	inner join produto pp on (pp.id_produto = ei.id_produto)
where 
	pp.categoria_produto in (1,2) and
	data_inclusao between '07/01/2024' and '07/30/2024'

--3) lucro total no mes X
select 
	(select 
		sum(preco_venda) 
	from 
		estoque_exclusao
	where 
		data_exclusao between '07/01/2024' and '07/30/2024') - 
	(select 
		sum(preco) 
	from 
		estoque_inclusao
	where 
		data_inclusao between '07/01/2024' and '07/30/2024') as lucro_total

--4) Verifica a data de validade dos produtos dado um dia do mês<
select
	nome_produto,
	data_validade
from
    produto inner join estoque_inclusao on (produto.id_produto = estoque_inclusao.id_produto)
where
	estoque_inclusao.data_validade < ‘2024-07-24’;


--5) Verifica se algum usuário cadastrou produtos nas duas categorias
SELECT
	nome
FROM<br>
	usuario
WHERE
	EXISTS (SELECT * FROM produto  WHERE produto.id_usuario = usuario.id_user AND produto.categoria_produto = 1)
	AND EXISTS (SELECT * FROM produto p WHERE p.id_usuario = usuario.id_user AND p.categoria_produto = 2);

b)<br>
--1) Deseja-se visualizar um relatório com o total de produtos no estoque atual, separados por categoria.
select 
	nome_produto as Produto<br>,
	((select sum(quantidade) from estoque_inclusao eis where eis.id_produto = pp.id_produto) -
	(select sum(quantidade) from estoque_exclusao exs where exs.id_produto = pp.id_produto)) as quantidade
from
	produto pp
where 
	categoria_produto = 1
group by 
	id_produto,
	nome_produto
order by 
	nome_produto


--2) lucro total no mes X
select 
	(select 
		sum(preco_venda)
	from 
		estoque_exclusao
	where 
		data_exclusao between '07/01/2024' and '07/30/2024') - 
	(select 
		sum(preco) 
	from 
		estoque_inclusao
	where 
		data_inclusao between '07/01/2024' and '07/30/2024') as lucro_total


--3) média de lucro por produto

select
    nome_produto as Produto,
    cast(
    (select avg(ee.preco_venda/ee.quantidade) from estoque_exclusao ee where ee.id_produto = pp.id_produto) -
    (select avg(ei.preco/ei.quantidade) from estoque_inclusao ei where ei.id_produto = pp.id_produto) 
    as decimal(6,2)) as Lucro_Medio_kg_l
from 
	produto pp
group by 
	id_produto, nome_produto
order by nome_produto

c)

ALTER TABLE estoque_exclusao RENAME COLUMN quantidade TO quantidade_prod;

ALTER TABLE estoque_inclusao RENAME COLUMN quantidade TO quantidade_prod;

ALTER TABLE usuario RENAME COLUMN id_user TO id_usuario;

```


#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.
```sql

a>
SELECT * 
FROM produto
WHERE nome_produto ILIKE 'A%';


SELECT estoque_inclusao.*
FROM estoque_inclusao
JOIN produto ON estoque_inclusao.id_produto = produto.id_produto
WHERE produto.nome_produto ILIKE '%Suco%';


SELECT estoque_exclusao.*
FROM estoque_exclusao
JOIN produto ON estoque_exclusao.id_produto = produto.id_produto
WHERE produto.nome_produto ILIKE '%File%';


SELECT * 
FROM produto
WHERE nome_produto LIKE 'F%';


SELECT * 
FROM usuario
WHERE nome LIKE '%a%';

b>
--Retonar os produtos vencidos do dia atual (current_date)
select
	produto.nome_produto,
	estoque_inclusao.data_validade
from
	produto inner join estoque_inclusao on (produto.id_produto = estoque_inclusao.id_produto)
where
	estoque_inclusao.data_validade < (select current_date);

```

># Marco de Entrega 02: Do item 6. até o item 9.1 (5 PTS) <br>

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

```sql
a>
UPDATE estoque_exclusao
SET preco_venda = NULL
WHERE id_exclusao = 1;


UPDATE estoque_exclusao
SET quantidade = NULL
WHERE id_exclusao = 2;


UPDATE estoque_exclusao
SET quantidade = null
WHERE id_exclusao = 5;

b>
UPDATE usuario
SET nome = 'João'
WHERE id_usuario = 100;



UPDATE usuario
SET nome = 'João'
WHERE id_usuario = 100;



UPDATE usuario
SET login = 'Beatriz_c'
WHERE id_usuario = 200;

```

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

```sql
a>
-- Retorna uma visão geral do estoque dos produtos, quantos ainda possuem.

SELECT
	produto.nome_produto,
	categoria.nome_categoria,
	usuario.nome AS nome_usuario,
	SUM(estoque_inclusao.quantidade) - SUM(estoque_exclusao.quantidade) AS estoque_atual
FROM
	produto
	INNER JOIN categoria  ON (produto.categoria_produto = categoria.id_categoria)
	INNER JOIN usuario  ON (produto.id_usuario = usuario.id_user)
	LEFT JOIN estoque_inclusao  ON (produto.id_produto = estoque_inclusao.id_produto)
	LEFT JOIN estoque_exclusao  ON (produto.id_produto = estoque_exclusao.id_produto)
GROUP BY
	produto.nome_produto, categoria.nome_categoria, usuario.nome
ORDER BY
	estoque_atual DESC;

b>
--Outro relatório com o total consumido no mês X, separado por categoria.
select 
	nome_produto as Produto, 
	sum(quantidade) as Total_Saida
from 
	estoque_exclusao
	inner join produto on (estoque_exclusao.id_produto = produto.id_produto)
where 
	data_exclusao between '07/01/2024' and '07/30/2024' and
	categoria_produto = 2
group by 
	nome_produto
order by 
	nome_produto



-- quantidade de produtos cadastrados por usuario
select 
	usuario.nome as Usuario, 
	count(id_usuario) as Total_Inclusoes
from 
	produto
	inner join usuario on (produto.id_usuario = usuario.id_user)
group by
	usuario.nome
order by usuario.nome


-- historico de preço
select 
	data_inclusao,
	cast((preco/quantidade) as decimal(6,2)) as preco_kg
from 
	estoque_inclusao
	inner join produto on(produto.id_produto = estoque_inclusao.id_produto)
where 
	produto.nome_produto = 'Alcatra'
order by data_inclusao




-- produto mais vendido (quantidade) no mes X
		
select 
	nome_produto as produto,
	sum(quantidade) as quant_total_vendas
from 
	produto pp
	inner join estoque_exclusao ee on (pp.id_produto = ee.id_produto)
where 
	data_exclusao between '07/01/2024' and '07/30/2024'
group by 
	nome_produto, 
	quantidade
order by 
	quantidade 
desc limit 1



-- historico de preço
select 
	data_inclusao,
	cast((preco/quantidade) as decimal(6,2)) as preco_kg
from 
	estoque_inclusao
	inner join produto on(produto.id_produto = estoque_inclusao.id_produto)
where 
	produto.nome_produto = 'Alcatra'
order by data_inclusao

```

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção
```sql
select
	nome_produto as Produto,
	sum(quantidade) as Total_Saida
from
	estoque_exclusao
	inner join produto on (estoque_exclusao.id_produto = produto.id_produto)
where
	data_exclusao between '07/01/2024' and '07/30/2024' and
	categoria_produto = 2
group by
	nome_produto
order by
	nome_produto;


select
	usuario.nome as Usuario,
	count(id_usuario) as Total_Inclusoes
from
	produto
	inner join usuario on (produto.id_usuario = usuario.id_user)
group by
	usuario.nome
order by usuario.nome


select
   nome_produto as Produto,
   (incluido - excluido) as quantidade
from (
   select
       pp.id_produto,
       pp.nome_produto,
       (select sum(quantidade) from estoque_inclusao eis where eis.id_produto = pp.id_produto) as incluido,
       (select sum(quantidade) from estoque_exclusao exs where exs.id_produto = pp.id_produto) as excluido
   from
       produto pp
	)
group by
	nome_produto,
	incluido,
	excluido
having
	(incluido - excluido) is not null and
	(incluido - excluido) <= 10
order by
	nome_produto


select
   nome_produto as Produto,
   cast(avg(ei.preco/ei.quantidade) as decimal(6,2)) as Preco_Medio_kg_l
from
   produto
   inner join estoque_inclusao ei on (produto.id_produto = ei.id_produto)
group by
   ei.id_produto, nome_produto


select
	nome_produto as produto,
	sum(quantidade) as quant_total_vendas
from
	produto pp
	inner join estoque_exclusao ee on (pp.id_produto = ee.id_produto)
where
	data_exclusao between '07/01/2024' and '07/30/2024'
group by
	nome_produto,
	quantidade
order by
	quantidade
asc limit 1


select
   nome_produto as Produto,
   cast(
   (select avg(ee.preco_venda/ee.quantidade) from estoque_exclusao ee where ee.id_produto = pp.id_produto) -
   (select avg(ei.preco/ei.quantidade) from estoque_inclusao ei where ei.id_produto = pp.id_produto)
   as decimal(6,2)) as Lucro_Medio_kg_l
from
	produto pp
group by
	id_produto, nome_produto
order by nome_produto

```
#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo
```sql
--Left: Produtos e sua quantidade de inclusão

SELECT
	produto.nome_produto,
	SUM(estoque_inclusao.quantidade) AS total_inclusao
FROM
	produto p
	LEFT JOIN estoque_inclusao ON (produto.id_produto = estoque_inclusao.id_produto)
GROUP BY
	produto.nome_produto
ORDER BY
	produto.nome_produto;


--Right: Todas as exclusões do estoque, id do produto e o produto

SELECT
	estoque_exclusao.id_exclusao,
	produto.nome_produto,
	estoque_exclusao.quantidade
FROM
	estoque_exclusao RIGHT JOIN produto ON (estoque_exclusao.id_produto = produto.id_produto)
ORDER BY
	estoque_exclusao.id_exclusao;

	
--Full join: Mostrar todos os usuários e produtos cadastrados por eles
	
	SELECT
	usuario.nome AS nome_usuario,
	produto.nome_produto
FROM
	usuario FULL JOIN produto  ON (usuario.id_user = produto.id_usuario)
ORDER BY
	usuario.nome, produto.nome_produto;

```
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
```sql

a>
justificativa: Não há dados dos quais possam ser correlacionados de modo a trazer resultados relevantes, visto que o sistema é muito baseado no relacionamento entre as tabelas e não em cada tabela atomicamente.

CREATE VIEW dados_inclusao AS
SELECT quantidade, preco, data_inclusao, data_validade
FROM Estoque_inclusao
SELECT * FROM dados_inclusao; 

CREATE VIEW dados_exclusao AS
SELECT quantidade, preco, data_exclusao, preco_venda
FROM Estoque_exclusao
SELECT * FROM dados_exclusao;

CREATE VIEW dados_produto AS
SELECT nome_produto, categoria_produto
FROM produto
SELECT * FROM dados_produto;

CREATE VIEW dados_usuario AS
SELECT nome, login
FROM usuario
SELECT * FROM dados_usuario;

CREATE VIEW dados_categoria AS
SELECT nome_categoria
FROM categoria
SELECT * FROM dados_categoria;

CREATE VIEW dados_validade AS
SELECT quantidade, preco, data_inclusao, data_validade
FROM Estoque_inclusao
WHERE data_validade = '08/27/2024'
SELECT * FROM dados_validade ;

b>
CREATE VIEW dados_inclusão_preco AS
SELECT quantidade, preco, data_inclusao, data_validade
FROM Estoque_inclusao
WHERE preco >= 100
SELECT * FROM dados_inclusão_preco ;



```
#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção
```sql
-- produtos com baixo estoque
select 
    nome_produto as Produto,
    (incluido - excluido) as quantidade
from (
    select 
        pp.id_produto,
        pp.nome_produto,
        (select sum(quantidade) from estoque_inclusao eis where eis.id_produto = pp.id_produto) as incluido,
        (select sum(quantidade) from estoque_exclusao exs where exs.id_produto = pp.id_produto) as excluido
    from
        produto pp
	) 
group by 
	nome_produto, 
	incluido, 
	excluido
having 
	(incluido - excluido) is not null and 
	(incluido - excluido) <= 10
order by 
	nome_produto


--3) relatório informando quais e a quantidade dos produtos que estão para vencer até o dia Y
select 
    nome_produto as Produto,
    (incluido - excluido) as quantidade_a_vencer
from (
    select 
        pp.id_produto,
        pp.nome_produto,
        (select sum(quantidade) from estoque_inclusao eis where eis.id_produto = pp.id_produto and eis.data_validade <= '2024-07-30') as incluido,
        (select sum(quantidade) from estoque_exclusao exs where exs.id_produto = pp.id_produto) as excluido
    from
        produto pp
    where 
        pp.categoria_produto = 2
	) 
group by 
	nome_produto, 
	incluido, 
	excluido
having 
	(incluido - excluido) is not null and 
	(incluido - excluido) > 0
order by 
	nome_produto

a) Criar mínimo 1 envolvendo GROUP BY
--1) Deseja-se visualizar um relatório com o total de produtos no estoque atual, separados por categoria.
select 
	nome_produto as Produto,
	((select sum(quantidade) from estoque_inclusao eis where eis.id_produto = pp.id_produto) - 
	(select sum(quantidade) from estoque_exclusao exs where exs.id_produto = pp.id_produto)) as quantidade
from
	produto pp
where 
	categoria_produto = 1
group by 
	id_produto, 
	nome_produto
order by 
	nome_produto


 b) Criar mínimo 1 envolvendo algum tipo de junção
--1) Deseja-se visualizar um relatório com o total de produtos no estoque atual, separados por categoria, e o nome do usuario que adicionou o produto.
select
	nome_produto as Produto,
	((select sum(quantidade) from estoque_inclusao eis where eis.id_produto = pp.id_produto) -
	(select sum(quantidade) from estoque_exclusao exs where exs.id_produto = pp.id_produto)) as quantidade,
	nome as usuario
from
	produto pp
	inner join usuario u on (u.id_user = pp.id_usuario)
where
	nome_produto in (select nome_produto from produto where categoria_produto = 2 group by nome_produto)
group by
	id_produto,
	nome_produto,
	nome
order by
	nome_produto



```
># Marco de Entrega 03: Do item 9.2 até o ítem 9.10 (10 PTS)<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

https://colab.research.google.com/drive/1fdIG4SOp8y86fWDeHBF6M6mtqrFEVb48?usp=sharing

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 04: Itens 10 e 11 (20 PTS) <br>
<br>
<br>


### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


