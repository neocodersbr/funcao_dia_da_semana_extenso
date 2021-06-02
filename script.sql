CREATE FUNCTION FUNCAO_DIASEM_EXTENSO  (@DATA DATETIME) RETURNS VARCHAR (20)  AS
/*
-- Função para retornar o dia da semana, por extenso, de uma data
-- Uso: SELECT dbo.FUNCAO_DIASEM_EXTENSO(campo com data - formato aaaammdd) 
*/
BEGIN
  DECLARE @DIA INT, -- variável para receber o dia (numérico)
   		  @DIA_EXT VARCHAR(20) -- variável para receber o dia por extenso (texto)

  SELECT @DIA = (DATEPART(DW,@DATA )) -- pega o dia da semana da data (numérico)
  
  IF @DIA=1 SET @DIA_EXT ='DOMINGO'
  IF @DIA=2 SET @DIA_EXT ='SEGUNDA-FEIRA'
  IF @DIA=3 SET @DIA_EXT ='TERÇA-FEIRA'
  IF @DIA=4 SET @DIA_EXT ='QUARTA-FEIRA'
  IF @DIA=5 SET @DIA_EXT ='QUINTA-FEIRA'
  IF @DIA=6 SET @DIA_EXT ='SEXTA-FEIRA'
  IF @DIA=7 SET @DIA_EXT ='SÁBADO'
  
  RETURN @DIA_EXT
END
