��    +      t  ;   �      �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �                 (   #     L     b     y     }     �     �     �  %   �  	   �     �     �     �  7     8   O  
   �  �   �  �   '  c   �     .  (   7  %   `     �  r  �      	     	     	     	     	     	     	     	     	      	     "	     %	     '	     )	     5	     A	     M	     _	     d	  (   j	     �	     �	     �	     �	     �	     �	     �	  %   �	  	   
     
     +
     @
  7   ^
  8   �
     �
  M   �
  Z   $  >        �     �     �     �         *                          +            &       (       #   !                               $      '             "         )                        %                          	   
                     ... 0 1 10 + (K - 1) 2 3 32 4 5 6 64 7 8 8 + (K - 1) 9 + (K - 1) Base target Block's signature Byte Bytes Consensus block length (always 40 bytes) Generation signature* Generator's public key Int Long M1 MK Parent block signature Previous block's generation signature Timestamp Transaction #1 bytes Transaction #K bytes Transactions block length (N) Version (0x02 for Genesis block, 0x03 for common block) Version (0x02 for Genesis block,, 0x03 for common block) Блоки В этом разделе приведена структура хранения блоков в блокчейн-платформе Восток. Генерирующая подпись (Generation signature) вычисляется  на основе хеша (Blake2b256) от следующих полей: Подпись блока вычисляется на основе следующих данных: Поле Порядковый номер поля Размер поля в байтах Тип Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-24 16:12+0300
PO-Revision-Date: 2019-05-24 16:18+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
X-Generator: Poedit 2.2.1
 ... 0 1 10 + (K - 1) 2 3 32 4 5 6 64 7 8 8 + (K - 1) 9 + (K - 1) Base target Block's signature Byte Bytes Consensus block length (always 40 bytes) Generation signature* Generator's public key Int Long M1 MK Parent block signature Previous block's generation signature Timestamp Transaction #1 bytes Transaction #K bytes Transactions block length (N) Version (0x02 for Genesis block, 0x03 for common block) Version (0x02 for Genesis block,, 0x03 for common block) Blocks This module contains the structure of block storage in the Vostok blockchain. Generation signature is calculated based on the hash (Blake2b256) of the following fields: The block signature is calculated based on the following data: Field Field order number Field size in bytes Type 