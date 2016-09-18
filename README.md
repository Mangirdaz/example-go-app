# Go Test app to    
App to show different deployment types using k8s or Openshift

### Build
    CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo .
### Docker build
    docker build -t mangirdas/test-go-app:v0.3 .
    
### pre-build images
    You can find prebuild images:
    mangirdas/test-go-app:v0.1
    mangirdas/test-go-app:v0.2
    mangirdas/test-go-app:v0.3
    
### deployment example using template:
    template.json 
 

