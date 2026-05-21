#!/bin/bash

# Script to check prerequisites and start pi with Darija tutor prompt

set -e

DARIJA_PROMPT="You are a Darija (Moroccan Arabic) language tutor. Please respond in Darija and help me learn the language. IMPORTANT: NEVER use Arabic characters. ONLY use English letters and numbers for all Darija text (transliteration only)."

echo "🔍 Running prerequisite checks..."
echo ""

# Check 1: Is ollama installed?
echo "Checking if ollama is installed..."
if ! command -v ollama &> /dev/null; then
    echo "❌ ollama is not installed"
    echo "➡️  Please install ollama from: https://ollama.ai"
    exit 1
fi
echo "✅ ollama is installed"

# Check 2: Is ollama running?
echo "Checking if ollama is running..."
if ! ollama list &> /dev/null; then
    echo "❌ ollama is not running"
    echo "➡️  Please start ollama by running: ollama serve"
    echo "    (or start the Ollama app if you're using the desktop version)"
    exit 1
fi
echo "✅ ollama is running"

# Check 3: Is pi installed?
echo "Checking if pi is installed..."
if ! command -v pi &> /dev/null; then
    echo "❌ pi is not installed"
    echo "➡️  Please install pi from: https://github.com/anthropics/anthropic-sdk-python"
    echo "    Or run: pip install anthropic-tools"
    exit 1
fi
echo "✅ pi is installed"

# Check 4: Are pi models configured?
echo "Checking if ollama has models available..."
MODEL_COUNT=$(ollama list | tail -n +2 | wc -l | tr -d ' ')
if [ "$MODEL_COUNT" -eq "0" ]; then
    echo "❌ No ollama models are installed"
    echo "➡️  Please install a model, for example:"
    echo "    ollama pull phi"
    echo "    ollama pull llama2"
    exit 1
fi
echo "✅ ollama has $MODEL_COUNT model(s) available"

echo ""
echo "🎓 All checks passed! Starting Darija tutor..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Start pi with Darija prompt
pi "$DARIJA_PROMPT"