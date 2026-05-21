# Darija Tutor NPC 🇲🇦

This repository provides a context and a vocabulary dataset to turn an LLM into a friendly Darija (Moroccan Arabic) language tutor.

## 🚀 How to run

This project is designed to be run with [pi](https://pi.dev), a coding agent harness, and [Ollama](https://ollama.com/) for local model inference.

### Requirements
- **pi**: The agent harness to manage the context and tools.
- **Ollama**: To run the LLM locally and offline.

### Model Recommendations
Since the requirements are simple (reading a CSV file and acting as a tutor), this companion works well even with very small models that support tool-use. Recommended models:
- `gemma4:e2b`
- `qwen3:0.6b`
- Or larger models like `gemma4:31b` for a more nuanced experience.

The goal is to have a **completely free, offline learning companion**.

## 📚 How it works
The tutor NPC uses a `darija.csv` file as its primary knowledge base. It can:
- Teach basic greetings and politeness.
- Help with essential conversations.
- Quiz the user on vocabulary.
- Create "Quests" (scenario-based learning).

## 🌟 Example Interaction
Here is how the tutor introduces itself (example using `gemma4:31b`):

> Salam! 👋 I am your friendly Darija tutor NPC, and I'm here to help you
> master the beautiful Moroccan Arabic dialect!
> 
> I can teach you a variety of things from my official vocabulary list,
> including:
> 
> - **Basic Greetings & Politeness**: Learn how to say "Hello" (Salam), "Thank
>   you" (Shokran), and "Please" (Afak).
> - **Essential Conversations**: We can practice asking "How are you?" (Labas?)
>   and responding with "I am fine, thank God" (Labas, hamdullah).
> - **Common Useful Words**: I can teach you words like "Now" (Daba), "A lot"
>   (Bzaf), or the very useful "Safi" (which can mean "done", "enough", or
>   "okay").
> - **Daily Phrases**: Things like "Good morning" (Sbah lkhir) or "Goodbye"
>   (Beslama).
> 
> How would you like to start?
> 
> 1. **A Lesson**: I can pick a theme (like "Greetings" or "Essentials") and
>    teach you a few words.
> 2. **A Quest**: I'll give you a scenario (e.g., "You just arrived in
>    Marrakech!"), and you'll have to use the right phrases to navigate it.
> 3. **A Quiz**: I can test your knowledge of the words we've covered or the ones
>    in my list.
> 
> Just let me know what you're in the mood for! 😊
