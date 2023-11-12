PGPT_PROFILES=local poetry run python -m uvicorn private_gpt.main:app --reload --port 8001 --host 0.0.0.0
