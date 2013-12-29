var RES_CREATE='Criar',RES_LIST='Lista',RES_ADD_TO_HOME='Marcar como Favorito',RES_REM_FROM_HOME='Remover Dos Meus Favoritos',RES_RECORD_ERROR='Erro ao recuperar um registo. Este registo pode encontrar-se eliminado ou você poderá não ter permissões para o visualizar.',RES_LAST_VIEWED='Últimos acessos', RES_DELETE_CONFIRMATION='Tem a certeza que pretende eliminar este registo?', RES_DEL_LABEL='Eliminar', RES_NEXT_LABEL='Próximo', RES_PREVIOUS_LABEL='Anterior';
var RES_HOME_LABEL='Principal',RES_SYNC='Sincronizar',RES_SAVEDSEARCH='Pesquisas Gravadas',RES_SAVESEARCH='Gravar esta Pesquisa como:',RES_DISABLED='Desactivado';
var sugar_app_list_strings = jQuery.parseJSON('{"moduleList":{"Accounts":"Entidades","Contacts":"Contactos","Opportunities":"Oportunidades","Leads":"Leads","Calls":"Chamadas Telef\u00f3nicas","Meetings":"Reuni\u00f5es","Cases":"Ocorr\u00eancias","Project":"Projectos","ProjectTask":"Tarefas de Projecto","Tasks":"Tarefas","Notes":"Notas","SavedSearches":"Pesquisas Gravadas"},"moduleListSingular":{"Accounts":"Entidade","Contacts":"Contacto","Opportunities":"Oportunidade","Leads":"Lead","Calls":"Chamada","Meetings":"Reuni\u00e3o","Cases":"Ocorr\u00eancia","Project":"Projecto","ProjectTask":"Tarefa de Projecto","Tasks":"Tarefa","Notes":"Nota"},"parent_type_display":{"Bugs":"Bug Tracker","Leads":"Lead","Prospects":"Target","Accounts":"Entidade","Contacts":"Contacto","Tasks":"Tarefa","Opportunities":"Oportunidade","Products":"Produto","Quotes":"Cota\u00e7\u00e3o","Cases":"Ocorr\u00eancia","Project":"Projecto","ProjectTask":"Tarefa de Projecto"},"date_search":{"=":"Equals","not_equal":"Not On","greater_than":"After","less_than":"Before","last_7_days":"Last 7 Days","next_7_days":"Next 7 Days","last_30_days":"Last 30 Days","next_30_days":"Next 30 Days","last_month":"Last Month","this_month":"This Month","next_month":"Next Month","last_year":"Last Year","this_year":"This Year","next_year":"Next Year","between":"Is Between","today":"hoje"},"account_type_dom":{"":"[-nenhum-]","Analyst":"Analista","Competitor":"Concorrente","Customer":"Cliente","Integrator":"Integrador","Investor":"Investidor","Partner":"Parceiro","Press":"Imprensa","Prospect":"Potencial Cliente","Reseller":"Revendedor","Other":"Outro"},"industry_dom":{"":"","Apparel":"T\u00eaxtil","Banking":"Banco","Biotechnology":"Biotecnologia","Chemicals":"Qu\u00edmica","Communications":"Comunica\u00e7\u00f5es","Construction":"Constru\u00e7\u00e3o","Consulting":"Consultoria","Education":"Ensino","Electronics":"Electr\u00f3nicos","Energy":"Energia","Engineering":"Engenharia","Entertainment":"Entretenimento","Environmental":"Ambiental","Finance":"Financeira","Government":"Governo","Healthcare":"Sa\u00fade","Hospitality":"Hotelaria","Insurance":"Seguros","Machinery":"Maquinaria","Manufacturing":"Manufactura","Media":"Meios de Comunica\u00e7\u00e3o","Not For Profit":"Sem Fins Lucrativos","Recreation":"Entretenimento","Retail":"Retalho","Shipping":"Expeditores","Technology":"Tecnologia","Telecommunications":"Telecomunica\u00e7\u00f5es","Transportation":"Transportes","Utilities":"Servi\u00e7os P\u00fablicos","Other":"Outros"},"salutation_dom":{"":"","Dr.":"Dr.","Prof.":"Prof.","Mr.":"Sr.","Ms.":"Sra.","Mrs.":"Sra."},"lead_source_dom":{"":"","Direct Mail":"Direct Mail","Cold Call":"Chamada Espont\u00e2nea","Existing Customer":"Cliente Existente","Self Generated":"Auto Gerada","Employee":"Colaborador","Partner":"Parceiro","Public Relations":"Rela\u00e7\u00f5es P\u00fablicas","Conference":"Confer\u00eancia","Trade Show":"Feira\/Evento","Web Site":"Site de Internet","Word of mouth":"Boca-a-boca","Email":"E-mail","Campaign":"Campanha","Other":"Outro"},"opportunity_relationship_type_dom":{"":"","Primary Decision Maker":"Decisor Principal","Business Decision Maker":"Decisor de Neg\u00f3cios","Business Evaluator":"Avaliador de Neg\u00f3cios","Technical Decision Maker":"Decisor T\u00e9cnico","Technical Evaluator":"Avaliador T\u00e9cnico","Executive Sponsor":"Patrocinador Executivo","Influencer":"Influ\u00eanciador","Other":"Outro"},"dom_meeting_accept_status":{"accept":"Aceite","decline":"Recusado","tentative":"Tentativo","none":"Nenhum"},"fp_event_invite_status_dom":{"Invited":"Invited","Not Invited":"Not Invited","Attended":"Attended","Not Attended":"Not Attended"},"fp_event_status_dom":{"Accepted":"Accepted","Declined":"Declined","No Response":"No Response"},"opportunity_type_dom":{"":"","Existing Business":"Neg\u00f3cios Existentes","New Business":"Novos Neg\u00f3cios"},"sales_stage_dom":{"Prospecting":"Prospec\u00e7\u00e3o","Qualification":"Qualifica\u00e7\u00e3o","Needs Analysis":"An\u00e1lise de Necessidades","Value Proposition":"Proposta de Valor","Id. Decision Makers":"Identificar decisores","Perception Analysis":"An\u00e1lise de Percep\u00e7\u00e3o","Proposal\/Price Quote":"Proposta\/Cota\u00e7\u00e3o de Pre\u00e7o","Negotiation\/Review":"Negocia\u00e7\u00e3o\/Revis\u00e3o","Closed Won":"Ganh\u00e1mos","Closed Lost":"Perdemos"},"lead_status_dom":{"":"","New":"Novo","Assigned":"Atribu\u00eddo","In Process":"Em Processamento","Converted":"Convertido","Recycled":"Reciclado","Dead":"Inoperativo"},"call_status_dom":{"Planned":"Planeada","Held":"Realizada","Not Held":"N\u00e3o Realizada"},"call_direction_dom":{"Inbound":"Entrada","Outbound":"Sa\u00edda"},"reminder_time_options":{"60":"1 minuto antes","300":"5 minutos antes","600":"10 minutos antes","900":"15 minutos antes","1800":"30 minutos antes","3600":"1 hora antes","7200":"2 hours prior","10800":"3 hours prior","18000":"5 hours prior","86400":"1 day prior"},"repeat_type_dom":{"":"None","Daily":"Daily","Weekly":"Weekly","Monthly":"Monthly","Yearly":"Yearly"},"meeting_status_dom":{"Planned":"Planeado","Held":"Realizado","Not Held":"N\u00e3o Realizado"},"eapm_list":{"Sugar":"Sugar","WebEx":"WebEx","GoToMeeting":"GoToMeeting","IBMSmartCloud":"IBM SmartCloud","Google":"Google","Box":"Box.net","Facebook":"Facebook","Twitter":"Twitter"},"duration_dom":{"":"None","900":"15 minutes","1800":"30 minutes","2700":"45 minutes","3600":"1 hour","5400":"1.5 hours","7200":"2 hours","10800":"3 hours","21600":"6 hours","86400":"1 day","172800":"2 days","259200":"3 days","604800":"1 week"},"case_type_dom":{"Administration":"Administra\u00e7\u00e3o","Product":"Produto","User":"Utilizador"},"case_priority_dom":{"P1":"Alta","P2":"M\u00e9dia","P3":"Baixa"},"case_state_dom":{"Open":"Open","Closed":"Closed"},"project_status_dom":{"Draft":"Rascunho","In Review":"Em Revis\u00e3o","Published":"Publicado"},"projects_priority_options":{"high":"Alto","medium":"M\u00e9dio","low":"Baixo"},"project_task_status_options":{"Not Started":"N\u00e3o Iniciada","In Progress":"Em progresso","Completed":"Conclu\u00edda","Pending Input":"A Aguardar Resposta","Deferred":"Adiada"},"project_task_priority_options":{"High":"Alta","Medium":"M\u00e9dia","Low":"Baixa"},"task_status_dom":{"Not Started":"N\u00e3o Iniciada","In Progress":"Em Progresso","Completed":"Terminada","Pending Input":"Informa\u00e7\u00e3o Pendente","Deferred":"Adiada"},"task_priority_dom":{"High":"Alta","Medium":"M\u00e9dia","Low":"Baixa"}}');var sugar_app_strings = jQuery.parseJSON('{"LBL_CREATE_BUTTON_LABEL":"Criar","LBL_EDIT_BUTTON":"Editar","LBL_LIST":"Lista","LBL_SEARCH_BUTTON_LABEL":"Pesquisar","LBL_CURRENT_USER_FILTER":"Apenas os meus itens:","LBL_BACK":"Voltar","LBL_SAVE_BUTTON_LABEL":"Gravar","LBL_CANCEL_BUTTON_LABEL":"Cancelar","LBL_MARK_AS_FAVORITES":"Marcar como Favorito","LBL_REMOVE_FROM_FAVORITES":"Remover Dos Meus Favoritos","NTC_DELETE_CONFIRMATION":"Tem a certeza que pretende eliminar este registo?","LBL_DELETE_BUTTON_LABEL":"Eliminar","ERROR_NO_RECORD":"Erro ao recuperar um registo. Este registo pode encontrar-se eliminado ou voc\u00ea poder\u00e1 n\u00e3o ter permiss\u00f5es para o visualizar.","LBL_LAST_VIEWED":"\u00daltimos acessos","LNK_LIST_NEXT":"Pr\u00f3ximo","LNK_LIST_PREVIOUS":"Anterior","LBL_LIST_USER_NAME":"Nome do Utilizador","NTC_LOGIN_MESSAGE":"Por favor indique o seu nome e palavra-passe.","ERR_INVALID_EMAIL_ADDRESS":"O endere\u00e7o de E-mail n\u00e3o \u00e9 v\u00e1lido.","LBL_ASSIGNED_TO":"Atribu\u00eddo a:","LBL_CLEAR_BUTTON_LABEL":"Limpar","LBL_DURATION_DAYS":"days","LBL_CLOSE_AND_CREATE_BUTTON_TITLE":"Fechar e Criar Novo [Alt+C]","LBL_CLOSE_BUTTON_TITLE":"Fechar","LBL_LISTVIEW_ALL":"Tudo","LBL_LISTVIEW_NONE":"Nenhum"}');