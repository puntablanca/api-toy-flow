from fastapi import FastAPI

app = FastAPI()

@app.get("/public")
def public():
    return {"message": "hello"}

@app.get("/")
def protected():
    # Authentication will be added later
    return {"message": "hello protected"} 