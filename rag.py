from ollama import chat
from marqo import Client
import time  

print("Welcome to the Stardew Valley Assistant test!")
print("This script will show you how the mod would respond to your question.")
print("Enter your question about Stardew Valley (e.g., 'What crops are best for Spring?'):")
question = input("> ")

def get_ollama_response(question, context=""):
    messages = [
        {"role": "system", "content": """
        ALL RESPONSES SHOULD ONLY PERTAIN TO THE STARDEW VALLEY VIDEO GAME, NOT REAL LIFE.
        You are a Stardew Valley game assistant. Provide answers that are strictly relevant to the question asked.
        You use the information text to answer the user better.
        Avoid unnecessary context or elaboration. Focus solely on the question and provide a direct answer. """},
        {"role": "user", "content": f"Given this information: {context} please answer the following question: {question}"},
    ]
    response = chat("gemma3:4b", messages=messages)
    return response['message']['content']

def get_marqo_context(question):
    index_name = 'stardew-valley-db' 
    # Set up Marqo Client
    mq = Client(url='http://localhost:8882')
    
    # Perform search on Marqo index
    results = mq.index(index_name).search(
        q=question,
        limit=1
    )

    # Prepare context
    context = ''
    # Reverse the hits to put the most relevant source at the end
    for i, hit in enumerate(reversed(results['hits'])):
        title = hit['Title']
        text = hit['Description']
        context += f"Source {i + 1}) {title} || {text} \n"
    return context

print("\nProcessing your question...\n")

# Final LLM call with context
start_time = time.time()  # Start timing
context = get_marqo_context(question)
marqo_time = time.time() - start_time  # Time taken for Marqo search

start_time = time.time()  # Start timing for LLM
final_response = get_ollama_response(question, context)
llm_time = time.time() - start_time  # Time taken for LLM response

total_time = marqo_time + llm_time  # Total time taken

print(f"Marqo search time: {marqo_time:.2f} seconds")
print(f"LLM response time: {llm_time:.2f} seconds")
print(f"Total processing time: {total_time:.2f} seconds")
print("\nThis is what you would get in the game: \n", final_response) 