# Deployment Instructions

These are the basic steps to set up, build, and run the FastAPI toy API application using Docker and environment variables.

---

## 1. Environment Setup

- Create and activate a Python virtual environment:
  ```bash
  python -m venv venv
  source venv/Scripts/activate  # On Windows (Git Bash)
  # or
  . venv/Scripts/activate
  ```
- Install dependencies:
  ```bash
  pip install -r requirements.txt
  ```

## 2. FastAPI Application

- The main app is in `main.py` with two endpoints:
  - `/public` (unprotected)
  - `/` (protected, authentication to be added later)

## 3. Git Setup

- Initialize git, add files, and make your first commit:
  ```bash
  git init
  git add .
  git commit -m "Initial commit"
  ```
- Create a GitHub repository and push your code:
  ```bash
  git remote add origin https://github.com/<your-username>/<repo-name>.git
  git branch -M main
  git push -u origin main
  ```

## 4. Environment Variables

- Create a `.env` file in your project root:
  ```env
  PROJECT_ID=success-tracker-dev
  REGION=us-central1
  SERVICE_NAME=api-toy-flow
  ```
- Add `.env` to `.gitignore` to avoid committing it.

## 5. Docker Build and Run

- Build the Docker image (load env variables first):
  ```bash
  set -a
  source .env
  set +a
  docker build \
    --build-arg PROJECT_ID=$PROJECT_ID \
    --build-arg REGION=$REGION \
    --build-arg SERVICE_NAME=$SERVICE_NAME \
    -t $SERVICE_NAME:latest .
  ```
- Run the Docker container:
  ```bash
  docker run -p 8000:8000 --env-file .env $SERVICE_NAME:latest
  ```

## 6. Test the API

- Visit [http://127.0.0.1:8000/public](http://127.0.0.1:8000/public) for the public endpoint.
- Visit [http://127.0.0.1:8000/](http://127.0.0.1:8000/) for the protected endpoint.
- Visit [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs) for the interactive API docs.

---

You are now ready to proceed with further deployment steps or enhancements! 