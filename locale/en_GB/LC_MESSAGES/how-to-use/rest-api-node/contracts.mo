��          �      l      �     �     �       	   :     D  #   S     w     �  !   �     �  L   �  T   -  \   �  �   �  D   �  �   �  �   �  �   }  f   8     �  r       �	     �	     �	  	   �	     �	  #   �	     	
     $
  !   @
     b
  L   r
  T   �
  \     b   q     �  P   �  X   A  S   �  2   �  V   !                                  
                                         	                       **Ответ метода** **Ответ метода:** **Пример запроса** Contracts GET /contracts GET /contracts/executed-tx-for/{id} GET /contracts/status/{id} GET /contracts/{contractId} GET /contracts/{contractId}/{key} POST /contracts http://localhost:6862/contracts/DkUTuWehJXvZMj44GT81KbhXhvsJnyPDCi4eW9BbrH3s http://localhost:6862/contracts/DkUTuWehJXvZMj44GT81KbhXhvsJnyPDCi4eW9BbrH3s/updated http://localhost:6862/contracts/executed-tx-for/2sqPS2VAKmK77FoNakw1VtDTCbDSa7nqh5wTXvJeYGo2 Возвращает значение исполнения смарт-контракта по его идентификатору (id транзакции создания контракта) и ключу {key}. Возвращает информацию по контрактам. Возвращает некоторые параметры по одному или нескольким заданным в запросе идентификаторам контрактов. Возвращает результат исполнения смарт-контракта по его идентификатору (id транзакции создания контракта). Возвращает результат исполнения смарт-контракта по идентификатору транзакции исполнения контракта. Возвращает статус исполняемой транзакции по контракту. Правила формирования запросов к ноде приведены в разделе :ref:`rest-api-node`. Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-06-11 15:30+0300
PO-Revision-Date: 2019-06-11 15:31+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
X-Generator: Poedit 2.2.1
 **Method Response** **Method Response:** **Sample query** Contracts GET /contracts GET /contracts/executed-tx-for/{id} GET /contracts/status/{id} GET /contracts/{contractId} GET /contracts/{contractId}/{key} POST /contracts http://localhost:6862/contracts/DkUTuWehJXvZMj44GT81KbhXhvsJnyPDCi4eW9BbrH3s http://localhost:6862/contracts/DkUTuWehJXvZMj44GT81KbhXhvsJnyPDCi4eW9BbrH3s/updated http://localhost:6862/contracts/executed-tx-for/2sqPS2VAKmK77FoNakw1VtDTCbDSa7nqh5wTXvJeYGo2 Returns smart contract execution value by its ID (contract creation transaction ID) and key {key}. Returns the contracts info. Returns some parameters for the one or more contract IDs specified in the query. Returns result of smart contract execution by its ID (contract creation transaction ID). Returns result of smart contract execution by ID of contract execution transaction. Returns the contract execution transaction status. The rules for generating queries to the node are given in module :ref:`rest-api-node`. 