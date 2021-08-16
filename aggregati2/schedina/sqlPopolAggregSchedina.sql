-- Populate aggregate table AggrFasciaEta
INSERT INTO `AggrFasciaEta` (
    `dt_cliente_fasciaEta`,
    `ft_schedina_numero_schedine`,
    `ft_schedina_bilancio`,
    `ft_schedina_vincita_totale`,
    `ft_schedina_importo_giocato_to`,
    `ft_schedina_fact_count`)
select
    `dt_cliente`.`fasciaEta` as `dt_cliente_fasciaEta`,
    sum(`ft_schedina`.`numero_schedine`) as `ft_schedina_numero_schedine`,
    sum(`ft_schedina`.`bilancio`) as `ft_schedina_bilancio`,
    sum(`ft_schedina`.`vincita_totale`) as `ft_schedina_vincita_totale`,
    sum(`ft_schedina`.`importo_giocato_totale`) as `ft_schedina_importo_giocato_to`,
    count(*) as `ft_schedina_fact_count`
from
    `ft_schedina` as `ft_schedina`,
    `dt_cliente` as `dt_cliente`
where
    `ft_schedina`.`idcliente` = `dt_cliente`.`idcliente`
group by
    `dt_cliente`.`fasciaEta`;



-- Populate aggregate table AggrIdCliente_esito
INSERT INTO `AggrIdCliente_esito` (
    `dt_cliente_idcliente`,
    `ft_schedina_esito`,
    `ft_schedina_numero_schedine`,
    `ft_schedina_bilancio`,
    `ft_schedina_vincita_totale`,
    `ft_schedina_importo_giocato_to`,
    `ft_schedina_fact_count`)
select
    `dt_cliente`.`idcliente` as `dt_cliente_idcliente`,
    `ft_schedina`.`esito` as `ft_schedina_esito`,
    sum(`ft_schedina`.`numero_schedine`) as `ft_schedina_numero_schedine`,
    sum(`ft_schedina`.`bilancio`) as `ft_schedina_bilancio`,
    sum(`ft_schedina`.`vincita_totale`) as `ft_schedina_vincita_totale`,
    sum(`ft_schedina`.`importo_giocato_totale`) as `ft_schedina_importo_giocato_to`,
    count(*) as `ft_schedina_fact_count`
from
    `ft_schedina` as `ft_schedina`,
    `dt_cliente` as `dt_cliente`
where
    `ft_schedina`.`idcliente` = `dt_cliente`.`idcliente`
group by
    `dt_cliente`.`idcliente`,
    `ft_schedina`.`esito`;



-- Populate aggregate table AggrFasciaEsito
INSERT INTO `AggrFasciaEsito` (
    `dt_cliente_fasciaEta`,
    `ft_schedina_esito`,
    `ft_schedina_numero_schedine`,
    `ft_schedina_bilancio`,
    `ft_schedina_vincita_totale`,
    `ft_schedina_importo_giocato_to`,
    `ft_schedina_fact_count`)
select
    `dt_cliente`.`fasciaEta` as `dt_cliente_fasciaEta`,
    `ft_schedina`.`esito` as `ft_schedina_esito`,
    sum(`ft_schedina`.`numero_schedine`) as `ft_schedina_numero_schedine`,
    sum(`ft_schedina`.`bilancio`) as `ft_schedina_bilancio`,
    sum(`ft_schedina`.`vincita_totale`) as `ft_schedina_vincita_totale`,
    sum(`ft_schedina`.`importo_giocato_totale`) as `ft_schedina_importo_giocato_to`,
    count(*) as `ft_schedina_fact_count`
from
    `ft_schedina` as `ft_schedina`,
    `dt_cliente` as `dt_cliente`
where
    `ft_schedina`.`idcliente` = `dt_cliente`.`idcliente`
group by
    `dt_cliente`.`fasciaEta`,
    `ft_schedina`.`esito`;



-- Populate aggregate table AggrEsitoMese
INSERT INTO `AggrEsitoMese` (
    `ft_schedina_esito`,
    `dt_data_mese`,
    `ft_schedina_numero_schedine`,
    `ft_schedina_bilancio`,
    `ft_schedina_vincita_totale`,
    `ft_schedina_importo_giocato_to`,
    `ft_schedina_fact_count`)
select
    `ft_schedina`.`esito` as `ft_schedina_esito`,
    `dt_data`.`mese` as `dt_data_mese`,
    sum(`ft_schedina`.`numero_schedine`) as `ft_schedina_numero_schedine`,
    sum(`ft_schedina`.`bilancio`) as `ft_schedina_bilancio`,
    sum(`ft_schedina`.`vincita_totale`) as `ft_schedina_vincita_totale`,
    sum(`ft_schedina`.`importo_giocato_totale`) as `ft_schedina_importo_giocato_to`,
    count(*) as `ft_schedina_fact_count`
from
    `ft_schedina` as `ft_schedina`,
    `dt_data` as `dt_data`
where
    `ft_schedina`.`iddata` = `dt_data`.`iddata`
group by
    `ft_schedina`.`esito`,
    `dt_data`.`mese`;



