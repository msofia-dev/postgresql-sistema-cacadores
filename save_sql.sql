SELECT
    c.nome_completo_mt AS cacador,
    m.status AS status_missao,
    m.recompensa,
    e.equipamento_mt AS equipamento
FROM tabela_diagrama.tabela_cacador c
LEFT JOIN tabela_diagrama.participa_mt p ON c.id_cacador_mt = p.id_cacador_mt
LEFT JOIN tabela_diagrama.tabela_missao m ON p.id_missao = m.id_missao
LEFT JOIN tabela_diagrama.equipa_mt e ON c.id_cacador_mt = e.id_cacador_mt;