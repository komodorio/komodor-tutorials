## How to produce node memory pressure using the memory consumer

1. Taint the node to make sure any other node are not going to be imapcted
   ```
   kubectl taint nodes (node-name) node_under_perssure=true:NoSchedule
   ```
2. Modify the deployment configuration to force it run on the node
   ```
         nodeName: (node-name)
   ```

3. Configure the `vm` and `vm-bytes` value to consume all the memory of the node.
   This example is consumes 500M.
   ```
        - --vm
        - "5"
        - --vm-bytes
        - 100M
    ```
   
