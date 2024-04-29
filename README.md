docker build -t website . --no-cache

docker run -p 0.0.0.0:3000:3000 --name website website

Go to http://localhost:3000
