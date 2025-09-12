# Medical Chatbot with LLMs, LangChain, Pinecone, Flask, and Gemini API

A complete end-to-end **Medical Chatbot** built using **Google Gemini API**, **LangChain**, **Pinecone**, and **Flask**. The chatbot retrieves relevant medical information from PDFs, processes queries using Retrieval-Augmented Generation (RAG), and responds in real-time via a clean chat interface.

---

## Features

* **Flask Web App** with interactive chat UI.
* **Gemini API** for natural language responses.
* **Pinecone** for vector database and semantic search.
* **LangChain** for chaining prompts and retrieval.
* **PDF ingestion** and automatic embedding storage.
* **Docker-ready** for deployment.
* **AWS CI/CD support** using GitHub Actions.

---

## Directory Structure

```
└── ahamed-safnas-medical-chatbot/
    ├── README.md
    ├── app.py
    ├── LICENSE
    ├── notes.txt
    ├── requirements.txt
    ├── setup.py
    ├── store_index.py
    ├── template.sh
    ├── src/
    │   ├── __init__.py
    │   ├── helper.py
    │   └── prompt.py
    ├── static/
    │   └── style.css
    └── templates/
        └── chat.html
```

---

## Setup Instructions

### **Step 1: Clone the Repository**

```bash
git clone https://github.com/Ahamed-Safnas/medical-chatbot-gemini.git
cd medical-chatbot-gemini
```

### **Step 2: Create a Virtual Environment**

Using Conda:

```bash
conda create -n medibot python=3.10 -y
conda activate medibot
```

Or using `venv`:

```bash
python -m venv venv
source venv/bin/activate   # On Linux/Mac
venv\Scripts\activate      # On Windows
```

### **Step 3: Install Dependencies**

```bash
pip install -r requirements.txt
```

### **Step 4: Add Environment Variables**

Create a `.env` file in the project root:

```ini
PINECONE_API_KEY = "your_pinecone_api_key"
GEMINI_API_KEY = "your_gemini_api_key"
```

> **Note:**
>
> * Get your **Gemini API key** from [Google AI Studio](https://aistudio.google.com/).
> * Get your **Pinecone API key** from [Pinecone](https://www.pinecone.io/).

### **Step 5: Prepare the Data and Store Embeddings**

Make sure your PDFs are placed in a folder named `data/`.

Run the following command to generate embeddings and store them in Pinecone:

```bash
python store_index.py
```

### **Step 6: Run the Flask App**

```bash
python app.py
```

Open your browser and visit:

```
http://localhost:8080
```

---

## Usage

1. Open the chatbot interface.
2. Ask medical-related questions.
3. The bot will retrieve relevant context from the Pinecone vector database.
4. Gemini API will generate a natural language response.

---

## Tech Stack

* **Backend:** Python, Flask
* **LLM:** Google Gemini API (`gemini-2.5-flash`)
* **Vector Database:** Pinecone
* **Data Processing:** LangChain, HuggingFace Transformers
* **Frontend:** HTML, CSS, Bootstrap, jQuery

---

## Example Query

**User:** "What are the symptoms of diabetes?"

**Bot Response:**
"Common symptoms of diabetes include frequent urination, increased thirst, and unexplained weight loss. It can also cause fatigue and blurred vision."

---

## License

This project is licensed under the [Apache License 2.0](LICENSE).

---

## Author

**Ahamed Safnas**
Email: [safnas2042ahamed@gmail.com](mailto:safnas2042ahamed@gmail.com)
