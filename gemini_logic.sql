CREATE EXTENSION IF NOT EXISTS plpython3u;

CREATE OR REPLACE FUNCTION explore_body(body_name text, api_key text)
RETURNS text
LANGUAGE plpython3u
AS $$
  import urllib.request
  import json

  url = f"https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key={api_key}"
  prompt = f"You are a sci-fi terminal. Give me a 2-sentence mysterious lore about the celestial body: {body_name}"
  
  data = json.dumps({"contents": [{"parts": [{"text": prompt}]}]}).encode('utf-8')
  req = urllib.request.Request(url, data=data, headers={'Content-Type': 'application/json'})

  try:
      with urllib.request.urlopen(req) as response:
          result = json.loads(response.read().decode())
          return result['candidates'][0]['content']['parts'][0]['text']
  except Exception as e:
      return "Error: " + str(e)
$$;
