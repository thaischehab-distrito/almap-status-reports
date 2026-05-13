# Status Reports — AlmapBBDO × Distrito AI Factory

Site navegável com histórico de Status Reports mensais da AlmapBBDO.

🌐 **Site:** https://thaischehab-distrito.github.io/almap-status-reports

---

## Como atualizar

### Opção 1 — Cowork (recomendado, com dados do Drive)
1. Abra o **Cowork**
2. Conecte o **GitHub** (ver instruções abaixo)
3. Copie o prompt em `COWORK_PROMPT.md`
4. Cole no Cowork e execute
5. O Cowork lê o Drive, gera o HTML e faz o push automaticamente

### Opção 2 — GitHub Actions (deploy manual)
1. Acesse: https://github.com/thaischehab-distrito/almap-status-reports/actions
2. Clique em **"Deploy Status Reports — AlmapBBDO"**
3. Clique em **"Run workflow"**

### Opção 3 — Agendamento automático
O GitHub Actions roda automaticamente **toda sexta às 10h (Brasília)** e sincroniza o HTML da branch `main` para o site.

---

## Conectar GitHub ao Cowork

1. Abra o **Cowork**
2. Vá em **Settings → Integrations**
3. Clique em **GitHub → Connect**
4. Autorize o acesso ao repositório `almap-status-reports`

---

## Estrutura do repositório

```
almap-status-reports/
├── index.html              ← HTML do site navegável (fonte)
├── COWORK_PROMPT.md        ← Prompt pronto para usar no Cowork
├── scripts/
│   └── push-update.sh      ← Script de push (usado pelo Cowork)
└── .github/
    └── workflows/
        └── deploy.yml      ← Agendamento automático toda sexta
```

## Branches

- `main` → fonte do HTML e workflows
- `gh-pages` → o que está publicado no site

---

*Distrito AI Factory · AlmapBBDO · Confidencial*
