FasdUAS 1.101.10   ��   ��    k             i         I     �� 	��
�� .aevtoappnull  �   � **** 	 o      ���� 0 argv  ��    k     ? 
 
     l     ��������  ��  ��        r         n         4    �� 
�� 
cobj  m    ����   o     ���� 0 argv    o      ���� 	0 title        r        n        4    �� 
�� 
cobj  m   	 
����   o    ���� 0 argv    o      ���� 0 message Message      r        n         4    �� !
�� 
cobj ! m    ����    o    ���� 0 argv    o      ���� 	0 image     " # " l   �� $ %��   $ , & read the argv, passed from php script    % � & & L   r e a d   t h e   a r g v ,   p a s s e d   f r o m   p h p   s c r i p t #  ' ( ' l   ��������  ��  ��   (  ) * ) l   ��������  ��  ��   *  + , + l   �� - .��   -    pass the message to growl    . � / / 4   p a s s   t h e   m e s s a g e   t o   g r o w l ,  0 1 0 l   �� 2 3��   2    check if growl is running    3 � 4 4 4   c h e c k   i f   g r o w l   i s   r u n n i n g 1  5 6 5 r     7 8 7 I    �� 9���� $0 checkifgrowlruns CheckIfGrowlRuns 9  :�� : m    ���� ��  ��   8 o      ���� 0 	isrunning 	isRunning 6  ; < ; Z    = = >�� ? = >   ! @ A @ o    ���� 0 	isrunning 	isRunning A m     ��
�� boovfals > k   $ 5 B B  C D C l  $ $�� E F��   E   register with growl    F � G G (   r e g i s t e r   w i t h   g r o w l D  H I H I   $ *�� J���� 0 registergrowl RegisterGrowl J  K�� K m   % &���� ��  ��   I  L M L l  + +��������  ��  ��   M  N O N l  + +�� P Q��   P   send the notification    Q � R R ,   s e n d   t h e   n o t i f i c a t i o n O  S T S I   + 3�� U���� $0 sendnotification SendNotification U  V W V o   , -���� 	0 title   W  X Y X o   - .���� 0 message Message Y  Z�� Z o   . /���� 	0 image  ��  ��   T  [ \ [ l  4 4��������  ��  ��   \  ]�� ] l  4 4��������  ��  ��  ��  ��   ? k   8 = ^ ^  _ ` _ l  8 8�� a b��   a . ( if growl doesn't work, say the message	    b � c c P   i f   g r o w l   d o e s n ' t   w o r k ,   s a y   t h e   m e s s a g e 	 `  d�� d I  8 =�� e��
�� .sysottosnull���     TEXT e o   8 9���� 0 message Message��  ��   <  f�� f l  > >��������  ��  ��  ��     g h g l     ��������  ��  ��   h  i j i l     ��������  ��  ��   j  k l k l     ��������  ��  ��   l  m n m l     �� o p��   o ' ! function to check if growl runs.    p � q q B   f u n c t i o n   t o   c h e c k   i f   g r o w l   r u n s . n  r s r i     t u t I      �� v���� $0 checkifgrowlruns CheckIfGrowlRuns v  w�� w o      ���� 0 num  ��  ��   u k      x x  y z y O      { | { r     } ~ } ?      �  l 	   ����� � l    ����� � I   �� ���
�� .corecnte****       **** � l    ����� � 6    � � � 2    ��
�� 
prcs � =    � � � 1   	 ��
�� 
pnam � m     � � � � �  G r o w l H e l p e r A p p��  ��  ��  ��  ��  ��  ��   � m    ����   ~ o      ���� 0 	isrunning 	isRunning | m      � ��                                                                                  sevs  alis    �  Macintosh HD               �i��H+  0�NSystem Events.app                                              1��8CW        ����  	                CoreServices    �is�      �8'7    0�N0�0�
  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   z  ��� � L     � � o    ���� 0 	isrunning 	isRunning��   s  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � / ) function to register our app with growl.    � � � � R   f u n c t i o n   t o   r e g i s t e r   o u r   a p p   w i t h   g r o w l . �  � � � i     � � � I      �� ����� 0 registergrowl RegisterGrowl �  ��� � o      ���� 0 num  ��  ��   � k     2 � �  � � � r      � � � I     �� ����� 0 getpath getPath �  ��� � m    ���� ��  ��   � o      ���� 
0 path_1   �  � � � r   	  � � � l  	  ����� � c   	  � � � n   	  � � � 1   
 ��
�� 
psxp � o   	 
���� 
0 path_1   � m    ��
�� 
TEXT��  ��   � o      ���� 	0 path_   �  � � � O    / � � � k    . � �  � � � l   �� � ���   � 1 + Make a list of all the notification types     � � � � V   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s   �  � � � l   �� � ���   � ' ! that this script will ever send:    � � � � B   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d : �  � � � r     � � � l 	   ����� � J     � �  ��� � m     � � � � � & U p l o a d   N o t i f i c a t i o n��  ��  ��   � l      ����� � o      ���� ,0 allnotificationslist allNotificationsList��  ��   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � ( " Make a list of the notifications     � � � � D   M a k e   a   l i s t   o f   t h e   n o t i f i c a t i o n s   �  � � � l   �� � ���   � - ' that will be enabled by default.          � � � � N   t h a t   w i l l   b e   e n a b l e d   b y   d e f a u l t .             �  � � � l   �� � ���   � 9 3 Those not enabled by default can be enabled later     � � � � f   T h o s e   n o t   e n a b l e d   b y   d e f a u l t   c a n   b e   e n a b l e d   l a t e r   �  � � � l   � � ��   � 7 1 in the 'Applications' tab of the growl prefpane.    � � � � b   i n   t h e   ' A p p l i c a t i o n s '   t a b   o f   t h e   g r o w l   p r e f p a n e . �  � � � r      � � � l 	   ��~�} � J     � �  ��| � m     � � � � � & U p l o a d   N o t i f i c a t i o n�|  �~  �}   � l      ��{�z � o      �y�y 40 enablednotificationslist enabledNotificationsList�{  �z   �  � � � l  ! !�x�w�v�x  �w  �v   �  � � � l  ! !�u � ��u   � &   Register our script with growl.    � � � � @   R e g i s t e r   o u r   s c r i p t   w i t h   g r o w l . �  � � � l  ! !�t � ��t   � 7 1 You can optionally (as here) set a default icon     � � � � b   Y o u   c a n   o p t i o n a l l y   ( a s   h e r e )   s e t   a   d e f a u l t   i c o n   �  � � � l  ! !�s � ��s   � ' ! for this script's notifications.    � � � � B   f o r   t h i s   s c r i p t ' s   n o t i f i c a t i o n s . �  ��r � I  ! .�q�p �
�q .registernull��� ��� null�p   � �o � �
�o 
appl � l 	 # $ ��n�m � m   # $ � � � � �  T i n y D r o p�n  �m   � �l � �
�l 
anot � l 
 % & ��k�j � o   % &�i�i ,0 allnotificationslist allNotificationsList�k  �j   � �h � 
�h 
dnot � l 
 ' (�g�f o   ' (�e�e 40 enablednotificationslist enabledNotificationsList�g  �f    �d�c
�d 
iapp m   ) * �  T i n y D r o p�c  �r   � m    2                                                                                  GRRR  alis    �  Macintosh HD               �i��H+   �]GrowlHelperApp.app                                              ��Ɨ;        ����  	                	Resources     �is�      Ɩ�     �] �Y �X1��0º  YMacintosh HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    M a c i n t o s h   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��   � �b L   0 2�a�a  �b   �  l     �`�_�^�`  �_  �^   	
	 l     �]�]   ' ! function to send a notification.    � B   f u n c t i o n   t o   s e n d   a   n o t i f i c a t i o n .
  i     I      �\�[�\ $0 sendnotification SendNotification  o      �Z�Z 0 nottitle NotTitle  o      �Y�Y 0 
notmessage 
NotMessage �X o      �W�W 0 notimage NotImage�X  �[   k     %  r      I     �V�U�V 0 getpath getPath �T m    �S�S �T  �U   o      �R�R 
0 path_1     r   	 !"! l  	 #�Q�P# c   	 $%$ n   	 &'& 1   
 �O
�O 
psxp' o   	 
�N�N 
0 path_1  % m    �M
�M 
TEXT�Q  �P  " o      �L�L 	0 path_    (�K( O    %)*) k    $++ ,-, l   �J./�J  .   Send a Notification...   / �00 .   S e n d   a   N o t i f i c a t i o n . . .- 1�I1 I   $�H�G2
�H .notifygrnull��� ��� null�G  2 �F34
�F 
name3 l 	  5�E�D5 m    66 �77 & U p l o a d   N o t i f i c a t i o n�E  �D  4 �C89
�C 
titl8 l 	  :�B�A: o    �@�@ 0 nottitle NotTitle�B  �A  9 �?;<
�? 
desc; l 	  =�>�== o    �<�< 0 
notmessage 
NotMessage�>  �=  < �;>?
�; 
appl> l 	  @�:�9@ m    AA �BB  T i n y D r o p�:  �9  ? �8C�7
�8 
iurlC l 	   D�6�5D o     �4�4 0 notimage NotImage�6  �5  �7  �I  * m    EE2                                                                                  GRRR  alis    �  Macintosh HD               �i��H+   �]GrowlHelperApp.app                                              ��Ɨ;        ����  	                	Resources     �is�      Ɩ�     �] �Y �X1��0º  YMacintosh HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    M a c i n t o s h   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  �K   FGF l     �3�2�1�3  �2  �1  G HIH l     �0�/�.�0  �/  �.  I JKJ l     �-�,�+�-  �,  �+  K LML l     �*NO�*  N   function to get path..   O �PP .   f u n c t i o n   t o   g e t   p a t h . .M QRQ i    STS I      �)U�(�) 0 getpath getPathU V�'V o      �&�& 0 num  �'  �(  T k     /WW XYX r     	Z[Z c     \]\ l    ^�%�$^ I    �#_�"
�# .earsffdralis        afdr_  f     �"  �%  �$  ] m    �!
�! 
ctxt[ o      � �  0 mypath myPathY `a` l  
 
�bc�  b 2 ,set myPath to myPath & "Contents:Resources:"   c �dd X s e t   m y P a t h   t o   m y P a t h   &   " C o n t e n t s : R e s o u r c e s : "a efe r   
 ghg n  
 iji 1    �
� 
txdlj 1   
 �
� 
ascrh o      �� 0 tid  f klk r    mnm m    oo �pp  :n n     qrq 1    �
� 
txdlr 1    �
� 
ascrl sts r    uvu n    wxw 2   �
� 
citmx o    �� 0 mypath myPathv o      �� 
0 chunks  t yzy l   �{|�  { G A if last item of chunks is "" then set chunks to chopLast(chunks)   | �}} �   i f   l a s t   i t e m   o f   c h u n k s   i s   " "   t h e n   s e t   c h u n k s   t o   c h o p L a s t ( c h u n k s )z ~~ l   ����  � J D the above accounts for script applications that are package folders   � ��� �   t h e   a b o v e   a c c o u n t s   f o r   s c r i p t   a p p l i c a t i o n s   t h a t   a r e   p a c k a g e   f o l d e r s ��� r    &��� c    $��� I    "���� 0 choplast chopLast� ��� o    �� 
0 chunks  �  �  � m   " #�
� 
ctxt� o      �� 0 myfolderpath myFolderPath� ��� r   ' ,��� o   ' (�� 0 tid  � n     ��� 1   ) +�
� 
txdl� 1   ( )�
� 
ascr� ��� L   - /�� o   - .�
�
 0 myfolderpath myFolderPath�  R ��	� i    ��� I      ���� 0 choplast chopLast� ��� o      �� 0 thelist theList�  �  � L     	�� n     ��� 1    �
� 
rvse� l    ���� n     ��� 1    �
� 
rest� l    �� ��� n     ��� 1    ��
�� 
rvse� o     ���� 0 thelist theList�   ��  �  �  �	       �����������  � ������������
�� .aevtoappnull  �   � ****�� $0 checkifgrowlruns CheckIfGrowlRuns�� 0 registergrowl RegisterGrowl�� $0 sendnotification SendNotification�� 0 getpath getPath�� 0 choplast chopLast� �� ��������
�� .aevtoappnull  �   � ****�� 0 argv  ��  � ���� 0 argv  � 	������������������
�� 
cobj�� 	0 title  �� 0 message Message�� 	0 image  �� $0 checkifgrowlruns CheckIfGrowlRuns�� 0 	isrunning 	isRunning�� 0 registergrowl RegisterGrowl�� $0 sendnotification SendNotification
�� .sysottosnull���     TEXT�� @��k/E�O��l/E�O��m/E�O*kk+ E�O�f *kk+ O*���m+ OPY �j OP� �� u���������� $0 checkifgrowlruns CheckIfGrowlRuns�� ����� �  ���� 0 num  ��  � ������ 0 num  �� 0 	isrunning 	isRunning�  ������ ���
�� 
prcs�  
�� 
pnam
�� .corecnte****       ****�� � *�-�[�,\Z�81j jE�UO�� �� ����������� 0 registergrowl RegisterGrowl�� ����� �  ���� 0 num  ��  � ������������ 0 num  �� 
0 path_1  �� 	0 path_  �� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList� ������ � ��� ������������� 0 getpath getPath
�� 
psxp
�� 
TEXT
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null�� 3*kk+  E�O��,�&E�O� �kvE�O�kvE�O*������� UOh� ������������ $0 sendnotification SendNotification�� ����� �  �������� 0 nottitle NotTitle�� 0 
notmessage 
NotMessage�� 0 notimage NotImage��  � ������������ 0 nottitle NotTitle�� 0 
notmessage 
NotMessage�� 0 notimage NotImage�� 
0 path_1  �� 	0 path_  � ������E��6������A�������� 0 getpath getPath
�� 
psxp
�� 
TEXT
�� 
name
�� 
titl
�� 
desc
�� 
appl
�� 
iurl�� 

�� .notifygrnull��� ��� null�� &*kk+  E�O��,�&E�O� *�������� U� ��T���������� 0 getpath getPath�� ����� �  ���� 0 num  ��  � ������������ 0 num  �� 0 mypath myPath�� 0 tid  �� 
0 chunks  �� 0 myfolderpath myFolderPath� ��������o����
�� .earsffdralis        afdr
�� 
ctxt
�� 
ascr
�� 
txdl
�� 
citm�� 0 choplast chopLast�� 0)j  �&E�O��,E�O���,FO��-E�O*�k+ �&E�O���,FO�� ������������� 0 choplast chopLast�� ����� �  ���� 0 thelist theList��  � ���� 0 thelist theList� ����
�� 
rvse
�� 
rest�� 
��,�,�,Eascr  ��ޭ