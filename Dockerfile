# Use the official RabbitMQ image
FROM rabbitmq:3.8.3-management

ENV RABBITMQ_DEFAULT_USER=${RABBITMQ_DEFAULT_USER} \
    RABBITMQ_DEFAULT_PASS=${RABBITMQ_DEFAULT_PASS}

# Expose the default RabbitMQ ports
EXPOSE ${PORT_5672} ${PORT_15672}

# This Dockerfile doesn't require further setup as the official RabbitMQ image
# already takes care of setting up the RabbitMQ server with provided credentials

# Remember to build the image using:
# docker build -t my-rabbitmq-image .

# Once the image is built, you can run it as a container
# docker run -d -p 5672:5672 -p 15672:15672 --name rabbitmq my-rabbitmq-image

