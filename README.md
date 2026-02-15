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
git clone https://github.com/crystalloide/rag-open-source-2026
cd rag-open-2026
## On vérifie qu'un serveur n'est pas déjà lancé ( Ex. OLLAMA lancé en local)
netstat -anl | grep 11434
## Affichage en retour si déjà lancé :  tcp        0      0 127.0.0.1:11434         0.0.0.0:*               LISTEN

docker compose up -d
# Voir les modèles dispo ici : https://ollama.com/library/llama3.1
# Si en local : Choisir 1 des deux :  
# ollama pull llama3.1
# ollama pull llama3.1 mxbai-embed-large
# Si OLLAMA utilisé via un conteneur (défaut): Choisir 1 des deux :  <ollama-container> = ollama dans notre cas
docker exec -it ollama ollama pull llama3.1:latest
docker exec -it ollama ollama pull mxbai-embed-large
#docker exec -it <ollama-container> ollama pull mxbai-embed-large
#Remarque : Les modèles Ollama (llama3.1, mxbai-embed-large)
#           sont conservés dans le volume ollama_data même après "docker compose down" (sauf si -v).
## Lancement de Jupyter :
# Ouvrir simplement dans votre navigateur
http://localhost:8888

## Ou si vous êtes sous WSL/Linux :
xdg-open http://localhost:8888

# Ou avec Firefox/Chrome
firefox http://localhost:8888 &
google-chrome http://localhost:8888 &

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
