# The Database-Only Universe

This project bypasses traditional web servers entirely. The application runs exclusively within a PostgreSQL database terminal using plpython3u and the Gemini API.

## Requirements
* PostgreSQL
* plpython3u extension
* Gemini API Key

## Setup and Execution
1. Run schema.sql
2. Run gemini_logic.sql
3. Open psql and run:
SELECT explore_body('Europa', 'YOUR_GEMINI_API_KEY');
