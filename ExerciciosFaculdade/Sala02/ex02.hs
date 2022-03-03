data Expr = Lit Int | Add Expr Expr | Sub Expr Expr | Mult Expr Expr | Div Expr Expr

--Tentei realizar essa questão de várias formas, mas não tive sucesso. Tentei definir o data
--como Eq para fazer a comparação entre o recebido da função avaliar com o tipo declarado e 
-- assim operar em cima disso.
