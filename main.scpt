FasdUAS 1.101.10   ��   ��    k             p         �� �� 0 	modelname 	modelName  �� 	�� "0 modelidentifier modelIdentifier 	 �� 
�� 0 processorname processorName 
 �� ��  0 processorspeed processorSpeed  �� �� 0 numprocessors numProcessors  �� �� 0 numcores numCores  �� �� 
0 memory    �� �� 0 serialnumber serialNumber  ������ 0 
configcode 
configCode��        l     ��������  ��  ��        i         I      �������� 0 getsysteminfo getSystemInfo��  ��    l    �     k     �       l         r          J      ! !  "�� " m      # # � $ $  :��     n      % & % 1    ��
�� 
txdl & 1    ��
�� 
ascr  %  set new text delimiters to ":"     � ' ' >   s e t   n e w   t e x t   d e l i m i t e r s   t o   " : "   ( ) ( l    * + , * r     - . - n     / 0 / 2    ��
�� 
cpar 0 l    1���� 1 I   �� 2��
�� .sysoexecTEXT���     TEXT 2 m    	 3 3 � 4 4 D s y s t e m _ p r o f i l e r   S P H a r d w a r e D a t a T y p e��  ��  ��   . o      ���� 0 
systeminfo 
systemInfo +   get raw hardware data    , � 5 5 ,   g e t   r a w   h a r d w a r e   d a t a )  6 7 6 l    8 9 : 8 r     ; < ; J     = =  > ? > m     @ @ � A A  M o d e l   N a m e ?  B C B m     D D � E E   M o d e l   I d e n t i f i e r C  F G F m     H H � I I  P r o c e s s o r   N a m e G  J K J m     L L � M M  P r o c e s s o r   S p e e d K  N O N m     P P � Q Q ( N u m b e r   o f   P r o c e s s o r s O  R S R m     T T � U U  n u m b e r   o f   C o r e s S  V W V m     X X � Y Y  M e m o r y W  Z�� Z m     [ [ � \ \  s e r i a l   N u m b e r��   < o      ���� 0 	specslist 	specsList 9 "  define list of specs to get    : � ] ] 8   d e f i n e   l i s t   o f   s p e c s   t o   g e t 7  ^ _ ^ r    " ` a ` m      b b � c c   a o      ���� 0 	specsdata 	specsData _  d e d X   # � f�� g f l  7 | h i j h X   7 | k�� l k l  K w m n o m Z   K w p q���� p E   K N r s r o   K L���� 0 
systemitem 
systemItem s o   L M���� 0 	specsitem 	specsItem q l  Q s t u v t k   Q s w w  x y x r   Q Y z { z n   Q W | } | 4 R W�� ~
�� 
citm ~ m   U V����  } o   Q R���� 0 
systemitem 
systemItem { o      ���� 0 
systemitem 
systemItem y  ��  l  Z s � � � � r   Z s � � � b   Z q � � � b   Z m � � � o   Z [���� 0 	specsdata 	specsData � n   [ l � � � 7 \ l�� � �
�� 
ctxt � m   b d����  � l  e k ����� � n   e k � � � 1   g k��
�� 
leng � o   e g���� 0 
systemitem 
systemItem��  ��   � o   [ \���� 0 
systemitem 
systemItem � m   m p � � � � �  : � o      ���� 0 	specsdata 	specsData � "  remove space from beginning    � � � � 8   r e m o v e   s p a c e   f r o m   b e g i n n i n g��   u D > if raw data conatains desired specs then add it to a variable    v � � � |   i f   r a w   d a t a   c o n a t a i n s   d e s i r e d   s p e c s   t h e n   a d d   i t   t o   a   v a r i a b l e��  ��   n ' ! repeat with list of specs to get    o � � � B   r e p e a t   w i t h   l i s t   o f   s p e c s   t o   g e t�� 0 	specsitem 	specsItem l o   : ;���� 0 	specslist 	specsList i 1 + repeat with each item of raw hardware data    j � � � V   r e p e a t   w i t h   e a c h   i t e m   o f   r a w   h a r d w a r e   d a t a�� 0 
systemitem 
systemItem g o   & '���� 0 
systeminfo 
systemInfo e  ��� � l  � � � � � � r   � � � � � n   � � � � � 2  � ���
�� 
citm � o   � ����� 0 	specsdata 	specsData � J       � �  � � � o      ���� 0 	modelname 	modelName �  � � � o      ���� "0 modelidentifier modelIdentifier �  � � � o      ���� 0 processorname processorName �  � � � o      ����  0 processorspeed processorSpeed �  � � � o      ���� 0 numprocessors numProcessors �  � � � o      ���� 0 numcores numCores �  � � � o      ���� 
0 memory   �  ��� � o      ���� 0 serialnumber serialNumber��   � 4 . set all variables to hardware info from above    � � � � \   s e t   a l l   v a r i a b l e s   t o   h a r d w a r e   i n f o   f r o m   a b o v e��    H B gets hardware info from system_profiler and saves it to variables     � � � �   g e t s   h a r d w a r e   i n f o   f r o m   s y s t e m _ p r o f i l e r   a n d   s a v e s   i t   t o   v a r i a b l e s   � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� 0 getmodelinfo getModelInfo��  ��   � k     � � �  � � � r      � � � J      � �  ��� � m      � � � � �  > <��   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � l    � � � � r     � � � n     � � � 1    ��
�� 
psxp � l    ����� � I   �� ���
�� .earsffdralis        afdr � m    	��
�� afdrtemp��  ��  ��   � o      ���� 0 tmpfiles tmpFiles �    gets temporary files path    � � � � 4   g e t s   t e m p o r a r y   f i l e s   p a t h �  � � � r     � � � n     � � � 7  �� � �
�� 
ctxt � m    ������ � m    ������ � o    ���� 0 serialnumber serialNumber � o      ���� 0 	endserial 	endSerial �  � � � O    0 � � � I  $ /�� ���
�� .sysoexecTEXT���     TEXT � b   $ + � � � b   $ ) � � � b   $ ' � � � m   $ % � � � � �  c d   � o   % &���� 0 tmpfiles tmpFiles � m   ' ( � � � � � b ; c u r l   h t t p s : / / s u p p o r t - s p . a p p l e . c o m / s p / p r o d u c t ? c c = � o   ) *���� 0 	endserial 	endSerial��   � m     ! � ��                                                                                  sevs  alis    �  Macintosh HD               ֒C
H+   <�System Events.app                                               �=Ր�        ����  	                CoreServices    ֒�z      Րg     <� m
 m  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � r   1 4 � � � 1   1 2��
�� 
rslt � o      ���� 0 xmltext xmlText �  � � � Z   5 e � ����� � E   5 8 � � � o   5 6���� 0 xmltext xmlText � m   6 7 � � � � � 
 e r r o r � k   ; a � �  � � � r   ; H � � � n   ; F � � � 7 < F�� � �
�� 
ctxt � m   @ B������ � m   C E������ � o   ; <���� 0 	endserial 	endSerial � o      ���� 0 	endserial 	endSerial �  � � � O  I ] � � � I  M \�� ���
�� .sysoexecTEXT���     TEXT � b   M X �  � b   M V b   M R m   M P �  c d   o   P Q���� 0 tmpfiles tmpFiles m   R U � b ; c u r l   h t t p s : / / s u p p o r t - s p . a p p l e . c o m / s p / p r o d u c t ? c c =  o   V W���� 0 	endserial 	endSerial��   � m   I J		�                                                                                  sevs  alis    �  Macintosh HD               ֒C
H+   <�System Events.app                                               �=Ր�        ����  	                CoreServices    ֒�z      Րg     <� m
 m  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   � 
��
 r   ^ a 1   ^ _��
�� 
rslt o      ���� 0 xmltext xmlText��  ��  ��   �  r   f m n   f k 2   g k��
�� 
citm o   f g���� 0 xmltext xmlText o      ���� 0 xmltext xmlText �� X   n ��� Z   � ����� E   � � o   � ����� 0 textitem textItem m   � � �  c o n f i g C o d e k   � �  I  � �����
�� .ascrcmnt****      � **** o   � ����� 0 textitem textItem��    !  r   � �"#" J   � �$$ %&% m   � �'' �((  <& )��) m   � �** �++  >��  # n     ,-, 1   � ���
�� 
txdl- 1   � ���
�� 
ascr! ./. r   � �010 n   � �232 2   � ���
�� 
citm3 o   � ����� 0 textitem textItem1 o      ���� 0 xmldata xmlData/ 454 r   � �676 J   � �88 9��9 m   � �:: �;;  ,  ��  7 n     <=< 1   � ���
�� 
txdl= 1   � ���
�� 
ascr5 >��> r   � �?@? n   � �ABA 4   � ���C
�� 
citmC m   � ����� B o   � ��� 0 xmldata xmlData@ o      �~�~ 0 
configcode 
configCode��  ��  ��  �� 0 textitem textItem o   q r�}�} 0 xmltext xmlText��   � DED l     �|�{�z�|  �{  �z  E FGF l    HIJH r     KLK n    MNM 1    �y
�y 
txdlN 1     �x
�x 
ascrL o      �w�w 0 	olddelims 	oldDelimsI 0 * save current text delimiters to oldDelims   J �OO T   s a v e   c u r r e n t   t e x t   d e l i m i t e r s   t o   o l d D e l i m sG PQP l   R�v�uR I    �t�s�r�t 0 getsysteminfo getSystemInfo�s  �r  �v  �u  Q STS l   U�q�pU I    �o�n�m�o 0 getmodelinfo getModelInfo�n  �m  �q  �p  T VWV l   XYZX r    [\[ o    �l�l 0 	olddelims 	oldDelims\ n     ]^] 1    �k
�k 
txdl^ 1    �j
�j 
ascrY ' ! set text delimiters to oldDelims   Z �__ B   s e t   t e x t   d e l i m i t e r s   t o   o l d D e l i m sW `a` l     �i�h�g�i  �h  �g  a bcb l   'd�f�ed I   '�de�c
�d .ascrcmnt****      � ****e J    #ff ghg o    �b�b 0 	modelname 	modelNameh iji o    �a�a "0 modelidentifier modelIdentifierj klk o    �`�` 0 processorname processorNamel mnm o    �_�_  0 processorspeed processorSpeedn opo o    �^�^ 0 numprocessors numProcessorsp qrq o    �]�] 0 numcores numCoresr sts o    �\�\ 
0 memory  t uvu o     �[�[ 0 serialnumber serialNumberv w�Zw o     !�Y�Y 0 
configcode 
configCode�Z  �c  �f  �e  c x�Xx l     �W�V�U�W  �V  �U  �X       �Tyz{|�T  y �S�R�Q�S 0 getsysteminfo getSystemInfo�R 0 getmodelinfo getModelInfo
�Q .aevtoappnull  �   � ****z �P �O�N}~�M�P 0 getsysteminfo getSystemInfo�O  �N  } �L�K�J�I�H�L 0 
systeminfo 
systemInfo�K 0 	specslist 	specsList�J 0 	specsdata 	specsData�I 0 
systemitem 
systemItem�H 0 	specsitem 	specsItem~ # #�G�F 3�E�D @ D H L P T X [�C b�B�A�@�?�>�= ��<�;�:�9�8�7�6�5�4�3�2�1
�G 
ascr
�F 
txdl
�E .sysoexecTEXT���     TEXT
�D 
cpar�C 
�B 
kocl
�A 
cobj
�@ .corecnte****       ****
�? 
citm
�> 
ctxt
�= 
leng�< 0 	modelname 	modelName�; "0 modelidentifier modelIdentifier�: 0 processorname processorName�9 �8  0 processorspeed processorSpeed�7 �6 0 numprocessors numProcessors�5 �4 0 numcores numCores�3 �2 
0 memory  �1 0 serialnumber serialNumber�M ��kv��,FO�j �-E�O���������vE�O�E�O ]�[a a l kh  D�[a a l kh �� '�a l/E�O��[a \[Zl\Z�a ,2%a %E�Y h[OY��[OY��O�a -E[a k/E` Z[a l/E` Z[a m/E` Z[a a /E` Z[a a /E` Z[a a /E` Z[a a  /E` !Z[a �/E` "Z{ �0 ��/�.��-�0 0 getmodelinfo getModelInfo�/  �.   �,�+�*�)�(�, 0 tmpfiles tmpFiles�+ 0 	endserial 	endSerial�* 0 xmltext xmlText�) 0 textitem textItem�( 0 xmldata xmlData�  ��'�&�%�$�#�"�!�  � � ��� �������'*:�
�' 
ascr
�& 
txdl
�% afdrtemp
�$ .earsffdralis        afdr
�# 
psxp�" 0 serialnumber serialNumber
�! 
ctxt� ��
� .sysoexecTEXT���     TEXT
� 
rslt���
� 
citm
� 
kocl
� 
cobj
� .corecnte****       ****
� .ascrcmnt****      � ****� 0 
configcode 
configCode�- ��kv��,FO�j �,E�O�[�\[Z�\Zi2E�O� �%�%�%j UO�E�O�� +�[�\[Z�\Zi2E�O� a �%a %�%j UO�E�Y hO�a -E�O S�[a a l kh �a  4�j Oa a lv��,FO�a -E�Oa kv��,FO�a l/E` Y h[OY��| �������
� .aevtoappnull  �   � ****� k     '�� F�� P�� S�� V�� b��  �  �  �  � ��������
�	�������
� 
ascr
� 
txdl� 0 	olddelims 	oldDelims� 0 getsysteminfo getSystemInfo� 0 getmodelinfo getModelInfo� 0 	modelname 	modelName� "0 modelidentifier modelIdentifier�
 0 processorname processorName�	  0 processorspeed processorSpeed� 0 numprocessors numProcessors� 0 numcores numCores� 
0 memory  � 0 serialnumber serialNumber� 0 
configcode 
configCode� 	
� .ascrcmnt****      � ****� (��,E�O*j+ O*j+ O���,FO����������vj  ascr  ��ޭ