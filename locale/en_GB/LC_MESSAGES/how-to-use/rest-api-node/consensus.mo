��          �               �     �  	   �     �  $   �     �  #     *   ;  "   f  ,   �  !   �  &   �     �  <    ~   T  �   �  �   ]  �   �  Q   u  P   �  �     m   �  j        y  W  �     Q
  	   f
     p
  $   �
     �
  #   �
  *   �
  "     ,   5  !   b  &   �     �  �   �  O   p  H   �  6   	  F   @  -   �  '   �  @   �  4     8   S  V   �   **Ответ метода:** Consensus GET /consensus/algo GET /consensus/bannedMiners/{height} GET /consensus/basetarget GET /consensus/basetarget/{blockId} GET /consensus/generatingbalance/{address} GET /consensus/generationsignature GET /consensus/generationsignature/{blockId} GET /consensus/miners/{timestamp} GET /consensus/minersAtHeight/{height} GET /consensus/settings Возвращает генерирующий баланс доступный для майниновой ноды {address} - минимальный баланс участинка, включая средства переденные участнику за лизинг, за последние 1000 блоков. Возвращает значение `базовой сложности`_ (basetarget) создания блока {blockId}. Возвращает значение `базовой сложности`_ (basetarget) создания последнего блока. Возвращает значение `генерирующей подписи`_ (generation signature) последнего блока. Возвращает значение `генерирующей подписи`_ (generation signature) создания блока {blockId}. Возвращает очередь майнеров на время {timestamp}. Возвращает очередь майнеров на высоте {height}. Возвращает параметры консенсуса, заданные в конфигурационном файле ноды. Возвращает список заблокированных майнеров на высоте {height}. Возвращает тип алгоритма консенсуса, используемый в сети. Правила формирования запросов к ноде приведены в разделе :ref:`rest-api-node`. Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-02-17 16:18+0300
PO-Revision-Date: 2019-05-06 14:07+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 **Method Response:** Consensus GET /consensus/algo GET /consensus/bannedMiners/{height} GET /consensus/basetarget GET /consensus/basetarget/{blockId} GET /consensus/generatingbalance/{address} GET /consensus/generationsignature GET /consensus/generationsignature/{blockId} GET /consensus/miners/{timestamp} GET /consensus/minersAtHeight/{height} GET /consensus/settings Returns generating balance available for minning node {address} - minimum participant balance including assets transferred to participant for leasing, for last 1000 blocks. Returns value of 'base complexity' _ (basetarget) of creating block {blockId} . Returns value of 'base complexity'_ (basetarget) of creating last block. Returns value of 'generation signature' of last block. Returns value of 'generation signature' of generating block {blockId}. Returns miner queue at timestamp {timestamp}. Returns miner queue at height {height}. Returns consensus settings specified in node configuration file. Returns a list of blocked miners at height {height}. Returns type of consensus algorithm used on the network. The rules for generating queries to the node are given in module :ref:`rest-api-node`. 