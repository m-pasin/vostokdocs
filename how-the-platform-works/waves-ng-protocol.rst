Протокол Waves-NG
========================================
Описание протокола работы блокчейна Vostok, обеспечивающего преимущество производительности относительно других блокчейнов. 

Термины
--------

* Блок — зафиксированный в блокчейне набор транзакций, подписанный майнером и содержащий ссылку на подпись предыдущего блока. Ограничен 1Мб или 6000 транзакций.
* Раунд — период времени между выпуском ключевых блоков. Плавающее значение, регулируется алгоритмом консесуса в зависимости от нагрузки на сеть, в среднем 40 секунд.
* Доказательство доли владения — получение права майнинга в консенсусе PoS.
* Нода — узел сети с запущенным приложением блокчейна Vostok.
* Майнер — нода, адрес которой обладает достаточным для майнинга балансом и разрешением «Майнинг».
* Ключевой блок — не содержит транзакций, только служебную информацию, такую как:

    - Публичный ключ майнера — для проверки подписи микроблоков.
    - Сумму комиссии майнера за предыдущий блок.
    - Подпись майнера.
    - Ссылку на предыдущий ключевой блок.
    
* Liquid Block — служебный термин, для описания состояния блока до выпуска следующего ключевого блока, т.е. завершения его майнинга.
* Микроблоки — служебный термин, наборы транзакций, применяемых к состоянию блокчейна раз в 5 секунд. Ограничен 500 транзакциями. Каждый микроблок подпсан приватным ключом майнера.

Описание протокола
------------------

Waves-NG — разработан Waves Platform на основе `Bitcoin-NG <https://www.usenix.org/system/files/conference/nsdi16/nsdi16-paper-eyal.pdf>`_ для повышения пропускной способности блокчейна Waves, на архитектуре которого реализован Vostok. Идея протокола — в каждом раунде майнинга создавать не 1 большой блок, а непрерывно создавать микроблоки. Маленькие блоки быстрее пересылать и проверять.

Раунды майнинга начинаются с выпуска ключевого блока. Момент появления каждого ключевого блока и адрес указанного в нём майнера определяются консенсусом, подробнее :ref:`Консенсус <consensus>`. Ключевой блок, не содержащий транзакций, только доказательство — формируется быстро. Далее, до появления следующего блока, раз в 5 секунд формируются микроблоки с транзакциями без доказательства доли, что также повышает скорость обработки. Каждый блок микроблок ссылается на предыдущий. Ключевой блок добавляется в блокчейн, как только следующий майнер выпустит свой ключевой блок, со ссылкой на него.

Такой подход снижает время подтверждения транзакции по сравнению с другими блокчейнами.

1. Процесс создания Liquid Block
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. Консенсусом определяется майнящий адрес.
#. Майнер создает и рассылает по сети ключевой блок.
#. Каждые 5 секунд майнер создает и рассылает по сети микроблок, который содержит транзакции. Он должен ссылаться на предыдущий микро- или ключевой блок.
#. Процесс продолжается до тех пор, пока в сети не появится новый валидный ключевой блок. 

2. Механизм вознаграждения майнеров в Waves-NG
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

В протоколе предусмотрена финансовая мотивация соблюдения правил для участников. Комиссия от транзакций в блоке распределяется в пропорции 40% майнеру создавшему блок и 60% майнеру следующего блока. Транзакция по начислению комиссии происходит через 100 блоков для обеспечения доверительного интервала проверок.

Схема разделения комиссий

.. image:: img/miner_reward.jpg
    :scale: 80%
    :align: center

3. Разрешение конфликтов
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Если майнер продолжает цепочку, создавая два микроблока с одним и тем же родителем, он наказывается отменой дохода от комиссий; тот, кто обнаруживает мошенничество, получает награду майнера за блок. Блокчейн — распределенная система и каждая нода хранит копию состояния всей сети. При появлении очередного микроблока, нода применяет полученные изменения к своей копии состояния сети и сверяет с остальными узлами сети. В этот момент происходит обнаружение несогласованности транзакций.

