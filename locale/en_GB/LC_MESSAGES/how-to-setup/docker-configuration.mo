��          �            h     i  9   �  �   �  �   �  t   ^  m   �  o   A  o   �  �   !  �   �  �   i  `   �  (   ^  �   �  r  ;     �	  /   �	  �   �	  t   �
  J   �
  K   C  9   �  B   �  _     s   l  Z   �  :   ;     v  q   �             	              
                                                     **Параметры:** ``allow-net-access`` - доступ к сети (yes/no); ``check-image-hash`` - обязательность проверки hash-суммы контракта перед его запуском. Проверка ведется по hash-сумме из CreateContract транзакции (yes/no). ``check-registry-auth-on-startup`` - обязательность проверки авторизации к репозиториям при запуске ноды (yes/no); ``enable`` - включение обработки транзакций для docker-контрактов (yes/no); ``integration-tests-mode-enable`` - режим тестирования docker-контрактов (yes/no); ``memory`` - ограничение по памяти для контейнера контракта (в Мб); ``remote-registries`` - адреса удаленных репозиториев и доступов к ним; ``remove-container-after-execution`` - обязательность удаления контейнера после исполнения (yes/no); ``remove-containers-on-shutdown`` - обязательность удаления всех контейнеров контрактов при остановке ноды (yes/no); ``stop-container-after-execution`` - обязательность остановки контейнера после исполнения (yes/no); ``timeout`` - таймаут на выполнение контракта (в секундах); Запуск docker-контрактов Установка и исполнение docker-контрактов задается объектом ``docker-engine`` в конфигурационном файле ноды. Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-02-17 16:18+0300
PO-Revision-Date: 2019-03-24 10:53+0300
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
Plural-Forms: nplurals=2; plural=(n != 1);
Last-Translator: 
Language-Team: 
Language: en
X-Generator: Poedit 2.2.1
 **Parameters:** ''allow-net-access'' - network access (yes/no); ``check-image-hash`` - mandatory verification of contract hash-sum before starting it. Hash-sum is checked from CreateContract transaction (yes/No). ''check-registry-auth-on-startup'' - mandatory verification of authorization for registry upon node launch (yes/no); ''enable'' - enables transaction processing for Docker contracts (yes/no); ''integration-tests-mode-enable'' - Docker contracts testing mode (yes/no); ''memory'' - memory limit for contract container (in MB); ''remote-registries'' - addresses and access to remote registries; ''remove-container-after-execution'' - mandatory removal of container after execution (yes/no); ''remove-containers-on-shutdown'' - mandatory removal of all contract containers when the node is stopped (yes/no); ''stop-container-after-execution'' - mandatory to stop container after execution (yes/no); ''Timeout'' - timeout for contract execution (in seconds); Launching Docker Contracts Installation and execution of Docker contracts is set by object ''docker-engine'' in the node configuration file. 