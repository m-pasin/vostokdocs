��          t      �         �       �  �   �  i  �  a     �   o  �   H  �     �   �  !   c  r  �  l   �	  �   e
  �   V  �   �  A   �  v     `   {  u   �  �   R     �                                 	   
                        1.1. При возникновении следующего окна с ошибкой установки включите аппаратную поддержку виртуализации в BIOS: 1.2. После установки убедитесь, что успешно установились приложения `Docker CE <https://docs.docker.com/install/>`_ и `Docker-compose <https://docs.docker.com/compose/install/>`_ (часть дистрибутива Docker CE): В конфигурационном файле приложения ``frontend-deployment/config/nginx-proxy.env`` укажите путь до REST API и hostname ноды: Для полноценной работы необходимо установить дополнительно приложения `Docker CE <https://docs.docker.com/install/>`_ и `Docker-compose <https://docs.docker.com/compose/install/>`_. Выполните следующие действия для установки клиентской версии: Запустите скрипт развертывания командой ``bash ./deploy.sh``. Ознакомиться с подробным описанием компонентов установленного приложение можно в разделе :ref:`Описание клиента <client>`. Откройте браузер и перейдите по адресу ``localhost``, чтобы убедиться, что клиент системы успешно развернут. Скачайте и разархивируйте файл `frontend-deployment.zip <https://github.com/vostokplatform/Vostok-Releases/releases>`_. Скачайте и установите дистрибутив `Docker CE <https://docs.docker.com/install/>`_. Для скачивания потребуется регистрация на сайте. Установка клиента Project-Id-Version: Vostok master
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-30 15:23+0300
PO-Revision-Date: 2019-05-30 16:40+0300
Last-Translator: 
Language: en
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
X-Generator: Poedit 2.2.1
 1.1. If the following installation error window appears, enable the hardware virtualization support in BIOS: 1.2 After installation check if applications `Docker CE <https://docs.docker.com/install/>`_ and `Docker-compose <https://docs.docker.com/compose/install/>`_ (the part of the Docker CE installation package) have been successfully installed: Specify the path to REST API and node hostname in the configuration file of the application ``frontend-deployment/config/nginx-proxy.env``: The client app need additional apps `Docker CE <https://docs.docker.com/install/>`_ and `Docker-compose <https://docs.docker.com/compose/install/>`_ for the fully running. Follow these steps for the client app installation: Run the deployment script using the command ``bash ./deploy.sh``. For the detailed description of components of the installed application see module :ref:`Client description <client>`. Open the browser and go to ``localhost`` to check if the system client is successfully deployed. Download and unzip the file `frontend-deployment. zip <https://github.com/vostokplatform/Vostok-Releases/releases>`_. Download and install the installation package `Docker CE <https://docs.docker.com/install/>`_. Registration on the site is need for downloading. Client Installation 