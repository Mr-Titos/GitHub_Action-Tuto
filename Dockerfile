# Utilise l'image Node.js 14 (aligné avec votre version locale)
FROM node:14-alpine

# Définit le répertoire de travail
WORKDIR /app

# Copie les fichiers package*.json
COPY package*.json ./

# Installe les dépendances
RUN npm ci --only=production

# Copie le code source
COPY src/ ./src/

# Expose le port 3000
EXPOSE 3000

# Définit l'utilisateur non-root pour la sécurité
USER node

# Commande de démarrage
CMD ["npm", "start"]
