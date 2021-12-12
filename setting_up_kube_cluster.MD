### Setting up kube cluster on ubuntu 20.04 (Focal)

1. On all the servers, install docker.
`https://docs.docker.com/engine/install/ubuntu/`

2. On all the servers, install kubeadm, kubectl.
`https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/`

3. On all the servers, based on the following answer, change docker's cgroup driver and restart required services.
`https://stackoverflow.com/a/68722458/5245052`

4. On admin, based on the following answer, run the commands.
`https://stackoverflow.com/a/52196985/5245052`

5. Reboot both the system.

6. On admin, initialize kubeadm.
`sudo kubeadm init`

7. On admin, run the commands mentioned in the end of kubeadmin init. These commands will create the $HOME/.kube/config file.

8. On non-admin systems, run the join command outputted by kubeadm init.

9. On admin, run the following to get nodes.
`kubectl get nodes`

10. On admin, based on the following comment, run the commands.
`https://github.com/kubernetes/kubernetes/issues/48798#issuecomment-630397355`

