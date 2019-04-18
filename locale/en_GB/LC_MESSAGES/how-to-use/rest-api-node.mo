��          �      �       0  :   1     l    ~  �   �  ,   Q  �   ~     _  h   |  F   �  2   ,  Z   _    �  r  �  #   A	     e	  -  s	  �   �
     3  �   J     �  F   	  3   P     �  4   �  �   �     	   
                                                  **Спецификация интерфейса ноды** REST API ноды Блокчейн-платформа Восток предоставляет возможность взаимодействия с блокчейном, как в части получения данных (транзакции, блоки, балансы и др.), так и в части записи инфомрации в блокчейн (подписание и отправка транзакций). Указанное взаимодействие реализуется посредством RESTful API ноды. Генерация значения поля ``rest-api.api-key-hash`` выполняется с использованием метода :ref:`/utils/hash/secure <utils-hash>` REST API ноды. Для запросов, требующих: Для подписания запросов ключем из keystore ноды в поле ``password`` запроса ``POST /transaction/sign`` требуется указания пароля доступа к keystore. Пример запроса: Примеры транзакций приведены на странице :ref:`transaction-example`. доступ к keystore ноды (например, метод sign); доступ к конфигурации ноды; изменяющих состояние ноды (например, метод broadcast); требуется обязательная передача параметра ``X-Api-Key`` со значением секретной фразы, hash которой указан в конфигурационном файле ноды (поле ``rest-api.api-key-hash``). Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-04-15 14:07+0300
PO-Revision-Date: 2019-04-18 13:31+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
X-Generator: Poedit 2.2.1
 **Specification of node interface** REST API Node Vostok blockchain platform provides an opportunity to interact with a blockchain, both in terms of receiving data (transactions, blocks, balances, etc.), and in terms of recording infomation in a blockchain (signing and sending transactions). Said interaction is implemented through node RESTful API . The value of the field ``rest-api.api-key-hash`` is generated using the following method :ref:`/utils/hash/secure <utils-hash>` of REST API node. For queries requiring: It is required to specify the access password to the keystore in the field ``password`` of the request ``POST /transaction/sign`` for signing requests by the node keystore key. Sample query: Examples of transactions are given on page: ref:'transaction-example'. access to node keystore (for example, sign method); access to node configuration; changing node state (for example, broadcast method); mandatory transfer of ``X-Api-Key`` parameter with the value of a secret phrase whose hash is specified in the node configuration file (field ``rest-api.api-key-hash``). 