**Ansible Roboshop Project with multi environment
(project-roboshop-ansible-env)**

**Databases:** mongodb, mysql, rabbitmq, redis

**Servers:** catalogue, user, cart, shipping, payment

**UI (ProxyServer):** frontend


**Project Running Steps:**
1. Create VMs for all the above Databases, Servers and UI with the same name.
2. Make sure all the VMs are up and running.
3. Create dns records using by using their respective private-ip-addresses.
4. Make sure the dns record name is same as their VM name.
5. Then run the Makefile for each VM component from the workstation VM.
    * make dev-apply app_name=mongodb
    * make dev-apply app_name=mysql
    * make dev-apply app_name=rabbitmq
    * make dev-apply app_name=redis
    * make dev-apply app_name=catalogue
    * make dev-apply app_name=user
    * make dev-apply app_name=cart
    * make dev-apply app_name=shipping
    * make dev-apply app_name=payment
    * make dev-apply app_name=frontend
6. After completion of the above steps, open the browser and run (http://<public-ip-address>).
7. You will get the roboshop home page.
   NOTE: If you don't see categories on the project home page then re-run "catalogue" component (i.e., make app_name=mongodb).



