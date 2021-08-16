-- Aggregate table AggrTeam
-- Estimated 34 rows, 680 bytes
CREATE TABLE `AggrTeam` (
    `dt_team_team` INT(11),
    `ft_scommessa_occorrenze` DOUBLE,
    `ft_scommessa_fact_count` INTEGER);

-- Aggregate table AggrPronPartita
-- Estimated 6 rows, 120 bytes
CREATE TABLE `AggrPronPartita` (
    `ft_scommessa_pronostico_partit` VARCHAR(45),
    `ft_scommessa_occorrenze` DOUBLE,
    `ft_scommessa_fact_count` INTEGER);

-- Aggregate table AggrPronSingolo
-- Estimated 4 rows, 80 bytes
CREATE TABLE `AggrPronSingolo` (
    `ft_scommessa_pronostico_singol` VARCHAR(45),
    `ft_scommessa_occorrenze` DOUBLE,
    `ft_scommessa_fact_count` INTEGER);

-- Aggregate table AggrCompetizione
-- Estimated 11 rows, 44 bytes
CREATE TABLE `AggrCompetizione` (
    `dt_competizione_competizione` INT(11),
    `ft_scommessa_occorrenze` DOUBLE,
    `ft_scommessa_fact_count` INTEGER);

