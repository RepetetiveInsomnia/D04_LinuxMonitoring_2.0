# Part 7. Prometheus и Grafana

* Запускаем стресс тест через stress -c 2 -i 1 -m 1 --vm-bytes 32M -t 10s
* Данные после

![Grafana](img/grafana_ready_stress.png "Grafana")

* Запускаем скрипт из задания 2

![Grafana](img/grafana_ready_script.png "Grafana")

* Подклюяаем еще одну ВМ в ту же сеть

![net](img/one_net.png "net")

* запуск iperf3

![iperf3](img/iperf.png "iperf3")

* проверка нагрузки сетевого интерфейса

![iperf3](img/grafana_iperf.png "iperf3")