# choose the base image

FROM nginx

# label - add info about the creator of this image
LABEL MAINTAINER=snaaleeye@spartaglobal.com

# copy the index.html/dependencies from localhost to nginx container
COPY index.html /usr/share/nginx/html/

# Expose the required port 
EXPOSE 80

# Run the command to launch the server/container - create container at launch time 
# -g = globally available
CMD ["nginx", "-g", "daemon off;"]
