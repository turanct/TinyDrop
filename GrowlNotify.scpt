FasdUAS 1.101.10   ��   ��    k             i         I     �� 	��
�� .aevtoappnull  �   � **** 	 o      ���� 0 argv  ��    k     b 
 
     l     ��������  ��  ��        r         n         4    �� 
�� 
cobj  m    ����   o     ���� 0 argv    o      ���� 0 notifyaction        l   ��  ��    , & read the argv, passed from php script     �   L   r e a d   t h e   a r g v ,   p a s s e d   f r o m   p h p   s c r i p t      l   ��  ��      1 is file uploaded     �   &   1   i s   f i l e   u p l o a d e d      l   ��   !��       5 is all files done    ! � " " (   5   i s   a l l   f i l e s   d o n e   # $ # l   ��������  ��  ��   $  % & % Z    8 ' ( ) * ' l   
 +���� + =    
 , - , o    ���� 0 notifyaction   - m    	 . . � / /  1��  ��   ( r     0 1 0 b     2 3 2 m     4 4 � 5 5  U p l o a d e d   3 n     6 7 6 4    �� 8
�� 
cobj 8 m    ����  7 o    ���� 0 argv   1 o      ���� 0 message Message )  9 : 9 l    ;���� ; =     < = < o    ���� 0 notifyaction   = m     > > � ? ?  2��  ��   :  @ A @ r    & B C B b    $ D E D n    " F G F 4    "�� H
�� 
cobj H m     !����  G o    ���� 0 argv   E m   " # I I � J J H   i s   n o t   a n   i m a g e .   F i l e   N o t   U p l o a d e d . C o      ���� 0 message Message A  K L K l  ) , M���� M =   ) , N O N o   ) *���� 0 notifyaction   O m   * + P P � Q Q  5��  ��   L  R�� R r   / 2 S T S m   / 0 U U � V V ( A l l   f i l e s   c o m p l e t e d . T o      ���� 0 message Message��   * r   5 8 W X W m   5 6 Y Y � Z Z & W r o n g   N o t i f y   A c t i o n X o      ���� 0 message Message &  [ \ [ l  9 9��������  ��  ��   \  ] ^ ] l  9 9��������  ��  ��   ^  _ ` _ l  9 9�� a b��   a    pass the message to growl    b � c c 4   p a s s   t h e   m e s s a g e   t o   g r o w l `  d e d l  9 9�� f g��   f    check if growl is running    g � h h 4   c h e c k   i f   g r o w l   i s   r u n n i n g e  i j i r   9 A k l k I   9 ?�� m���� $0 checkifgrowlruns CheckIfGrowlRuns m  n�� n m   : ;���� ��  ��   l o      ���� 0 	isrunning 	isRunning j  o p o Z   B ` q r�� s q >  B E t u t o   B C���� 0 	isrunning 	isRunning u m   C D��
�� boovfals r k   H X v v  w x w l  H H�� y z��   y   register with growl    z � { { (   r e g i s t e r   w i t h   g r o w l x  | } | I   H N�� ~���� 0 registergrowl RegisterGrowl ~  ��  m   I J���� ��  ��   }  � � � l  O O��������  ��  ��   �  � � � l  O O�� � ���   �   send the notification    � � � � ,   s e n d   t h e   n o t i f i c a t i o n �  � � � I   O V�� ����� $0 sendnotification SendNotification �  � � � m   P Q � � � � �  T i n y D r o p �  ��� � o   Q R���� 0 message Message��  ��   �  � � � l  W W��������  ��  ��   �  ��� � l  W W��������  ��  ��  ��  ��   s k   [ ` � �  � � � l  [ [�� � ���   � . ( if growl doesn't work, say the message	    � � � � P   i f   g r o w l   d o e s n ' t   w o r k ,   s a y   t h e   m e s s a g e 	 �  ��� � I  [ `�� ���
�� .sysottosnull���     TEXT � o   [ \���� 0 message Message��  ��   p  ��� � l  a a��������  ��  ��  ��     � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ' ! function to check if growl runs.    � � � � B   f u n c t i o n   t o   c h e c k   i f   g r o w l   r u n s . �  � � � i     � � � I      �� ����� $0 checkifgrowlruns CheckIfGrowlRuns �  ��� � o      ���� 0 num  ��  ��   � k      � �  � � � O      � � � r     � � � ?     � � � l 	   ����� � l    ����� � I   �� ���
�� .corecnte****       **** � l    ����� � 6    � � � 2    ��
�� 
prcs � =    � � � 1   	 ��
�� 
pnam � m     � � � � �  G r o w l H e l p e r A p p��  ��  ��  ��  ��  ��  ��   � m    ����   � o      ���� 0 	isrunning 	isRunning � m      � ��                                                                                  sevs   alis    �  Macintosh HD               �i��H+     uSystem Events.app                                                �I�f�W        ����  	                CoreServices    �is�      �f�7       u   1   0  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  ��� � L     � � o    ���� 0 	isrunning 	isRunning��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � / ) function to register our app with growl.    � � � � R   f u n c t i o n   t o   r e g i s t e r   o u r   a p p   w i t h   g r o w l . �  � � � i     � � � I      �� ����� 0 registergrowl RegisterGrowl �  ��� � o      ���� 0 num  ��  ��   � k     2 � �  � � � r      � � � I     �� ����� 0 getpath getPath �  ��� � m    ���� ��  ��   � o      ���� 
0 path_1   �  � � � r   	  � � � l  	  ����� � c   	  � � � n   	  � � � 1   
 ��
�� 
psxp � o   	 
���� 
0 path_1   � m    ��
�� 
TEXT��  ��   � o      �� 	0 path_   �  � � � O    / � � � k    . � �  � � � l   �~ � ��~   � 1 + Make a list of all the notification types     � � � � V   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s   �  � � � l   �} � ��}   � ' ! that this script will ever send:    � � � � B   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d : �  � � � r     � � � l 	   ��|�{ � J     � �  ��z � m     � � � � � & U p l o a d   N o t i f i c a t i o n�z  �|  �{   � l      ��y�x � o      �w�w ,0 allnotificationslist allNotificationsList�y  �x   �  � � � l   �v�u�t�v  �u  �t   �  � � � l   �s � ��s   � ( " Make a list of the notifications     � � � � D   M a k e   a   l i s t   o f   t h e   n o t i f i c a t i o n s   �  �  � l   �r�r   - ' that will be enabled by default.          � N   t h a t   w i l l   b e   e n a b l e d   b y   d e f a u l t .               l   �q�q   9 3 Those not enabled by default can be enabled later     � f   T h o s e   n o t   e n a b l e d   b y   d e f a u l t   c a n   b e   e n a b l e d   l a t e r   	
	 l   �p�p   7 1 in the 'Applications' tab of the growl prefpane.    � b   i n   t h e   ' A p p l i c a t i o n s '   t a b   o f   t h e   g r o w l   p r e f p a n e .
  r      l 	  �o�n J     �m m     � & U p l o a d   N o t i f i c a t i o n�m  �o  �n   l     �l�k o      �j�j 40 enablednotificationslist enabledNotificationsList�l  �k    l  ! !�i�h�g�i  �h  �g    l  ! !�f�f   &   Register our script with growl.    � @   R e g i s t e r   o u r   s c r i p t   w i t h   g r o w l .   l  ! !�e!"�e  ! 7 1 You can optionally (as here) set a default icon    " �## b   Y o u   c a n   o p t i o n a l l y   ( a s   h e r e )   s e t   a   d e f a u l t   i c o n    $%$ l  ! !�d&'�d  & ' ! for this script's notifications.   ' �(( B   f o r   t h i s   s c r i p t ' s   n o t i f i c a t i o n s .% )�c) I  ! .�b�a*
�b .registernull��� ��� null�a  * �`+,
�` 
appl+ l 	 # $-�_�^- m   # $.. �//  T i n y D r o p�_  �^  , �]01
�] 
anot0 l 
 % &2�\�[2 o   % &�Z�Z ,0 allnotificationslist allNotificationsList�\  �[  1 �Y34
�Y 
dnot3 l 
 ' (5�X�W5 o   ' (�V�V 40 enablednotificationslist enabledNotificationsList�X  �W  4 �U6�T
�U 
iapp6 m   ) *77 �88  T i n y D r o p�T  �c   � m    992                                                                                  GRRR   alis    �  Macintosh HD               �i��H+   �]GrowlHelperApp.app                                              ��Ɨ;        ����  	                	Resources     �is�      Ɩ�     �] �Y �X �     YMacintosh HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    M a c i n t o s h   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��   � :�S: L   0 2�R�R  �S   � ;<; l     �Q�P�O�Q  �P  �O  < =>= l     �N?@�N  ? ' ! function to send a notification.   @ �AA B   f u n c t i o n   t o   s e n d   a   n o t i f i c a t i o n .> BCB i    DED I      �MF�L�M $0 sendnotification SendNotificationF GHG o      �K�K 0 nottitle NotTitleH I�JI o      �I�I 0 
notmessage 
NotMessage�J  �L  E k     %JJ KLK r     MNM I     �HO�G�H 0 getpath getPathO P�FP m    �E�E �F  �G  N o      �D�D 
0 path_1  L QRQ r   	 STS l  	 U�C�BU c   	 VWV n   	 XYX 1   
 �A
�A 
psxpY o   	 
�@�@ 
0 path_1  W m    �?
�? 
TEXT�C  �B  T o      �>�> 	0 path_  R Z�=Z O    %[\[ k    $]] ^_^ l   �<`a�<  `   Send a Notification...   a �bb .   S e n d   a   N o t i f i c a t i o n . . ._ c�;c I   $�:�9d
�: .notifygrnull��� ��� null�9  d �8ef
�8 
namee l 	  g�7�6g m    hh �ii & U p l o a d   N o t i f i c a t i o n�7  �6  f �5jk
�5 
titlj l 	  l�4�3l o    �2�2 0 nottitle NotTitle�4  �3  k �1mn
�1 
descm l 	  o�0�/o o    �.�. 0 
notmessage 
NotMessage�0  �/  n �-pq
�- 
applp l 	  r�,�+r m    ss �tt  T i n y D r o p�,  �+  q �*u�)
�* 
iappu l 	   v�(�'v m     ww �xx  T i n y D r o p�(  �'  �)  �;  \ m    yy2                                                                                  GRRR   alis    �  Macintosh HD               �i��H+   �]GrowlHelperApp.app                                              ��Ɨ;        ����  	                	Resources     �is�      Ɩ�     �] �Y �X �     YMacintosh HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    M a c i n t o s h   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  �=  C z{z l     �&�%�$�&  �%  �$  { |}| l     �#�"�!�#  �"  �!  } ~~ l     � ���   �  �   ��� l     ����  �   function to get path..   � ��� .   f u n c t i o n   t o   g e t   p a t h . .� ��� i    ��� I      ���� 0 getpath getPath� ��� o      �� 0 num  �  �  � k     5�� ��� r     	��� c     ��� l    ���� I    ���
� .earsffdralis        afdr�  f     �  �  �  � m    �
� 
ctxt� o      �� 0 mypath myPath� ��� r   
 ��� b   
 ��� o   
 �� 0 mypath myPath� m    �� ��� & C o n t e n t s : R e s o u r c e s :� o      �� 0 mypath myPath� ��� r    ��� n   ��� 1    �
� 
txdl� 1    �
� 
ascr� o      �� 0 tid  � ��� r    ��� m    �� ���  :� n     ��� 1    �
� 
txdl� 1    �
� 
ascr� ��� r    !��� n    ��� 2   �
� 
citm� o    �
�
 0 mypath myPath� o      �	�	 
0 chunks  � ��� l  " "����  � G A if last item of chunks is "" then set chunks to chopLast(chunks)   � ��� �   i f   l a s t   i t e m   o f   c h u n k s   i s   " "   t h e n   s e t   c h u n k s   t o   c h o p L a s t ( c h u n k s )� ��� l  " "����  � J D the above accounts for script applications that are package folders   � ��� �   t h e   a b o v e   a c c o u n t s   f o r   s c r i p t   a p p l i c a t i o n s   t h a t   a r e   p a c k a g e   f o l d e r s� ��� r   " ,��� c   " *��� I   " (���� 0 choplast chopLast� ��� o   # $�� 
0 chunks  �  �  � m   ( )�
� 
ctxt� o      �� 0 myfolderpath myFolderPath� ��� r   - 2��� o   - .� �  0 tid  � n     ��� 1   / 1��
�� 
txdl� 1   . /��
�� 
ascr� ���� L   3 5�� o   3 4���� 0 myfolderpath myFolderPath��  � ���� i    ��� I      ������� 0 choplast chopLast� ���� o      ���� 0 thelist theList��  ��  � L     	�� n     ��� 1    ��
�� 
rvse� l    ������ n     ��� 1    ��
�� 
rest� l    ������ n     ��� 1    ��
�� 
rvse� o     ���� 0 thelist theList��  ��  ��  ��  ��       �����������  � ������������
�� .aevtoappnull  �   � ****�� $0 checkifgrowlruns CheckIfGrowlRuns�� 0 registergrowl RegisterGrowl�� $0 sendnotification SendNotification�� 0 getpath getPath�� 0 choplast chopLast� �� ��������
�� .aevtoappnull  �   � ****�� 0 argv  ��  � ���� 0 argv  � ���� . 4�� > I P U Y������ �����
�� 
cobj�� 0 notifyaction  �� 0 message Message�� $0 checkifgrowlruns CheckIfGrowlRuns�� 0 	isrunning 	isRunning�� 0 registergrowl RegisterGrowl�� $0 sendnotification SendNotification
�� .sysottosnull���     TEXT�� c��k/E�O��  ��l/%E�Y "��  ��l/�%E�Y ��  �E�Y �E�O*kk+ 
E�O�f *kk+ O*��l+ OPY �j OP� �� ����������� $0 checkifgrowlruns CheckIfGrowlRuns�� ����� �  ���� 0 num  ��  � ������ 0 num  �� 0 	isrunning 	isRunning�  ������ ���
�� 
prcs�  
�� 
pnam
�� .corecnte****       ****�� � *�-�[�,\Z�81j jE�UO�� �� ����������� 0 registergrowl RegisterGrowl�� ����� �  ���� 0 num  ��  � ������������ 0 num  �� 
0 path_1  �� 	0 path_  �� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList� ������9 ���.������7������ 0 getpath getPath
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
�� .registernull��� ��� null�� 3*kk+  E�O��,�&E�O� �kvE�O�kvE�O*������� UOh� ��E���������� $0 sendnotification SendNotification�� ����� �  ������ 0 nottitle NotTitle�� 0 
notmessage 
NotMessage��  � ���������� 0 nottitle NotTitle�� 0 
notmessage 
NotMessage�� 
0 path_1  �� 	0 path_  � ������y��h������s��w������ 0 getpath getPath
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
iapp�� 

�� .notifygrnull��� ��� null�� &*kk+  E�O��,�&E�O� *��������� U� ������������� 0 getpath getPath�� ����� �  ���� 0 num  ��  � ������������ 0 num  �� 0 mypath myPath�� 0 tid  �� 
0 chunks  �� 0 myfolderpath myFolderPath� ��������������
�� .earsffdralis        afdr
�� 
ctxt
�� 
ascr
�� 
txdl
�� 
citm�� 0 choplast chopLast�� 6)j  �&E�O��%E�O��,E�O���,FO��-E�O*�k+ �&E�O���,FO�� ������������� 0 choplast chopLast�� ����� �  ���� 0 thelist theList��  � ���� 0 thelist theList� ����
�� 
rvse
�� 
rest�� 
��,�,�,E ascr  ��ޭ