-- Para ver se o Postgres esta conectado?
sudo systemctl status postgresql 

-- Para Conectar no Banco 
sudo -u postgres psql 

-- Para Listar Todos os Bancos
\l

-- Para entrar em um Banco
\c nome_banco

-- Para Mostra as Tabelas do Banco
\dt

-- Para ver a Descrição da Tabela
\d nome_da_tabela

-- Para consultar a tabela
SELECT * FROM nome_da_tabela;

-- Para fazer uma busca
SELECT * FROM nome_da_tabela WHERE nome = 'Mauro';

-- Para consultar o título dos posts e o nome dos usuários em Tabelas diferentes
SELECT posts.title, usuarios.nome
FROM posts
JOIN usuarios ON posts.usuario_id = usuarios.id;

-- Para filtrar os posts de um usuário específico
SELECT posts.title, usuarios.nome
FROM posts
JOIN usuarios ON posts.usuario_id = usuarios.id
WHERE usuarios.nome = 'João';

-- Para ordenar os resultados por título:
SELECT posts.title, usuarios.nome
FROM posts
JOIN usuarios ON posts.usuario_id = usuarios.id
ORDER BY posts.title ASC;

