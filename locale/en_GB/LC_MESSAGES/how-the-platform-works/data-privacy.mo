��    $      <  5   \      0     1  Z   Q     �  �   �  E   b  �  �    h  y   j  1   �  '   	  H  >	  <   �  W   �  2     �   O      $   7  �  \  �   ?  Q       V  ]   f  L   �  :    M   L  D  �  %   �  ,     2   2  %   e     �  %   �  e   �  v   3  *   �  r  �     H  ;   `     �  e     *   �    �  j   �  ^   )     �     �  �  �  %   `!  2   �!  $   �!  |   �!  �   ["     
#  �   #  {   �#  .   H$     w$  E   �$  2   =%  �   p%  5   &  �   O&     '  
   .'  $   9'      ^'     '     �'  <   �'  A   �'     1(             	                                                   
                                                                               !   $       #            "               **Схема процесса** address, ключом которого требуется подписать данные; Блокчейн-платформа Восток позволяет организовать передачу и хранение конфиденциальных данных между участниками сетевого взаимодействия. В упрощенном варианте передача конфиденциальных данных между нодами состоит из следующих этапов: Вычисление хэша от полученных данных; Для внешних приложений в :ref:`API ноды <privacy-api>` реализовано несколько запросов, возвращающих сведения по политике и данным, которые передаются в рамках данной политике: ``GET /privacy/{policy}/recipients``, ``GET /privacy/{policy}/fullinfo``, ``GET /privacy/{policy}/getHashes``, ``GET /privacy/getInfo/{hash}``. Доступ к конфиденциальным данным определяется политиками (policy), которые содержат список сторон, которым разрешается чтение и запись данных. Если хэши совпадают, то изменения статуса данных в Private Store на ACCEPTED. Конфиденциальность данных Маршрутизация данных На основе указанных параметров в стейте ноды формируется таблица разрешенных участников сетевого обмена. Взаимодействие между нодами разрешается, если в запросе ноды (:ref:`handshake message <network-message>`) присутствует подпись на приватном ключе, парном публичному ключу, который находится в стейте ноды. Если подпись запроса верна, то нода формирует в своей памяти таблицу, содержащую соотвествие между блокчейн-адресом участника отправившего handshake запрос и его hostname/ip-адресом. После успешного подключения нода пользователя выполняет синхронизацию с сетью, а так же синхронизацию таблицы адресов участников. Обмен конфиденциальными данными Определение списка участников, состоящих в policy; Организация политик обмена Отправка данных на ноду выполняется через API ноды через запрос ``POST /privacy/sendData``, в который транслируются параметры: Отправка сетевого сообщения hasPrivateData для проверки наличия данных у участника (данные могут быть получены от другой ноды в рамках peer-to-peer взаимодействия); Параметры политики: Политика доступа - это сущность регулирующая отношения сторон в рамках взаимодействия с приватными данными. Стороны, которым необходимо обмениваться приватными данными, cоздают политику доступа, согласно которой впоследствии проводят обмен приватными данными. Проверка на соответствие хэша, созданного на полученных данных и хэша, полученного из блокчейн-транзакции; Проверка принадлежности пользователя к policy; Рассылка данных сразу нескольким участникам предполагает последовательную установку соединения и пересылку данных каждому следующему участнику. Сохранение данных в Private Store ноды с признаком UNACCEPTED; Транзакция содержит следующие параметры: Управление политиками доступа осуществляется путем отправки в блокчейн транзакций CreatePolicyTransaction (type = 112, создание политики) и UpdatePolicyTransaction (type = 113, редактирование политики). Установка TLS-соединения и отправка данных; Формирование, подписание и отправка в блокчейн транзакции :ref:`PolicyDataHashTransaction <transaction-structure>` (type = 114), содержащей хэш данных. Подписание производится нодой-первополучателем данных; данные для отправки. идентификатор политики; название или описание ноды. описание (policyDescription); пароль от keystore; публичный ключ ноды; список получателей конфиденциальных данных (policyRecipients); список участников с правами на редактирование политики (policyOwners). срок действия (policyDueDate); Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-04-16 17:14+0300
PO-Revision-Date: 2019-04-17 17:33+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
X-Generator: Poedit 2.2.1
 **The process diagram** the address, the key of which is required to sign the data; Blockchain platform Vostok provides the confidential data transfer and storage between the participants of network interaction. In a simple way, the transfer of the confidential data between nodes consists of the following steps: Calculating the hash of the received data; For external access and getting the information about policies there are using specified :ref:`API Node <privacy-api>` requests: ``GET /privacy/{policy}/recipients``, ``GET /privacy/{policy}/fullinfo``, ``GET /privacy/{policy}/getHashes``, ``GET /privacy/getInfo/{hash}``. The policy set containing the access lists is keeping safe the confidential data from unauthorised access. Changing the data status from the node Private Store on the ACCEPTED if the hashes will match. Data Privacy Data routing A table containing allowed network exchange participants and based on the transaction parameters is formed in the node state. The Interaction between the hosts is allowed, if inside the node request (:ref:`handshake message <network-message>`) there is a signature of the private key which is paired to the public key located in the node state. If the signature of the request is correct, the node forms a table containing the compliance between the blockchain address of the participant who sent the handshake request and its hostname/ip address. After a successful connection the user node synchronizes with the network and performs the synchronization of the table of addresses of the participants. The exchange of the confidential data Defining the participants list included in policy; Arrangement of the exchange policies The ``POST /privacy/sendData`` API request of the node is using for sending data to this node with the following parameters: Sending the hasPrivateData net message to check the having of the data belonging the participant (the data can be obtained from another node during peer-to-peer interaction); Policies parameters: The access policy manages the stakeholders relations during private data interactions. According with their own created policy stakeholders are exchanging the private data. Equivalence checking of the hash created on the base of the received data and the hash got from the blockchain transaction; Checking the user's affiliation to the policy; Sending the data to several participants simultaneously requires a serial connection and sending data to each next participant. Saving the data inside the node Private Store with UNACCEPTED status; The transaction contains the following parameters: Access policies are managed by sending CreatePolicyTransaction (type = 112, policy creation) and UpdatePolicyTransaction (type = 113, policy editing) to the blockchain. Establishing the TLS connection and sending the data; Creating, signing and sending to the blockchain :ref:`PolicyDataHashTransaction <transaction-structure>` (type = 114) containing the data hash. This transaction is signing by the first node-recipient; the data for sending. policy ID; a name or a description of the node. description (policyDescription); the keystore password; the public key of the node; the list of confidential data recipients (policyRecipients); the list of the policy owners with editing rights (policyOwners). duaration (policyDueDate); 