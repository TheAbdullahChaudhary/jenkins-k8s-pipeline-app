# FROM python:3
# WORKDIR /app
# COPY . /app
# RUN pip install -r requirements.txt
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]



FROM python:3
RUN pip install django==3.2
WORKDIR /app
COPY . .
RUN python manage.py migrate
EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]




# FROM python:3
# RUN pip install django==3.2
# COPY . .
# RUN python manage.py migrate
# CMD ["python","manage.py","runserver","0.0.0.0:8000"]




# FROM google/cloud-sdk:418.0.0-alpine

# RUN apk add --no-cache curl && \
#     curl -LO https://dl.k8s.io/release/v1.26.0/bin/linux/amd64/kubectl && \
#     install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# RUN gcloud components install gke-gcloud-auth-plugin && \
#     gke-gcloud-auth-plugin --version

# ENV USE_GKE_GCLOUD_AUTH_PLUGIN=True
# RUN gcloud components update

# RUN rm -rf kubectl
# ENTRYPOINT ["/bin/bash", "-c"]
