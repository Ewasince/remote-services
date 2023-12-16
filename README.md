# Как запустить

1. Запустстить 1й скрипт из папки start_project
2. Зарегать пользователя
3. Запустить второй скрипт из папки start_project
4. В интерактивном режиме вбить данные для ранера
   1. Вписать url
   2. 
   2. Создать реп, зайти в настройки CI/CD, взять оттуда токен

Полезнаые команды:
```bash

docker exec -it gitlab-runner bash
docker exec gitlab sh -c "echo '172.31.0.2 gitlab-service' >> /etc/hosts"
```