# Registros de Recurso do DNS

Pontuação: 30 pontos
 
Usando comando `samba-tool`, crie 4 registros do DNS do tipo A ([Vide Planilha passada no GSA](https://docs.google.com/spreadsheets/d/1CCovPufbUcIhQHA_NDlIsiSV7j3tCSA57_594fHhxAE/edit?usp=sharing)).


Use o seguinte comando para listar todos os registros de sua zona:

- `samba-tool dns query 127.0.0.1 "<estado>.lab" @ ALL -U administrator`
