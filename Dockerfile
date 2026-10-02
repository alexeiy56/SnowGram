# Probe image. Lives only on the render-probe branch and exists to answer one
# question: can Render clone a repository and run a Docker build for this account?
# The real image is the root Dockerfile in the private deployment repository.
FROM node:22-slim
WORKDIR /app
COPY probe.txt /app/probe.txt
CMD ["node", "-e", "console.log('snowgram probe ok:', require('fs').readFileSync('/app/probe.txt','utf8').trim())"]
