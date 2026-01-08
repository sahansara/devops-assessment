# DevOps Assessment - Flask Application Deployment

## Overview
This repo contains my solution for deploying the Python Flask app. I focused on Linux setup, Docker, and Docker Compose. Due to the time limit, I completed Parts 1 & 2 fully and outlined the plans for Parts 3 & 4.

## Structure
- **Part-1/**: Linux Setup (User setup, Permissions, Service file)
- **Part-2/**: Docker (Dockerfile, Compose, Redis connection)
- **Part-3/**: Kubernetes (Planned/Pending)
- **Part-4/**: Monitoring (Planned/Pending)

## Completed Work
1. **Linux Setup:**
   - Created 'webapp' user (no login).
   - Configured /opt/webapp permissions.
   - Set up Systemd service and Nginx.
   - Added a cron monitoring script.

2. **Docker & Compose:**
   - Containerized the Flask app (Python 3.11-slim).
   - Added Healthchecks and non-root user.
   - Connected Redis via Docker Compose.
   - Verified data persistence with volumes.

## How to Run (Docker)
1. Go to: `cd Part-2/Config-Files/`
2. Run: `docker-compose up -d`
3. Test: `curl http://localhost:5000/` (Visits counter will increase).
