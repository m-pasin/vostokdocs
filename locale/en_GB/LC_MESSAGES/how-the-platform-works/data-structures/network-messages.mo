��    k      t  �   �       	     !	     %	     '	     *	     -	     0	     3	     6	     9	     <	     >	     A	     C	     E	     G	  	   I	     S	     a	     g	     j	     l	     n	  &   p	     �	     �	     �	     �	     
     
     
     '
     3
     F
     O
     c
     s
     �
     �
     �
     �
     �
     �
     �
               /  +   I  
   u     �     �     �     �     �     �     �     �       +   "  ?   N     �     �  �   �     8     N  k  `     �     �     �     �     �     �    �     �     �          '  
   <     G     Z     \     v     ~     �     �     �     �     �  	   �     �     �  T        [     k  	   y     �     �     �     �  &   �  �   �  �   �       (     %   H  !   n     �  r  �     
                                        "     %     '     *     ,     .     0  	   2     <     J     P     S     U     W  &   Y     �     �     �     �     �     �     �               /     8     L     \     j     �     �     �     �     �     �     �            +   2  
   ^     i     {     �     �     �     �     �     �     �  +     ?   7     w     �  N   �     �     �  �        �     �     �     �     �     �  �   �     �     �     �     �  
   �     �     �     �               ,     ;     N     [     n  	   {     �     �  2   �     �     �  	   �     �          '     ;     @  [   U  M   �     �               ,     =     9   4               c       )           f   P   F   W   2          h           I              M   J   S       !   <   X   a           i      &   [   +       H          %   _                                             3   N   `   A   '   :   5   Z          ,      C       L   T   E   V   G   ?   /      Q      D       (          j               	   
   =   0   d       B         6   U   R               K      $   ^   -       1           "   7   e   ;                      k   g           >       @   #   8                  .   ]   Y   O           \   *       b    ... 1 10 12 13 14 15 16 17 2 26 3 4 5 6 6 + 2 * N 6 + 2 * N - 1 6 + N 64 7 8 9 Application name (UTF-8 encoded bytes) Application name length (N) Application version major Application version minor Application version patch BigInt Block #1 ID Block #1 signature Block #N ID Block #N signature Block ID Block IDs count (N) Block bytes (N) Block message Block signatures count (N) Byte Bytes Checkpoint #1 height Checkpoint #1 signature Checkpoint #N height Checkpoint #N signature Checkpoint items count (N) Checkpoint message Consensus name lenght (P) Consensus name lenght (UTF-8 encoded bytes) Content ID Content ID (0x01) Content ID (0x02) Content ID (0x14) Content ID (0x15) Content ID (0x16) Content ID (0x17) Content ID (0x18) Content ID (0x19) Content ID (0x64) Declared address bytes (if length is not 0) Declared address length (K) or 0 if no declared address was set GetBlock message GetPeers message GetPeers сообщение отправляется для запроса сетевых адресов участников сети. GetSignatures message Handshake message Handshake сообщение предназначена для первичного обмена данными между двумя нодами. Авторизованный handshake содержит блокчейн-адрес владельца ноды и подпись. Неподписанные handshake сообщения не принимаются. HandshakeType Int K Long M Magic Bytes Magic Bytes следующие: 0x12, 0x34, 0x56, 0x78. Контрольная сумма полезной нагрузки это первые 4 байта от _FastHash_ от байтов _Payload_. FastHash это хеш-функция Blake2b256(data). N Network message Node name (UTF-8 encoded bytes) Node name length (M) Node nonce Node owner address P Packet length (BigEndian) Payload Payload checksum Payload length Peer #1 IP address Peer #1 port Peer #N IP address Peer #N port Peer port Peers count (N) Peers message Peers сообщение является ответом на запрос GetPeers. Score (N bytes) Score message Signature Signatures message Transaction (N bytes) Transaction message byte Авторизованный Handshake В этом разделе приведена структура сетевых сообщений в блокчейн-платформе Восток. Все сетевые сообщения, за исключением Handshake, базируются на следующей структуре: Поле Порядковый номер поля Размер поля в байтах Сетевые сообщения Тип Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-06-05 15:56+0300
PO-Revision-Date: 2019-06-05 16:45+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
X-Generator: Poedit 2.2.1
 ... 1 10 12 13 14 15 16 17 2 26 3 4 5 6 6 + 2 * N 6 + 2 * N - 1 6 + N 64 7 8 9 Application name (UTF-8 encoded bytes) Application name length (N) Application version major Application version minor Application version patch BigInt Block #1 ID Block #1 signature Block #N ID Block #N signature Block ID Block IDs count (N) Block bytes (N) Block message Block signatures count (N) Byte Bytes Checkpoint #1 height Checkpoint #1 signature Checkpoint #N height Checkpoint #N signature Checkpoint items count (N) Checkpoint message Consensus name lenght (P) Consensus name lenght (UTF-8 encoded bytes) Content ID Content ID (0x01) Content ID (0x02) Content ID (0x14) Content ID (0x15) Content ID (0x16) Content ID (0x17) Content ID (0x18) Content ID (0x19) Content ID (0x64) Declared address bytes (if length is not 0) Declared address length (K) or 0 if no declared address was set GetBlock message GetPeers message GetPeers message is sent to request network addresses of network participants. GetSignatures message Handshake message Handshake message is intended for primary data exchange between two nodes. An authorized handshake contains the node owner’s blockchain address and signature. Unsigned handshakes are not accepted. HandshakeType Int K Long M Magic Bytes Magic Bytes are 0x12, 0x34, 0x56, 0x78. Payload checksum is first 4 bytes of_FastHash_of Payload bytes. FastHash is hash function Blake2b256(data). N Network message Node name (UTF-8 encoded bytes) Node name length (M) Node nonce Node owner address P Packet length (BigEndian) Payload Payload checksum Payload length Peer #1 IP address Peer #1 port Peer #N IP address Peer #N port Peer port Peers count (N) Peers message Peers message is a response to a GetPeers request. Score (N bytes) Score message Signature Signatures message Transaction (N bytes) Transaction message byte Authorized Handshake This section describes the structure of network messages in the Vostok blockchain platform. All network messages, except Handshake, are based on the following structure: Field Field order number Field size in bytes Network messages Type 