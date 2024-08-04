# Part 7. Prometheus и Grafana
* Проброс портов в ВМ

![VM](img/vm_ports.png "VM")

* статус Prometheus

![Prometheus](img/prom_status.png "Prometheus")

* Веб интерфейс Prometheus

![Prometheus](img/prom_active.png "Prometheus")

* Проверяем node exporter

![node](img/prom_active.png "Node")

* Запускаем стресс тест через stress -c 2 -i 1 -m 1 --vm-bytes 32M -t 10s
* Данные после

![Grafana](img/grafana_stress.png "Grafana")

* Запускаем скрипт из задания 2

![Grafana](img/grafana_script.png "Grafana")