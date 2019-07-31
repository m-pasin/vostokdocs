��    A      $  Y   ,      �  *   �  0   �  P   �  @   >  �    �   {  ,  #	  �   P  E   �  Q   <    �  �   �  b  �            %  �   *  ]   �  s   Q  T   �  2     )   M  $  w  2  �  o   �     ?  &   X  �    �       �  �  �  9  �  !   %"  �  G"  v   $  �   �$  �   ;%  '   �%  �  $&  �   �(  �   �)  �  {*  U  :,    �-  &  �/  �  �0  #  o2     �5  .  �5  f   �9  P   7:  R   �:  �   �:  �   m;  �   Z<    =  Y   >  S   y>  0  �>    �?  y   B  U   �B  �   �B     dC  r  eD     �E  !   �E  A   F  3   \F  `  �F  ]   �G  |  OH  b   �I  E   /J  '   uJ  �   �J  �   TK  �   �K  �  �L  �   dN  �   O  �   �O  :   AP  ?   |P  -   �P     �P     �P  �   Q  �   �Q  3   (R     \R     pR    �R  �  �S     BU  t  VU  �  �V     xX  %  �X  J   �Y  L   �Y  j   IZ     �Z  �  �Z  �   �\  �   N]  ;  �]  �   _  7  �_  �   !a  �   �a  �  �b     }d  V  �d  #   �f  8   g  5   :g  b   pg  �   �g  i   �h  �   �h  D   �i  :   j    Uj  �  \k  W   �l  .   Hm  V   wm  ~   �m        (      @   >   ;              +   )       5             %   2   9                8       ?             "              3          <       
   	          '                           .           A                 =       $       !   0       1   6   ,   *      -      &   7                         /           #   :   4       **Описание параметров:** :ref:`Запустите <node-start>` ноду. :ref:`Обеспечьте <rest-api-access>` доступ к REST API ноды. :ref:`Подпишите <sign-genesis-block>` genesis блок. :ref:`Сгенерируйте <generate-keys-pair>` ключевую пару для каждого будущего участника сети при помощи генератора. Ключевых пар нужно создать столько, сколько нод планируется подключать к сети с самого старта блокчейна. Транзакции обо всех начальных участниках сети войдут в генезис-блок. :ref:`Создайте <create-node-config>` конфигурационный файл ноды в соответствии с требуемыми условиями. ``VOSTOK_NODE_OWNER_PASSWORD_EMPTY`` - ``true`` или ``false``, установите значение ``true``, если не хотите устанавливать пароль на адрес ноды, в таком случае создавать переменную ``VOSTOK_NODE_OWNER_PASSWORD`` необходимости нет. Если вы используете пароль, установите значение ``false`` и пропишите в переменную ``VOSTOK_NODE_OWNER_PASSWORD`` пароль от адреса ноды. ``VOSTOK_NODE_OWNER_PASSWORD`` - пароль от адреса ноды, который вводится на этапе создания ключевой пары. ``java -jar generators-x.x.x.jar AccountsGeneratorApp accounts.conf`` amount – количество генерируемых ключевых пар; api-key – ключ, который необходимо придумать. Значение данного ключа потребуется указать в запросах к REST API ноды (подробнее на странице :ref:`REST API ноды <rest-api-node>`). chain-id – идентифицирующий байт сети, значение потребуется дальше для внесения в параметр ``address-scheme-character`` в конфигурационный файл ноды; reload-node-wallet - опция для обновления keyStore ноды без перезапуска приложения, по умолчанию установлено в значение "Выключено" (``false``). В параметре ``url`` указывается путь до метода ``/utils/reload-wallet`` REST API ноды. wallet – путь до каталога хранения ключей на ноде, значение потребуется дальше для внесения в параметр ``wallet > file`` в конфигурационный файл ноды. Для криптографии Waves указывается путь до файла ``keystore.dat`` (пример, ``${user.home}/vostok/keystore.dat``), для ГОСТ-криптографии - путь до директории (``${user.home}/vostok/keystore/``); wallet-password – пароль для доступа к закрытым ключам ноды, значение потребуется дальше для внесения в параметр ``wallet > password`` в конфигурационный файл ноды; waves-crypto – выбор криптографического алгоритма ("yes" - использовать криптографию :ref:`Waves <crypto-waves>`, "no" - использовать :ref:`ГОСТ-криптографию <crypto-gost>`); В случае, если адреса дополнительных узлов сети не определены, допустимо указать пустое значение ``known-peers = [ ]`` Ввод пароля в ручном режиме при каждом старте ноды. Владелец ноды должен иметь положительный баланс и набор ролей. Выполните указанную команду для запуска ноды: Генерирование ключевых пар Глобальные переменные Для обеспечения дополнительной безопасности рекомендуется использовать пароль для адреса ноды. Платформа Vostok поддерживает два способа использования пароля: Для повышения безопасности рекомендуется генерировать различные значения ``api-key-hash`` и ``privacy-api-key-hash`` для доступа к REST API и для использования методов :ref:`privacy <privacy-api-access>`. Для полноценной конфигурации ноды выполните следующие шаги: Доступ к REST API Доступ к методам privacy Если нода ранее работала с другой сетью блокчейна Vostok, то удалить данные из папки, указанной в параметре ``data-directory`` (по умолчанию, для ОС Ubuntu используется путь ``${user.home}/vostok``, для ОС Windows используется путь ``C:\Users\<username>\vostok``). Если планируется подключение к существующей сети, то для упрощения подключения запросите готовый конфигурационный файл генератора у одного из участников сетевого взаимодействия или у администратора вашей сети. При создании сети с нуля или подключении к сети "Vostok Mainnet" пример конфигурационного файла ноды можно взять на странице проекта на `GitHub <https://github.com/vostokplatform/Vostok-Releases/tree/master/configs>`_. Запуск ноды Используя утилиту `generators-x.x.x.jar <https://github.com/vostokplatform/Vostok-Releases/releases>`_, создайте ``api-key-hash`` для доступа к REST API ноды. Для запуска утилиты требуется в качестве одного из параметров указать файл ``api-key-hash.conf``, в котором определяются параметры создания ``api-key-hash``. Команда для запуска утилиты: Используя утилиту `generators-x.x.x.jar <https://github.com/vostokplatform/Vostok-Releases/releases>`_, создайте ``privacy-api-key-hash`` для доступа к методам :ref:`privacy <privacy-api>` REST API ноды. Для запуска утилиты требуется в качестве одного из параметров указать файл ``api-key-hash.conf``, в котором определяются параметры создания ``privacy-api-key-hash``. Команда для запуска утилиты: Конфигурация ноды Необходимо проверить значения полей ``timestamp`` и ``block-timestamp`` блока ``genesis``. Время указывается в миллисекундах, значение должно состоять из 13 цифр. Если вы берёте стандартное значение ``timpstamp``, состоящее из 10 цифр, то в конце необходимо добавить три любые цифры. Описание параметров конфигурационного файла представлено ниже. Отредактируйте шаблон конфигурационного файла в соответствии со следующими рекомендациями: Перед запуском генератора :ref:`создайте <create-account-config>` для него отдельный конфигурационный файл ``accounts.conf``. Подписание genesis-блока Подпишите genesis-блок утилитой `generators-x.x.x.jar <https://github.com/vostokplatform/Vostok-Releases/releases>`_. Команда для подписания: ``java -jar generators-x.x.x.jar GenesisBlockGenerator node-config.conf``, где ``node-config.conf`` это отредактированный в этом :ref:`пункте <create-node-config>` конфигурационный файл ноды. После подписания поля ``genesis-public-key-base-58`` и ``signature`` конфигурационного файла будут заполнены значениями открытого ключа и подписи genesis-блока. Полученное в результате исполнения утилиты значение указать в параметре ``api-key-hash`` конфигурационного файла ноды. Полученное в результате исполнения утилиты значение указать в параметре ``privacy-api-key-hash`` конфигурационного файла ноды. После выполнения утилиты в папке, определенной параметром ``wallet``, будут сохранены закрытые ключи участников, а на экране отобразятся адреса и открытые ключи в виде строк: ``[main] accounts-generator - Address: 3PCKG8vUUQhbqyQnKuokEXmje5FByPHWiBt; public key: 6GffUw1XkAnpM7upBu7RPkWfBZSGfDKpPDUY5TygvrL6`` При использовании :ref:`ГОСТ-криптографии <crypto-gost>` после запуска команды создания участников на экран будет выведено окно КриптоПро инициализации биологического датчика случайных чисел. При использовании :ref:`криптографии Waves <crypto-waves>` пользователь может быть создан автоматически при запуске ноды, и предыдущий шаг можно пропустить. Для :ref:`ГОСТ-криптографии <crypto-gost>` необходимо использовать биологический датчик случайных чисел, автоматическое создание пары ключей невозможно. При использовании методов :ref:`privacy <privacy-api>` активируйте функциональность и заполните блок ``privacy`` параметрами настройки БД для хранения конфиденциальных данных: При использовании ручного ввода пароля создавать глобальные переменные необязательно. Если вы планируете разворачивать ноду в контейнерах или подобных сервисах, то удобнее будет задать в ОС следующие глобальные переменные: При указании пути необходимо использовать символ "прямого слэша" - ``/`` как разделитель уровней иерархии директорий. Пример конфигурационного файла приведен для ОС Windows. При работе в ОС Linux значение ``wallet`` должно соответствовать структуре каталогов операционной системы, например ``/home/contract/vostok/keystore.dat``. При настройке ноды не допускается использование кириллических символов при указании путей до рабочей директории, хранилища ключей и т.д. Пример: Публичный и приватный ключи будущих участников сети создаются при помощи утилиты генератора. Получить последнюю версию генератора можно на странице проекта на `GitHub <https://github.com/vostokplatform/Vostok-Releases/releases>`_. Для запуска утилиты необходимо в качестве одного из параметров указать файл ``accounts.conf``, в котором определяются параметры генерации ключей.  При создании ключевой пары введите пароль для адреса ноды (глобальная переменная ``VOSTOK_NODE_OWNER_PASSWORD``) и сохраните его для последующей конфигурации. Если не хотите устанавливать пароль от адреса ноды, нажмите ``enter``. Команда для запуска генератора: Создание глобальных переменных в операционной системе. Создание конфигурационного файла ``accounts.conf`` Создание конфигурационного файла из шаблона Укажите :ref:`адреса участников <address-creation>` – владельцев начального баланса сети: Укажите :ref:`публичные ключи участников сети <address-creation>` в блоке ``network-participants`` в том же порядке, как были указаны адреса участников: Укажите адреса домашней директории и директории для хранения данных блокчейна в соответствующих полях: Укажите байт сети, с которым генерировались адреса участников сети (параметр ``chain-id`` в accounts.conf). Байт сети для "Vostok Mainnet" - ``V``, для "Vostok Partnernet" - ``P``. Укажите в блоке ``genesis`` общий баланс активов сети: Укажите владельца ноды в параметре ``owner-address``: Укажите доступ к :ref:`интерфейсу REST API <rest-api-node>` ноды, а также хеш для доступа к методам :ref:`privacy <privacy-api>`: ``POST /privacy/sendData``, ``GET /privacy/getData/{policy-item-hash}`` и ``GET /privacy/getInfo/{policy-item-hash}``: Укажите путь и пароль от keystore - места хранения закрытых ключей участников сети, созданных на ноде (параметры ``wallet``, ``wallet-password`` в accounts.conf). Для криптографии Waves указывается путь до файла ``keystore.dat`` (пример, ``${user.home}/vostok/keystore.dat``), для ГОСТ-криптографии - путь до директории (``${user.home}/vostok/keystore/``): Укажите сетевые адреса (hostname) нод, которые будут подключены к сети: Укажите сетевые параметры настраиваемой ноды: Укажите тип используемой криптографии (см. раздел :ref:`Криптография <cryptography>`): Часть параметров конфигурационного файла описывают параметры блокчейн-сети, к которой осуществляется подключение, и не должны изменяться. Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-07-31 14:15+0300
PO-Revision-Date: 2019-07-31 14:50+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
X-Generator: Poedit 2.2.1
 **The parameters description:** :ref:`Run <node-start>` the node. :ref:`Provide <rest-api-access>` the access to the node REST API. :ref:`Sign <sign-genesis-block>` the genesis block. :ref:`Generate <generate-keys-pair>` the keys pair for the each participant included into the policy using the generator. You need to create as many key pairs as number of nodes you want to connect to the network from the start of blockchain. All transactions which include the creation of the each initial participant will fall into the genesis block. :ref:`Create <create-node-config>` the node configuration file according to the requirements. ``VOSTOK_NODE_OWNER_PASSWORD_EMPTY`` - ``true`` or ``false``, specify the ``true`` value if you do not want to use the node address password, in this case it is not necessary to create the ``VOSTOK_NODE_OWNER_PASSWORD`` variable. When you are using the password than specify the ``false`` value and write into the ``VOSTOK_NODE_OWNER_PASSWORD`` variable the node address password. ``VOSTOK_NODE_OWNER_PASSWORD`` - the node address password specified during the key pair creation. ``java -jar generators-x.x.x.jar AccountsGeneratorApp accounts.conf`` amount - number of generated key pairs; api-key is the key you need to come up with. The value of this key will need to be specified in requests to REST API node (for more details see page :ref:`REST API <rest-api-node>`). chain-id – identifying byte of the network, the value will be necessary further on for entry in parameter ``address-scheme-character`` of the node configuration file; reload-node-wallet - an option to update the node keyStore without restarting the application, by default it is turned off (false). ``url`` parameter specifies the path to the ``/utils/reload-wallet`` method of the REST API node. wallet – the path to the key storage directory on the node, the value will be required further on for entry in parameter ``wallet > file`` of the node configuration file. For the Waves cryptography, the path to file ``keystore.dat`` is specified (example, ``${user.home}/vostok/keystore.dat`''), for the GOST-cryptography - the path to directory (``${user.home}/vostok/keystore/``); wallet-password – password for access to closed node keys, the value will be necessary further on for enrty in parameter ``wallet > password`` of the node configuration file; wavesCrypto – the choice of a cryptographic algorithm ("yes" - use cryptography :ref:`Waves <crypto-waves>`, "no" - use :ref:`GOST-cryptography <crypto-gost>`); In case addresses of additional nodes of the network are not defined, it is permissible to specify the empty value ``known-peers = [ ]`` Enter the password manually at the each start of the node. The node owner must have a positive balance and a set of roles. Run the following command for the node start: Key pairs generating Global variables We recommend to use a password for the node address to increase security. The Vostok platform supports two ways of the password usage: We recommend to use different ``api-key-hash`` and ``privacy-api-key-hash`` values for the REST API and privacy access to provide more security. Follow these steps for the full node configuration: The REST API access The privacy methods access If the node previously was part of another Vostok's blockchain network, delete the data from the folder specified in parameter ``data-directory`` (by default, the path ``${user.home}/vostok`` is used for Ubuntu OS; for Windows path ``C:\Users\<username>\vostok``) is used. If you are planning to connect the new node to the existing network, it will be more easy to request full configuration file from your network administrator or from any of net participants. When you are creating the configuration file from a scratch or connecting to the "Vostok Mainnet", you can get the example of the file from our `GitHub <https://github.com/vostokplatform/Vostok-Releases/tree/master/configs>`_ page. Running of the node Use the utility `generators-x.x.x.jar <https://github.com/vostokplatform/Vostok-Releases/releases>`_ create the ``api-key-hash`` to get the access to the REST API node. To run the utility, you need to specify the ``api-key-hash.conf`` file as one of the parameters, which defines the parameters of creating ``api-key-hash``. Use the following command to run the generator: Use the utility `generators-x.x.x.jar <https://github.com/vostokplatform/Vostok-Releases/releases>`_ create the ``privacy-api-key-hash`` to get the access to the :ref:`privacy <privacy-api>` methods of REST API node. To run the utility, you need to specify the ``api-key-hash.conf`` file as one of the parameters, which defines the parameters of creating ``privacy-api-key-hash``. Use the following command to run the generator: Node configuration You need to check the ``timestamp`` and ``block-timestamp`` fields of the ``genesis`` unit. The time is specified in milliseconds and the value must consist of 13 digits. If you specify the standard value ``timestamp`` consisting of 10 digits, then you need to add any three digits at the end. The description of the configuration file parameters is represented below. Edit the configuration file template according to following recommendations: :ref:`Create <create-account-config>` the ``accounts.conf`` configuration file before the generator start. Signing the genesis block Sign the genesis block using utility `generators-x.x.x.jar <https://github.com/vostokplatform/Vostok-Releases/releases>`_. Command for signing: ``java -jar generators-x.x.x.jar GenesisBlockGenerator node-config.conf``, where ``node-config.conf`` is the edited in this :ref:`section <configuration-node>` node configuration file. After signing the fields ``genesis-public-key-base-58`` and ``signature`` of the configuration file will be filled with values of the public key and the proof of the genesis block. Specify the value obtained as a result of the utility execution in the parameter ``api-key-hash`` in the node configuration file. Specify the value obtained as a result of the utility execution in the parameter ``privacy-api-key-hash`` in the node configuration file. After the utility is executed, private keys of participants will be saved in the folder defined by the wallet parameter, and addresses and public keys will be displayed as strings: ``[main] accounts-generator - Address: 3PCKG8vUUQhbqyQnKuokEXmje5FByPHWiBt; public key: 6GffUw1XkAnpM7upBu7RPkWfBZSGfDKpPDUY5TygvrL6`` When using :ref:'GOST-cryptography <crypto-gost>' after starting the create participants command, the CryptoPro window will be displayed on the screen for initialization of the biological random number generator. When using :ref:`Waves Cryptography <crypto-waves>' a network participant can be created automatically at node launch and the previous step can be skipped. For :ref:'GOST-cryptography <crypto-gost>' due to the need to use the biological random number generator, automatic generation of a key pair is impossible. When using the :ref:`privacy <privacy-api>` methods activate the option and fill in the ``privacy`` block with database settings for storing the private data: If you are using the manual enter the password there is no need to create global variables. But when you are planning to use containers or any similar services to run the node then create the following global variables in the OS for your convenience: When specifying a path, use the "forward slash" - ``/`` as a delimiting character for directory hierarchy levels. An example of the configuration file is provided for Windows OS. During Linux using the value `wallet` must match the directory structure of the operating system, for example `/home/contract/vostok/keystore.dat`. During node setting it is prohibited to use cyrillic symbols for specifying paths to the working directory, keystore, etc. Example: Public and private keys for initial participants are creating by the generator. You can get the last version of the generator on our `GitHub <https://github.com/vostokplatform/Vostok-Releases/releases>`_ page. Before running the utility you need to specify the ``accounts.conf`` configuration file which contains parameters for keys creating. Enter the node address (the global variable ``VOSTOK_NODE_OWNER_PASSWORD``) password during the key pair creation and keep it for the following steps. Press enter key if you do not want to use this password. Use the following command to run the generator: Create global variables in your OS. The creation of the ``accounts.conf`` configuration file Creation of the configuration file using the template Specify :ref:`<address-creation>` addresses of participants – owners of initial network balance: Specify :ref:`the public keys of the network participants<address-creation>` in the block ``network-participants`` in the same order as they were specified for participant addresses: Specify the addresses of the home directory and blockchain storage directory in the corresponding fields: Specify the byte of the network which was used to generate addresses of network participants (parameter ``chain-id`` in accounts. conf). The network byte for the "Vostok Mainnet" - ``V``, for the "Vostok Partnernet" - ``P``. Specify the total balance of network assets in the ``genesis`` unit: Specify the node owner in the ``owner-address`` parameter: Specify the access to the node :ref:`REST API interface <rest-api-node>` and hash for the access to the :ref:`privacy <privacy-api>` methods: ``POST /privacy/sendData``, ``GET /privacy/getData/{policy-item-hash}`` and ``GET /privacy/getInfo/{policy-item-hash}``: Specify the path and the password from the keystore - the storage of private keys of network participants created on the node (parameters ``wallet``, ``wallet-password`` in accounts.conf). For Waves cryptography, specify the path to the file ``keystore.dat`` (for example, ``${user.home}/vostok/keystore.dat``) for GOST-cryptography specify the path to the directory (``${user.home}/vostok/keystore/``): Specify network addresses (hostnames) for nodes which will be connected to the network: Specify network settings of customizable node: Specify the type of cryptography used (see Module :ref:`Cryptography <cryptography>`): Part of the configuration file settings describe parameters of the blockchain network to be joined and should not be modified. 