# Usa un'immagine di Python ufficiale come base
FROM python

# Imposta il work directory all'interno del contenitore
WORKDIR /app

# Copia i file dell'applicazione nell'immagine del contenitore
COPY . .

# Installa le dipendenze
RUN pip install --no-cache-dir -r requirements.txt

# Comando per avviare il server Flask quando il contenitore viene eseguito
CMD ["python", "app.py"]
# Esponi la porta 3000 per il server Flask
EXPOSE 3000
