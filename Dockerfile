FROM python:3.9.6

WORKDIR /app

COPY requirements.txt .
RUN python -m venv venv
RUN . venv/bin/activate
RUN pip install -r requirements.txt

COPY . .

CMD ["bokeh", "serve", "--show", "app.py"]