# Studypal Backend

## Tech Stack

- Django
- Postgres
- Docker (optional)

## Setup

1. Copy the `.env.example` file to `.env` and fill in the values if needed.
2. Install postgres and create a database or use docker to run `docker-compose up -d` to start a postgres container.
3. Install the dependencies using `pip install -r requirements.txt`.
4. Run the migrations using `python manage.py migrate`.
5. Run the server using `python manage.py runserver`.
6. Access swaggerui at `http://localhost:8000/swagger/`



