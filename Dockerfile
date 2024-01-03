FROM postgres:latest

# Define arguments and then convert them to environment variables
ARG POSTGRES_PASSWORD
ARG POSTGRES_USER
ARG POSTGRES_DB

# Set environment variables
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_DB=${POSTGRES_DB}

# Expose the default PostgeSQL port
EXPOSE 5432

# Set starting container
CMD ["postgres"]