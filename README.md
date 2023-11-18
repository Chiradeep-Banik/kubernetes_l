# Kubernetes

## The main components of kubernetes are
- **Pods**
    - They have a single main container running inside them and if needed any other helper node.
    - But mainly 1 Pod = 1 container
- **Services**
    - They manage the network side as far as I understand till now.
    - They assign satic IP addresses to the pods in order for us to work with them seemlessly.

## There are two types of Nodes in the kubernetes
- **Worker Nodes**
    - They do the main working as the name suggests.
    - They have **3** services installed on each individual node:
        - **Container Runtime**
            - Ex- Docker
        - **Kublet**
            - They provide the abstraction for kubernetes to interact with the container runtime.
        - **Kube Proxy**
            - This works as a load balancer as far as I can tell.....
    - There are many worker nodes in a kubernetes cluster.
    - The nodes are replecated in order to avoid downtime.
- **Master Nodes**
    - It controles the worker nodes.
    - There can be multiple master nodes with are node balanced.
    - They have **4** services installed on each master node:
        - **API server**
            - It works as a cluster gateway for the whole cluster.
            - It authenticates requests and then forwards them to other processes to do things like make a new pod or something.
            - It allows the user interaction when ever we need to know something about the cluster.
        - **Scheduler**
            - It schedules the creation of new pod in any node.
            - It does so in a intelligent way as well like a node with more free resources will get the new pod in place of a more busy node.
            - It askes the kublet service in the worker node to create a new pod.
        - **Contoller Manager**
            - It monitors the pods for any change in thier states like if a pod dies.
            - If a pod dies then the Controller Manager will ask the scheduler to schedule a new pod.
        - **etcd**
            - It is a key-value store for the cluster.
            - It stores the data regarding the nodes and the pods.          
- **Namespace**
    - It is use to seperate deployments within the same cluster.
    - It makes the deployments assigned to a namespace completly invisible from any other cluster.
    - configMaps and secrets cannot be shared among namespaces.
    - Only services can be shared among namespaces.
    - It is used to allow various namespaces to access the same resources within a cluster.
    - It also makes the cluster set-up much more modular

