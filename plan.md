# Instructions: Deploying a FastAPI API on GCP with CI/CD and Firebase Authentication using Secret Manager

This guide provides instructions for deploying a basic FastAPI API on Google Cloud Platform (GCP) using Cloud Run for hosting, Firebase for authentication, Docker for containerization, Artifact Registry for image storage, GitHub for version control, and Google Cloud Secret Manager for securely managing Firebase credentials.

## Phase 1: Project Setup and CI/CD Configuration

1.  **Generate Basic FastAPI Application Files:**
    * Create `main.py` (FastAPI application).
    * Create `requirements.txt` (Python dependencies).

2.  **Build and Run Locally with Docker:**
    * Create `.env` file for environment variables.
    * Create `Dockerfile` for the FastAPI app.
    * Build the Docker image using environment variables.
    * Run the Docker container and test endpoints locally.

3.  **Configure Git and GitHub:**
    * Initialize local Git repository.
    * Create GitHub repository.
    * Link local repository to GitHub and push.

4.  **Generate Cloud Build Configuration:**
    * Create `cloudbuild.yaml` (Cloud Build pipeline definition).

5.  **Configure GCP and Cloud Build:**
    * Create GCP Project (if needed).
    * Enable Cloud Build API.
    * Connect GitHub repository to Cloud Build.
    * Create Cloud Build trigger.

## Phase 2: Firebase Authentication and Secret Manager Setup

6.  **Configure Firebase:**
    * Create Firebase Project (if needed).
    * Enable Firebase Authentication.
    * Generate Firebase Admin SDK private key.

7.  **Configure Secret Manager:**
    * Create Secret in Secret Manager.
    * Grant Cloud Build service account access to the secret.
    * Grant Cloud Run service account access to the secret.

8.  **Update FastAPI Code for Firebase Authentication:**
    * Modify `main.py` to initialize Firebase Admin SDK and implement ID token verification.

9.  **Update Dockerfile (if needed):**
    * Ensure Dockerfile supports Firebase and secret management.

## Phase 3: Deployment and Testing

10.  **Trigger Cloud Build:**
    * Commit and push code to GitHub to trigger the CI/CD pipeline.

11. **Monitor Cloud Build:**
    * Observe the Cloud Build process in the GCP Console.

12. **Get Cloud Run URL:**
    * Retrieve the deployed Cloud Run service URL.

13. **Test Public Endpoint:**
    * Access the `/public` endpoint to verify basic functionality.

14. **Test Protected Endpoint:**
    * Obtain a Firebase ID token.
    * Send a request to the `/` endpoint with the ID token in the `Authorization` header to test authentication.