# Part 7. Prometheus и Grafana

* изменения nginx.conf

![conf](img/my_node_nginx_conf.png "conf")

* изменения prometheus.conf

![conf](img/my_node_prom_conf.png "conf")

* доступ к моему моему node exporter

![access](img/my_node.png "access")

* получение prometheus моего node exporter

![prometheus](img/my_node_prom.png "prometheus")

* Запускаем стресс тест через stress -c 2 -i 1 -m 1 --vm-bytes 32M -t 10s
* Данные после

![Grafana](img/my_node_stress.png "Grafana")

* Запускаем скрипт из задания 2

![Grafana](img/my_node_script.png "Grafana")

