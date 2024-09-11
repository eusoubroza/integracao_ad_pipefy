# integracao_ad_pipefy
Automação para atualizar os dados do active directory no banco de colaboradores do pipefy

O processo é composto por três códigos, o GET_AD_DATA.py, que pega os dados do AD da empresa e filtra os usuários que terão acesso ao pipefy, e guarda os dados de todos eles em um arquivo .json.

O segundo código pega esses dados json e os coloca em uma databse local para visualização dos dados.

O terceiro código é o código que pega os dados da database, e compara os usuários ali com os que estão no pipefy. Se um usuário está no DB, porém não no pipefy, isso significa que é um novo usuário que dever ser criado no banco do pipefy. Se o usuário já existe no pipefy, ele compara os dados de lá com os dados do DB, e caso alguma informação esteja desatualizada, ele da um update no pipefy, deixando as informações em dia.

O quarto arquivo, see_list.py, serve para atualizar as informações de centro de custos. Esse código é opcional pois essas informações raramente são atualizadas.

No final, todos os cógios são rodados em sequência por um arquivo .bat. Caso algum dos passos de erro, o processo é parado.
