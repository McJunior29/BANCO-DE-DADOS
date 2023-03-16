INSERT INTO `clinicteste`.`estado` (`nome_estado`, `sigle_estado`) VALUES ('CEARA', 'CE');
INSERT INTO `clinicteste`.`estado` (`nome_estado`, `sigle_estado`) VALUES ('BAHIA', 'BA');
INSERT INTO `clinicteste`.`estado` (`nome_estado`, `sigle_estado`) VALUES ('RIO DE JANEIRO', 'RJ');


INSERT INTO `clinicteste`.`cidade` (`nome_cidade`, `id_estado`) VALUES ('Caninde', '1');
INSERT INTO `clinicteste`.`cidade` (`nome_cidade`, `id_estado`) VALUES ('Salvador', '2');
INSERT INTO `clinicteste`.`cidade` (`nome_cidade`, `id_estado`) VALUES ('Rio de Janeiro', '3');

INSERT INTO `clinicteste`.`cep` (`cep`, `rua`, `bairro`, `id_cidade`) VALUES ('62700000', 'ROMEU MARTINS', 'CNTRO', '1');
INSERT INTO `clinicteste`.`cep` (`cep`, `rua`, `bairro`, `id_cidade`) VALUES ('62740100', 'RUA PASCAL', 'SUL', '2');
INSERT INTO `clinicteste`.`cep` (`cep`, `rua`, `bairro`, `id_cidade`) VALUES ('14822151100', 'FAVELA DO RATO', 'ZONA OESTE', '3');


INSERT INTO `clinicteste`.`endereco_clinica` (`numero`, `complemento`, `id_cep`) VALUES ('565', 'vizinho a caixa', '1');
INSERT INTO `clinicteste`.`endereco_clinica` (`numero`, `complemento`, `id_cep`) VALUES ('64', 'proximo a enel', '2');

INSERT INTO `clinicteste`.`clinica` (`razao_social`, `cnpj`, `email`, `telefone`, `atende_sus`, `valor_consulta`, `id_endereco`) VALUES ('teste', '6216465165', 'teste@teste.com.br\'', '859884401121', '1', '200', '1');
INSERT INTO `clinicteste`.`clinica` (`razao_social`, `cnpj`, `email`, `telefone`, `atende_sus`, `valor_consulta`, `id_endereco`) VALUES ('outra clinica', '516565166516', 'outra@teste.com', '8597754112', '0', '300', '2');


INSERT INTO `clinicteste`.`especialidade` (`nome_especialidade`) VALUES ('cabeça');
INSERT INTO `clinicteste`.`especialidade` (`nome_especialidade`) VALUES ('pulmão');

INSERT INTO `clinicteste`.`medico` (`nome_medico`, `cpf`, `data_nascimento`, `foto_medico`, `telefone`, `numero_crm`, `id_especialidade`, `id_estado_crm`, `id_clinica`) VALUES ('Outro Medico', '15165165165', '1971-03-12', 'img/url/teste.jpg', '8594410324', '65416546', '1', '1', '2');
INSERT INTO `clinicteste`.`medico` (`nome_medico`, `cpf`, `data_nascimento`, `foto_medico`, `telefone`, `numero_crm`, `id_especialidade`, `id_estado_crm`, `id_clinica`) VALUES ('Outro Medico', '15165165165', '1971-03-12', 'img/url/teste.jpg', '8594410324', '65416546', '2', '1', '3');

INSERT INTO `clinicteste`.`clinica_medico` (`id_clinica`, `id_medico`) VALUES ('2', '3');
INSERT INTO `clinicteste`.`clinica_medico` (`id_clinica`, `id_medico`) VALUES ('3', '2');

INSERT INTO `clinicteste`.`usuario` (`nome_usuario`, `email`, `senha`, `foto_usuario`) VALUES ('User teste', 'marcos@teste.com.br', 'uhcvsivi', 'img/url.jpg');
INSERT INTO `clinicteste`.`usuario` (`nome_usuario`, `email`, `senha`, `foto_usuario`) VALUES ('outro user teste', 'teste@gmail.com', 'csdbvi', 'img/url3.jpg');


INSERT INTO `clinicteste`.`agendamento` (`id_usuario`, `id_medico`, `data_agendamento`, `hora_inicio`, `hora_fim`, `descricao`, `valor_consulta`) VALUES ('1', '2', '2023-03-12', '10:20', '11:30', 'teste', '200');



SELECT * FROM agendamento;
SELECT * FROM medico;

SELECT * FROM medico INNER JOIN clinica_medico on clinica_medico.id_medico = medico.id_medico INNER JOIN clinica on clinica_medico.id_clinica = clinica.id_clinica;
