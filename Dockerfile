FROM node:14-alpine

# Create app directory and set it as default
WORKDIR /app

# Copy app file
COPY app.js .

#Expose port listening on
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
