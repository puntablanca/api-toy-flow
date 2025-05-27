from fastapi import FastAPI
from os import environ as env    

app = FastAPI()

@app.get("/public")
def public():
    return {"message": "hello Jurguen"}

@app.get("/")
def protected():
    # Authentication will be added later
    return {"message": f"hello this is = {env.get('MY_VARIABLE', 'not set')} environment"} 