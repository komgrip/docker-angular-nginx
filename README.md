# docker-angular-nginx

### How to run 

* Clone the project.

* ```$ docker-compose up -d --build site``` 

---

### Maintenance Mode
* go to file : ```nginx/default.conf``` 
* edit : ```set $maintenance 1; // 0: close, 1: open```
* ```$ docker exec --container name-- nginx -s reload``` 