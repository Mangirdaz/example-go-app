{
                "kind": "Template",
                "apiVersion": "v1",
                "metadata": {
                                "name": "my-go-test-app",
                                "creationTimestamp": null,
                                "annotations": {
                                                "description": "prmotion test app",
                                                "iconClass": "icon-go",
                                                "tags": "go,golang"
                                }
                },
                "objects": [{
                                "kind": "Route",
                                "apiVersion": "v1",
                                "metadata": {
                                                "name": "gotest",
                                                "labels": {
                                                                "app": "gotest"
                                                }
                                },
                                "spec": {
                                                "to": {
                                                                "kind": "Service",
                                                                "name": "gotest"
                                                },
                                                "port": {
                                                                "targetPort": "8080-tcp"
                                                }
                                }
                }, {
                                "kind": "DeploymentConfig",
                                "apiVersion": "v1",
                                "metadata": {
                                                "name": "gotest",
                                                "creationTimestamp": null
                                },
                                "spec": {
                                                "strategy": {
                                                                "type": "Rolling",
                                                                "rollingParams": {
                                                                                "updatePeriodSeconds": 1,
                                                                                "intervalSeconds": 1,
                                                                                "timeoutSeconds": 120
                                                                },
                                                                "resources": {}
                                                },
                                                "triggers": [{
                                                                "type": "ImageChange",
                                                                "imageChangeParams": {
                                                                                "automatic": true,
                                                                                "containerNames": [
                                                                                                "test-app"
                                                                                ],
                                                                                "from": {
                                                                                                "kind": "ImageStreamTag",
                                                                                                "name": "gotest:latest"
                                                                                }
                                                                }
                                                }, {
                                                                "type": "ConfigChange"
                                                }],
                                                "replicas": 5,
                                                "selector": {
                                                                "name": "gotest"
                                                },
                                                "template": {
                                                                "metadata": {
                                                                                "creationTimestamp": null,
                                                                                "labels": {
                                                                                                "name": "gotest"
                                                                                }
                                                                },
                                                                "spec": {
                                                                                "containers": [{
                                                                                                "name": "gotest",
                                                                                                "image": "mangirdas/test-go-app:v0.2",
                                                                                                "ports": [{
                                                                                                                "containerPort": 8080,
                                                                                                                "protocol": "TCP"
                                                                                                }],
                                                                                                "resources": {},
                                                                                                "terminationMessagePath": "/dev/termination-log",
                                                                                                "imagePullPolicy": "IfNotPresent",
                                                                                                "securityContext": {
                                                                                                                "capabilities": {},
                                                                                                                "privileged": false
                                                                                                }
                                                                                }],
                                                                                "restartPolicy": "Always",
                                                                                "dnsPolicy": "ClusterFirst"
                                                                }
                                                }
                                },
                                "status": {}
                }, {
                                "kind": "Service",
                                "apiVersion": "v1",
                                "metadata": {
                                                "name": "gotest",
                                                "creationTimestamp": null,
                                                "labels": {
                                                                "app": "gotest",
                                                                "deploymentconfig": "gotest"
                                                }
                                },
                                "spec": {
                                                "ports": [{
                                                                "name": "8080-tcp",
                                                                "protocol": "TCP",
                                                                "port": 8080,
                                                                "targetPort": 8080
                                                }],
                                                "selector": {
                                                                "app": "gotest",
                                                                "deploymentconfig": "gotest"
                                                }
                                },
                                "status": {
                                                "loadBalancer": {}
                                }
                }, {
                                "kind": "ImageStream",
                                "apiVersion": "v1",
                                "metadata": {
                                                "name": "gotest",
                                                "creationTimestamp": null,
                                                "annotations": {
                                                                "openshift.io/image.insecureRepository": "true"
                                                }
                                },
                                "spec": {
                                                "tags": [{
                                                                "name": "v0.1",
                                                                "annotations": {
                                                                                "description": "Provides a Jenkins server",
                                                                                "iconClass": "icon-jenkins",
                                                                                "tags": "jenkins"
                                                                },
                                                                "from": {
                                                                                "kind": "DockerImage",
                                                                                "name": "/mangirdas/test-go-app:v0.2"
                                                                },
                                                                "importPolicy": {
                                                                                "insecure": true
                                                                }
                                                }, {
                                                                "name": "latest",
                                                                "from": {
                                                                                "kind": "ImageStreamTag",
                                                                                "name": "v0.1"
                                                                },
                                                                "importPolicy": {
                                                                                "insecure": true
                                                                }
                                                }]
                                }
                }],
                "parameters": [{
                                "name": "APP_NAME",
                                "description": "App Name",
                                "generate": "expression",
                                "from": "gotest-[a-z]{4}"
                }],
                "labels": {
                                "template": "python-template-stibuild"
                }
}
