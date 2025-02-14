.. _comissions-mainnet:

Комиссии в сети "Vostok Mainnet"
=====================================

.. table:: Комиссии для транзакций в сети "Vostok Mainnet"

===   =============================================================================   ====================   ======================================================================
№	  Тип транзакции                                                                  Комиссия               Описание                                               
===   =============================================================================   ====================   ======================================================================
1	  :ref:`Genesis transaction <GenesisTransaction>`                                 отсутствует            Первоначальная привязка баланса к адресам создаваемых при старте блокчейна нод
2	  Payment Transaction (не используется)                                                         
3	  :ref:`Issue Transaction <issueTransaction>`                                     1VST                   Выпус к токенов. Комиссия взымается только в VST    
4	  :ref:`Transfer Transaction <TransferTransaction>`                               0.01VST                Перевод токенов        
5	  :ref:`Reissue Transaction <ReissueTransaction>`                                 1VST                   Перевыпуск токенов    
6	  :ref:`Burn Transaction <BurnTransaction>`                                       0.05VST                Сжигание токенов        
7	  :ref:`Exchange Transaction (не используется) <ExchangeTransaction>`                                                       
8	  :ref:`Lease Transaction <LeaseTransaction>`                                     0.01VST                Передача токенов в аренду
9	  :ref:`Lease Cancel Transaction <LeaseCancelTransaction>`                        0.01VST                Отмена аренды токенов        
10	  :ref:`Create Alias Transaction <CreateAliasTransaction>`                        1VST                   Создание псевдонима         
11	  :ref:`MassTransfer Transaction <MassTransferTransaction>`                       0.05VST                Массовый перевод токенов. Указана минимальная комиссия, размер комиссии зависит от количества адресов в транзакции
12	  :ref:`Data Transaction <DataTransaction>`                                       0.05VST                Транзакция с данными в виде полей с парой ключ-значение. Комиссия всегда взимается с автора транзакции. Указана минимальная комиссия, размер комиссии зависит от размера данных
13	  :ref:`SetScript Transaction <SetScriptTransaction>`                             0.5VST                 Транзакция, привязывающая скрипт с RIDE-контрактом к аккаунту   
14	  SponsorFee Transaction (не используется)              
15    :ref:`SetAssetScript <SetAssetScriptTransaction>`                               1VST                   Транзакция, привязывающая скрипт с RIDE-контрактом к ассету  
101   :ref:`Genesis Permission Transaction <GenesisPermitTransaction>`                отсутствует            Назначение первого администратора сети для дальнейшей раздачи прав
102   :ref:`Permission Transaction <PermitTransaction>`                               0.01VST                Выдача/отзыв прав у аккаунта
103   :ref:`CreateContract Transaction <CreateContractTransaction>`                   1VST                   Создание Docker-контракта      
104   :ref:`CallContract Transaction <CallContractTransaction>`                       0.1VST                 Вызов Docker-контракта         
105   :ref:`ExecutedContract Transaction <ExecutedContractTransaction>`               отсутствует            Выполнение Docker-контракта     
106   :ref:`DisableContract Transaction <DisableContractTransaction>`                 0.01VST                Отключение Docker-контракта
110   :ref:`GenesisRegisterNode Transaction <GenesisRegisterNodeTransaction>`         отсутствует            Регистрация ноды в генезис-блоке при старте блокчейна    
111   :ref:`RegisterNode Transaction <RegisterNodeTransaction>`                       0.01VST                Регистрация новой ноды в сети    
112   :ref:`CreatePolicy Transaction <CreatePolicyTransaction>`                       1VST                   Создание группы доступа к конфиденциальным данным  
113   :ref:`UpdatePolicy Transaction <UpdatePolicyTransaction>`                       0.5VST                 Изменение группы доступа    
114   :ref:`PolicyDataHash Transaction <PolicyDataHashTransaction>`                   0.05VST                Отправка в сеть хеша данных       
===   =============================================================================   ====================   ======================================================================
