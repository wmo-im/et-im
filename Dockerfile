# Use the official Asciidoctor image as a base
FROM asciidoctor/docker-asciidoctor:latest
# ====================================================================
# 1. Install Dependencies for PlantUML and Graphviz (Mandatory for asciidoctor-diagram)
# The base image includes Java, but we need Graphviz for complex diagrams.
# This step ensures PlantUML diagrams (like sequence, component) render correctly.
# ====================================================================
RUN apk add --no-cache graphviz

# ====================================================================
# 2. Install Pandoc (for DocX conversion)
# ====================================================================
RUN apk add --no-cache pandoc

# ====================================================================
# 3. Install asciidoc-link-check (Node.js based tool)
# We use a multi-stage build approach to keep the final image size smaller
# by discarding unnecessary build dependencies like npm cache.
# ====================================================================
# Install build dependencies for Node.js
RUN apk add --no-cache nodejs npm

# Install asciidoc-link-check globally
RUN npm install -g asciidoc-link-check && \
    # Cleanup: Remove cache and temporary files to reduce image size
    npm cache clean --force && \
    rm -rf /tmp/* /var/cache/apk/*

# Set the working directory inside the container
WORKDIR /documents
