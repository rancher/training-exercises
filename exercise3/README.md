## Kubernetes Deployments

### Usage


1. ) Configure a Rancher environment to use Kubernetes. Wait for the system stack to be active.
1. ) Configure `kubectl` for your workstation.
1. ) Edit `nginx-deployment.yml` so that it has the correct image.
1. ) Create `kubectl create -f ./` from within the exercise3 directory.
1. ) Verify deployment:

	```
	kubectl get deployments
	...
	kubectl get rcs
	...
	kubectl get pods
	...
	kubectl get ingress
	...
	```

1. ) Open url return in response to `kubectl get ingress` to verify your service is running and exposed.
