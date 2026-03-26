FROM python:3.12-slim

WORKDIR /app

ENV PYTHONUNBUFFERED=1

# Repo may keep banner at project root (header.png) or under assets/ — image ends up in /app/assets for the bot.
COPY requirements.txt bot.py ./
RUN mkdir -p assets data
COPY header.png ./assets/header.png
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "bot.py"]
