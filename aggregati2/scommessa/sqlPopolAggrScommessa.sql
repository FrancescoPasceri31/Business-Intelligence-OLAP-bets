-- Populate aggregate table AggrTeam
INSERT INTO `AggrTeam` (
    `dt_team_team`,
    `ft_scommessa_occorrenze`,
    `ft_scommessa_fact_count`)
select
    `dt_team`.`idteam` as `dt_team_team`,
    sum(`ft_scommessa`.`numero schedine`) as `ft_scommessa_occorrenze`,
    count(*) as `ft_scommessa_fact_count`
from
    `ft_scommessa` as `ft_scommessa`,
    `dt_team` as `dt_team`
where
    `ft_scommessa`.`idteamCasa` = `dt_team`.`idteam`
group by
    `dt_team`.`idteam`;



-- Populate aggregate table AggrPronPartita
INSERT INTO `AggrPronPartita` (
    `ft_scommessa_pronostico_partit`,
    `ft_scommessa_occorrenze`,
    `ft_scommessa_fact_count`)
select
    `ft_scommessa`.`pronosticoPartita` as `ft_scommessa_pronostico_partit`,
    sum(`ft_scommessa`.`numero schedine`) as `ft_scommessa_occorrenze`,
    count(*) as `ft_scommessa_fact_count`
from
    `ft_scommessa` as `ft_scommessa`
group by
    `ft_scommessa`.`pronosticoPartita`;



-- Populate aggregate table AggrPronSingolo
INSERT INTO `AggrPronSingolo` (
    `ft_scommessa_pronostico_singol`,
    `ft_scommessa_occorrenze`,
    `ft_scommessa_fact_count`)
select
    `ft_scommessa`.`pronosticoSingolo` as `ft_scommessa_pronostico_singol`,
    sum(`ft_scommessa`.`numero schedine`) as `ft_scommessa_occorrenze`,
    count(*) as `ft_scommessa_fact_count`
from
    `ft_scommessa` as `ft_scommessa`
group by
    `ft_scommessa`.`pronosticoSingolo`;



-- Populate aggregate table AggrCompetizione
INSERT INTO `AggrCompetizione` (
    `dt_competizione_competizione`,
    `ft_scommessa_occorrenze`,
    `ft_scommessa_fact_count`)
select
    `dt_competizione`.`idcompetizione` as `dt_competizione_competizione`,
    sum(`ft_scommessa`.`numero schedine`) as `ft_scommessa_occorrenze`,
    count(*) as `ft_scommessa_fact_count`
from
    `ft_scommessa` as `ft_scommessa`,
    `dt_competizione` as `dt_competizione`
where
    `ft_scommessa`.`idcompetizione` = `dt_competizione`.`idcompetizione`
group by
    `dt_competizione`.`idcompetizione`;



