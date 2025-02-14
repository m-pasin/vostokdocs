��          �            h     i     �     �     �     �     �  �   �  �   �  �   �  �   �  �  P  �         �  �   c  o  *	     �
     �
     �
     �
     �
     �
  �     �   �  v   a  H   �    !  �   #  V   �  m   �        
                	                                                        **Запрос метода** **Пример ответа** Crypto POST /crypto/decrypt POST /crypto/encryptCommon POST /crypto/encryptSeparate Если данные принимаются от нод новых версий на ноде старой версии, то данные из строки ``encryptedText`` необходимо преобразовать из **Base64** в **Base58**. Если данные принимаются от нод старых версий на ноде новой версии, то данные из строки ``encryptedText`` необходимо преобразовать из **Base58** в **Base64**. Зашифровывает данные единым ключом CEK для всех получателей, CEK оборачивается уникальными KEK для каждого получателя. Зашифровывает текст отдельно для каждого получателя уникальным ключом. Ноды версии **1.0** и ниже используют кодировку **Base58** для зашифрования/расшифрования текстовых данных. Начиная с версии **1.0.2**, используется кодировка **Base64**. При наличии в сети нод разных версий используйте методы ``crypto`` следующим образом: Описание шифрования текстовых данных представлено в подразделе :ref:`Зашифрование текстовых данных в транзакциях <crypto-data-tx>`. Правила формирования запросов к ноде приведены в разделе :ref:`rest-api-node`. Расшифровывает данные. Расшифровка доступна в случае, если ключ получателя сообщения находится в keystore ноды. Project-Id-Version: Vostok 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-07-29 15:22+0300
PO-Revision-Date: 2019-07-29 15:22+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
X-Generator: Poedit 2.2.1
 **Method Query** **Method Response** Crypto POST /crypto/decrypt POST /crypto/encryptCommon POST /crypto/encryptSeparate In case of accepting data from newer version nodes by the older version node you need to convert data from the ``encryptedText`` string from **Base64** to **Base58**. In case of accepting data from older version nodes by the newer version node you need to convert data from the ``encryptedText`` string from **Base58** to **Base64**. Encrypts the data with a single CEK key for all recipients and the CEK wraps into a unique KEK for the each recipient. Encrypts the text separately for the each recipient with the unique key. Nodes of the **1.0** version and below use **Base58** encoding to encrypt/decrypt text data. Starting from the **1.0.2** version the **Base64** encoding is used. If there are different versions of nodes in the network, use the ``crypto`` methods as follows: The description of text data encryption is presented in the subsection :ref:`Encrypting text data in transactions <crypto-data-tx>`. The rules for generating queries to the node are given in module :ref:`rest-api-node`. Decrypts the data. The decryption is available only if the message recipient's key is in the node's keystore. 