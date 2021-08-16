-- Aggregate table AggrFasciaEta
-- Estimated 6 rows, 120 bytes
CREATE TABLE `AggrFasciaEta` (
    `dt_cliente_fasciaEta` VARCHAR(45),
    `ft_schedina_numero_schedine` DOUBLE,
    `ft_schedina_bilancio` DOUBLE,
    `ft_schedina_vincita_totale` DOUBLE,
    `ft_schedina_importo_giocato_to` DOUBLE,
    `ft_schedina_fact_count` INTEGER);

-- Aggregate table AggrIdCliente_esito
-- Estimated 1998 rows, 47952 bytes
CREATE TABLE `AggrIdCliente_esito` (
    `dt_cliente_idcliente` INT(11),
    `ft_schedina_esito` VARCHAR(45),
    `ft_schedina_numero_schedine` DOUBLE,
    `ft_schedina_bilancio` DOUBLE,
    `ft_schedina_vincita_totale` DOUBLE,
    `ft_schedina_importo_giocato_to` DOUBLE,
    `ft_schedina_fact_count` INTEGER);

-- Aggregate table AggrFasciaEsito
-- Estimated 12 rows, 480 bytes
CREATE TABLE `AggrFasciaEsito` (
    `dt_cliente_fasciaEta` VARCHAR(45),
    `ft_schedina_esito` VARCHAR(45),
    `ft_schedina_numero_schedine` DOUBLE,
    `ft_schedina_bilancio` DOUBLE,
    `ft_schedina_vincita_totale` DOUBLE,
    `ft_schedina_importo_giocato_to` DOUBLE,
    `ft_schedina_fact_count` INTEGER);

-- Aggregate table AggrEsitoMese
-- Estimated 176 rows, 7040 bytes
CREATE TABLE `AggrEsitoMese` (
    `ft_schedina_esito` VARCHAR(45),
    `dt_data_mese` VARCHAR(45),
    `ft_schedina_numero_schedine` DOUBLE,
    `ft_schedina_bilancio` DOUBLE,
    `ft_schedina_vincita_totale` DOUBLE,
    `ft_schedina_importo_giocato_to` DOUBLE,
    `ft_schedina_fact_count` INTEGER);

