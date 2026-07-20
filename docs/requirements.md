# SIGMA - Sistema Integrado de Gestão de Manutenção de Ativos

## Objetivo
Sistema para gerenciamento de usuários, ativos, equipamentos, inventário de hardware, manutenções, estoque de peças, custo e informações gerenciais, proporcionando maior controle operacional, rastreabilidade das informações, apoio à tomada de decisão e melhoria da eficiência na gestão dos ativos.

## Usuários do sistema
O gestor e os demais funcionários do setor de TI.

## Justificativa
A implementação de um sistema informatizado para gestão de manutenção permite centralizar informações, reduzir erros operacionais, melhorar o controle dos ativos, registrar as ações realizadas pelos usuários por meio de auditoria e aumentar a eficiência dos processos, substituindo controles manuais e descentralizados por uma solução integrada, segura e confiável.

## Requisitos Funcionais
Os requisitos funcionais descrevem as funcionalidades que deverão ser implementadas pelo SIGMA para atender às necessidades dos usuários. Cada requisito funcional possui um identificador único (RF), está associado a um módulo do sistema, possui um nível de prioridade e está relacionado a um caso de uso específico.
A seguir são apresentados os requisitos funcionais organizados por módulo do sistema.

### 1. Gestão de Usuários
Este módulo é responsável pelo gerenciamento dos usuários do sistema, autenticação, controle de acesso e administração das contas de utilização.
- RF01: Realizar login
- RF02: Recuperar senha
- RF03: Cadastrar usuários
- RF04: Editar usuários
- RF05: Desativar usuários
- RF06: Definir perfil de acesso
- RF07: Alterar senha
- RF08: Consultar usuários cadastrados

### 2. Gestão de Equipamentos
Este módulo contempla o cadastro e gerenciamento dos ativos da organização, permitindo o acompanhamento de suas informações técnicas, localização e ciclo de vida.
- RF09: Cadastrar equipamentos
- RF10: Editar equipamentos
- RF11: Consultar equipamentos
- RF12: Alterar status do equipamento
- RF13: Registrar localização
- RF14: Registrar valor de aquisição
- RF15: Registrar patrimônio
- RF16: Registrar número de série
- RF17: Registrar garantia
- RF18: Registrar vida útil estimada
- RF19: Consultar histórico completo do equipamento

### 3. Inventário de Hardware
Este módulo permite registrar e manter atualizadas as informações referentes à configuração física dos equipamentos.
- RF20: Cadastrar configuração de hardware do equipamento
- RF21: Atualizar configuração de hardware
- RF22: Consultar configuração do equipamento
- RF23: Registrar placa-mãe
- RF24: Registrar fonte
- RF25: Registrar placa de vídeo
- RF26: Registrar periféricos
- RF27: Atualizar configuração do equipamento
- RF28: Consultar configuração atual

### 4. Controle de Garantias
Este módulo realiza o controle das garantias dos equipamentos, permitindo o acompanhamento de seus vencimentos e atualizações.
- RF29: Atualizar garantia
- RF30: Consultar garantias
- RF31: Alertar vencimento próximo
- RF32: Alertar garantia expirada

### 5. Controle de Upgrades
Este módulo registra alterações realizadas na configuração física dos equipamentos ao longo de seu ciclo de vida.
- RF33: Registrar upgrade de hardware
- RF34: Registrar substituição de componentes
- RF35: Consultar histórico de upgrades
- RF36: Consultar responsável pela alteração

### 6. Gestão de Manutenções
Este módulo gerencia as atividades de manutenção corretiva, registrando todas as informações referentes às intervenções realizadas nos equipamentos.
- RF37: Registrar diagnóstico
- RF38: Registrar causa do problema
- RF39: Registrar solução aplicada
- RF40: Registrar tempo gasto
- RF41: Registrar observações técnicas
- RF42: Consultar histórico de manutenções

### 7. Manutenção Preventiva
Este módulo permite planejar, acompanhar e registrar as atividades de manutenção preventiva dos equipamentos.
- RF43: Criar plano preventivo
- RF44: Definir periodicidade
- RF45: Gerar OS preventiva automaticamente
- RF46: Consultar cronograma preventivo
- RF47: Registrar execução preventiva

### 8. Gestão de Peças
Este módulo permite administrar o cadastro das peças utilizadas nas atividades de manutenção.
- RF48: Cadastrar peças
- RF49: Editar peças
- RF50: Consultar peças
- RF51: Categorizar peças
- RF52: Definir estoque mínimo
- RF53: Consultar histórico de utilização

### 9. Controle de Estoque
Este módulo controla toda a movimentação das peças cadastradas no sistema.
- RF54: Registrar entrada de estoque
- RF55: Registrar saída de estoque
- RF56: Ajustar inventário
- RF57: Consultar saldo disponível
- RF58: Gerar alerta de estoque mínimo
- RF59: Consultar movimentações

### 10. Controle de Custos
Este módulo permite acompanhar os custos relacionados às atividades de manutenção e aos equipamentos.
- RF60: Calcular custo da manutenção
- RF61: Calcular custo por equipamento
- RF62: Calcular custo por período
- RF63: Consultar custos acumulados
- RF64: Gerar relatórios financeiros

### 11. Dashboard Gerencial
Este módulo apresenta informações resumidas da operação por meio de painéis gerenciais.
- RF65: Exibir total de equipamentos
- RF66: Exibir equipamentos em manutenção
- RF67: Exibir custo mensal
- RF68: Exibir alertas de estoque
- RF69: Exibir alertas de garantia

### 12. Indicadores (KPIs)
Este módulo disponibiliza indicadores de desempenho que auxiliam na avaliação da eficiência das atividades de manutenção.
- RF70: Calcular MTBF
- RF71: Calcular MTTR
- RF72: Calcular disponibilidade
- RF73: Exibir equipamentos com mais falhas
- RF74: Exibir quantidade de manutenções por período
- RF75: Exibir custo médio por equipamento

### 13. Relatórios
Este módulo permite a emissão e exportação de relatórios para apoiar a gestão e a tomada de decisão.
- RF76: Relatório de equipamentos
- RF77: Relatório de manutenções
- RF78: Relatório de estoque
- RF79: Relatório de custos
- RF80: Relatório de garantias
- RF81: Exportação para PDF
- RF82: Exportação para Excel

### 14. Auditoria e Segurança
Este módulo registra e disponibiliza o histórico das ações executadas pelos usuários, garantindo rastreabilidade e segurança das informações.
- RF83: Registrar log de login
- RF84: Registrar alterações de equipamentos
- RF85: Registrar alterações de estoque
- RF86: Registrar alterações de manutenções
- RF87: Consultar histórico de auditoria
- RF88: Filtrar logs por usuário
- RF89: Filtrar logs por período

## Requisitos não funcionais
Os requisitos não funcionais definem as características de qualidade esperadas para o SIGMA, estabelecendo critérios relacionados ao desempenho, segurança, confiabilidade, usabilidade, disponibilidade e manutenção do sistema. Esses requisitos complementam os requisitos funcionais e garantem que a solução atenda aos padrões mínimos de qualidade necessários para sua utilização em ambiente organizacional.
- RNF01: O sistema deverá exigir autenticação para acesso às funcionalidades protegidas.
- RNF02: As senhas dos usuários deverão ser armazenadas utilizando algoritmo de criptografia seguro.
- RNF03: O sistema deverá controlar permissões de acesso conforme o perfil do usuário.
- RNF04: O sistema deverá encerrar automaticamente as sessões inativas após período configurável.
- RNF05: Todas as operações críticas deverão ser registradas em log de auditoria.
- RNF06: O sistema deverá utilizar comunicação segura através do protocolo HTTPS quando publicado.
- RNF07: O tempo médio de resposta para operações de consulta não deverá ultrapassar 3 segundos em condições normais de uso.
- RNF08: O sistema deverá suportar múltiplos usuários simultâneos sem degradação significativa do desempenho.
- RNF09: O sistema deverá utilizar paginação em consultas que retornem grandes volumes de dados.
- RNF10: O sistema deverá validar os dados de entrada antes de gravá-los no banco de dados.
- RNF11: O sistema deverá garantir a integridade referencial das informações armazenadas.
- RNF12: O sistema não deverá permitir perda de dados durante operações de atualização.
- RNF13: O sistema deverá realizar tratamento adequado de exceções, evitando interrupções inesperadas.
- RNF14: O sistema deverá apresentar mensagens de erro claras e compreensíveis ao usuário.
- RNF15: A interface deverá possuir navegação intuitiva e padronizada entre os módulos.
- RNF16: O sistema deverá ser responsivo, permitindo utilização em diferentes resoluções de tela.
- RNF17: O sistema deverá manter padronização visual em todas as telas.
- RNF18: Os campos obrigatórios deverão ser claramente identificados na interface.
- RNF19: O sistema deverá ser compatível com os navegadores Google Chrome, Microsoft Edge e Mozilla Firefox em suas versões atuais.
- RNF20: O banco de dados deverá utilizar mecanismos de integridade transacional (ACID).
- RNF21: O sistema deverá permitir futuras expansões sem necessidade de alterações significativas na arquitetura.
- RNF22: O código-fonte deverá seguir padrões de organização e boas práticas de desenvolvimento.
- RNF23: O sistema deverá ser desenvolvido utilizando arquitetura em camadas para facilitar manutenção e evolução.
- RNF24: O sistema deverá disponibilizar API organizada para comunicação entre frontend e backend.
- RNF25: O sistema deverá permitir inclusão de novos módulos sem comprometer os existentes.
- RNF26: O sistema deverá manter separação entre regras de negócio, persistência e interface do usuário.
- RNF27: O sistema deverá registrar data, hora e usuário responsável por alterações nos registros.
- RNF28: O sistema deverá impedir acesso direto às informações do banco de dados por usuários finais.
- RNF29: O sistema deverá permitir exportação de relatórios mantendo a integridade dos dados apresentados.
- RNF30: O sistema deverá possuir estrutura preparada para implantação em ambiente local ou em nuvem.

## Regras de Negócio
As regras estabelecem condições que devem ser obrigatoriamente respeitadas durante a execução das funcionalidades do sistema, independentemente da interface utilizada. Dessa forma, asseguram que os processos de cadastro, atualização, consulta, controle de estoque, manutenção, auditoria e geração de relatórios ocorram de forma confiável e rastreável.
- RGN01: Todo registro cadastrado no sistema deve possuir um identificador único.
- RGN02: O sistema não deve permitir cadastros duplicados quando existir um campo de identificação único definido.
- RGN03: Todos os registros devem possuir data e hora de criação.
- RGN04: Todas as alterações realizadas em registros devem possuir data e hora da modificação.
- RGN05: O sistema deve registrar o usuário responsável pela criação de cada registro.
- RGN06: O sistema deve registrar o usuário responsável por cada alteração realizada.
- RGN07: Usuários desativados não poderão acessar o sistema.
- RGN08: Somente usuários autenticados poderão acessar funcionalidades protegidas.
- RGN09: As permissões de acesso devem ser respeitadas conforme o perfil do usuário.
- RGN10: O sistema não deverá excluir registros históricos que possam comprometer a rastreabilidade das informações.
- RGN11: Exclusões de registros deverão ser realizadas preferencialmente por inativação lógica.
- RGN12: Todas as operações críticas deverão ser registradas em log de auditoria.
- RGN13: O sistema deverá registrar tentativas de login bem-sucedidas e malsucedidas.
- RGN14: O sistema deverá registrar alterações em cadastros de usuários.
- RGN15: O sistema deverá registrar alterações em equipamentos.
- RGN16: O sistema deverá registrar movimentações de estoque.
- RGN17: Datas de vencimento não poderão ser anteriores às datas de início.
- RGN18: Valores monetários deverão ser maiores ou iguais a zero.
- RGN19: Quantidades de estoque não poderão assumir valores negativos.
- RGN20: O sistema deverá impedir movimentações que resultem em estoque negativo.
- RGN21: O histórico de auditoria não poderá ser alterado por usuários comuns.
- RGN22: Todo equipamento deverá possuir identificação única.
- RGN23: Todo equipamento deverá possuir número patrimonial único.
- RGN24: O número de série de um equipamento não poderá ser duplicado.
- RGN25: Garantias deverão possuir data de início e data de término.
- RGN26: Toda manutenção deverá possuir um responsável registrado.
- RGN27: Toda manutenção deverá estar vinculada a um equipamento.
- RGN28: Toda movimentação de estoque deverá possuir responsável identificado.
- RGN29: Peças utilizadas em manutenções deverão ser baixadas do estoque.
- RGN30: O sistema deverá emitir alertas para garantias próximas do vencimento.
- RGN31: O sistema deverá emitir alertas para itens abaixo do estoque mínimo.

RGN32	O histórico de manutenções não poderá ser removido após seu registro.
RGN33	Relatórios deverão refletir exclusivamente dados existentes e registrados no sistema.
RGN34	Os indicadores gerenciais deverão ser calculados com base em dados históricos registrados.
RGN35	Todas as operações devem respeitar os níveis de permissão definidos para cada perfil de usuário.
RGN36	Senhas devem ser armazenadas de forma criptografada.
RGN37	Sessões expiradas devem exigir nova autenticação.
RGN38	Campos obrigatórios devem ser validados antes da gravação.
RGN39	O sistema não deve permitir registros órfãos entre entidades relacionadas.
RGN40	Equipamentos com histórico de manutenção não poderão ser excluídos fisicamente.
RGN41	Usuários não poderão excluir seus próprios registros de auditoria.
RGN42	Registros de auditoria deverão ser somente leitura.
RGN43	Datas futuras não poderão ser utilizadas em registros históricos de manutenção.
RGN44	Todo item deverá possuir estoque mínimo definido.

