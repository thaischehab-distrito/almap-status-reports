# Prompt Cowork — Atualização Semanal Status Report AlmapBBDO

## Como usar
Cole este prompt no Cowork toda sexta às 10h (ou quando quiser atualizar).

---

## PROMPT COMPLETO

```
Preciso atualizar o Status Report mensal da AlmapBBDO.

**1. LEIA OS ARQUIVOS DO DRIVE**
Acesse a pasta do Google Drive:
https://drive.google.com/drive/folders/1IMRu08Ao3Z_mi8ZdgA-wRWTHM_R12W6k

Busque e leia os arquivos mais recentes (últimas 2 semanas):
- Apresentações de Status Report (PowerPoint ou Google Slides)
- Atas de reunião (Google Docs ou Word)
- Qualquer arquivo com "status", "report", "ata" ou "reunião" no nome

**2. EXTRAIA AS INFORMAÇÕES**
De cada produto ativo (Synths, Assets/ALM, Conversor CPM, Thesis, Double Check), identifique:
- Farol atual (Verde / Amarelo / Vermelho)
- Entregas concluídas desde o último relatório
- Pendências e riscos ativos
- Próximos passos

**3. ATUALIZE O HTML DO STATUS REPORT**
Abra o arquivo index.html que está no repositório GitHub:
https://github.com/thaischehab-distrito/almap-status-reports/blob/main/index.html

Atualize as seções do mês atual com as informações extraídas do Drive, mantendo:
- O mesmo layout e estrutura visual
- A navegação entre meses anteriores (não apague o histórico)
- Adicione o mês atual na sidebar como "atual"
- Mova o mês anterior para o histórico

**4. SALVE E FAÇA PUSH**
Salve o HTML atualizado e faça commit + push para a branch gh-pages do repositório:
https://github.com/thaischehab-distrito/almap-status-reports

Mensagem do commit: "chore: status report [MÊS ANO] — atualização automática via Cowork"

Confirme com a URL do site atualizado:
https://thaischehab-distrito.github.io/almap-status-reports
```
