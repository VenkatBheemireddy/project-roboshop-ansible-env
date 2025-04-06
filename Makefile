dev-apply:
	git pull
	ansible-playbook -i $(app_name)-dev.azdevopsv82.online, -e ansible_user=venkat -e ansible_password=Devops123456 -e ENV=dev -e app_name=$(app_name) roboshop.yml


test-apply:
	git pull
	ansible-playbook -i $(app_name)-test.azdevopsv82.online, -e ansible_user=venkat -e ansible_password=Devops123456 -e ENV=test -e app_name=$(app_name) roboshop.yml


prod-apply:
	git pull
	ansible-playbook -i $(app_name)-prod.azdevopsv82.online, -e ansible_user=venkat -e ansible_password=Devops123456 -e ENV=prod -e app_name=$(app_name) roboshop.yml




