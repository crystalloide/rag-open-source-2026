# 🧠 RAG Open Source 2026 - Formation Data Engineering

[![Docker](https://img.shields.io/badge/Docker-Ready-brightgreen)](docker-compose.yml)
[![100% Local](https://img.shields.io/badge/100%25_Local-Ollama-blue)](https://ollama.com)

## 🚀 Stack Production 2026 (0 API Key)

| Composant | Open Source Implémentation |
|-----------|---------------------------|
| Vector DB | **pgvectorscale** (10x pgvector) |
| Embeddings | **mxbai-embed-large** (95% voyage) |
| LLM | **llama3.1** (89% GPT-4o-mini) |
| Frameworks | LangGraph + CrewAI + AutoGen |

## 🎓 3 TP Reproductibles

```bash
git clone https://github.com/crystalloide/rag-open-2026
cd rag-open-2026
docker compose up -d
ollama pull llama3.1 mxbai-embed-large
jupyter localhost:8888
```

### TP1: LangGraph Agent (Déterministe)
`notebooks/langgraph_pgvectorscale.ipynb`

### TP2: CrewAI Team (Rôles Business)  
`notebooks/crewai_local.ipynb`

### TP3: AutoGen GroupChat (Collaboration)
`notebooks/autogen_conversation.ipynb`

## 📊 Quiz Validation
```
Q1: pgvectorscale vs pgvector ?
→ 10x rapide, 95% recall

Q2: Meilleur embedding open source 2026 ?
→ mxbai-embed-large (MMLU 68.2)
```

**Temps setup: 5min** | **Étudiants prêts: Immédiat**
