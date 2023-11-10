#!/bin/bash

# Install dependencies
poetry install --with ui,local

# Download Embedding and LLM models
poetry run python scripts/setup
