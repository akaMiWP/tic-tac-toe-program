# Use the specified image as the base
FROM ackeeblockchain/school-of-solana-arm:latest

# Set the working directory inside the container
WORKDIR /workdir

# Remove existing Node.js and npm packages and clean up
RUN apt-get remove -y nodejs npm libnode-dev && apt-get autoremove -y

# Update package lists
RUN apt-get update

# Add the Node.js 18.x repository and install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Specify the default command for the container
CMD ["/bin/bash"]