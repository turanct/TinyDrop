FasdUAS 1.101.10   ��   ��    k             i         I     �� 	��
�� .aevtodocnull  �    alis 	 o      ���� 0 droppedfiles DroppedFiles��    k     v 
 
     l     ��������  ��  ��        l     ��  ��      create path variable     �   *   c r e a t e   p a t h   v a r i a b l e      r         I     �� ���� 0 getpath getPath   ��  m    ���� ��  ��    o      ���� 
0 path_1        r   	     l  	  ����  c   	     n   	      1   
 ��
�� 
psxp   o   	 
���� 
0 path_1    m    ��
�� 
TEXT��  ��    o      ���� 	0 path_     ! " ! l   �� # $��   #   set processfile variable    $ � % % 2   s e t   p r o c e s s f i l e   v a r i a b l e "  & ' & r     ( ) ( b     * + * o    ���� 	0 path_   + m     , , � - -  / t i n y d r o p . p h p ) o      ���� 0 processfile PROCESSFILE '  . / . l   ��������  ��  ��   /  0 1 0 l   �� 2 3��   2   create list    3 � 4 4    c r e a t e   l i s t 1  5 6 5 r     7 8 7 J    ����   8 o      ���� 0 linklist   6  9 : 9 l   ��������  ��  ��   :  ; < ; l   �� = >��   = 2 , create loop going trough every dropped file    > � ? ? X   c r e a t e   l o o p   g o i n g   t r o u g h   e v e r y   d r o p p e d   f i l e <  @ A @ l   X B C D B X    X E�� F E k   , S G G  H I H l  , ,��������  ��  ��   I  J K J r   , 3 L M L n   , 1 N O N 1   / 1��
�� 
strq O n   , / P Q P 1   - /��
�� 
psxp Q o   , -���� 0 onefile oneFile M o      ���� 0 filepath FilePath K  R S R l  4 4��������  ��  ��   S  T U T l  4 4�� V W��   V   run php script    W � X X    r u n   p h p   s c r i p t U  Y Z Y r   4 B [ \ [ c   4 @ ] ^ ] I   4 >�� _���� 0 runphp RunPHP _  `�� ` b   5 : a b a b   5 8 c d c o   5 6���� 0 processfile PROCESSFILE d m   6 7 e e � f f    0   b o   8 9���� 0 filepath FilePath��  ��   ^ m   > ?��
�� 
ctxt \ o      ���� 0 onlineimage OnlineImage Z  g h g l  C C��������  ��  ��   h  i j i l  C C�� k l��   k   add to list    l � m m    a d d   t o   l i s t j  n o n Z   C Q p q���� p >  C F r s r o   C D���� 0 onlineimage OnlineImage s m   D E t t � u u   q r   I M v w v o   I J���� 0 onlineimage OnlineImage w l      x���� x n       y z y  ;   K L z o   J K���� 0 linklist  ��  ��  ��  ��   o  {�� { l  R R��������  ��  ��  ��  �� 0 onefile oneFile F o     ���� 0 droppedfiles DroppedFiles C = 7 go back for another (assuming a one-at-a-time process)    D � | | n   g o   b a c k   f o r   a n o t h e r   ( a s s u m i n g   a   o n e - a t - a - t i m e   p r o c e s s ) A  } ~ } l  Y Y��������  ��  ��   ~   �  l  Y Y�� � ���   �   safari    � � � �    s a f a r i �  � � � l  Y Y�� � ���   �  tell application "Safari"    � � � � 2 t e l l   a p p l i c a t i o n   " S a f a r i " �  � � � l  Y Y�� � ���   � % set newDoc to make new document    � � � � > s e t   n e w D o c   t o   m a k e   n e w   d o c u m e n t �  � � � l  Y Y�� � ���   � % 	set currWindow to front window    � � � � > 	 s e t   c u r r W i n d o w   t o   f r o n t   w i n d o w �  � � � l  Y Y�� � ���   � &  	repeat with img_url in linklist    � � � � @ 	 r e p e a t   w i t h   i m g _ u r l   i n   l i n k l i s t �  � � � l  Y Y�� � ���   �  open location img_url    � � � � * o p e n   l o c a t i o n   i m g _ u r l �  � � � l  Y Y�� � ���   � S M		make new tab at the end of tabs in currWindow with properties {URL:img_url}    � � � � � 	 	 m a k e   n e w   t a b   a t   t h e   e n d   o f   t a b s   i n   c u r r W i n d o w   w i t h   p r o p e r t i e s   { U R L : i m g _ u r l } �  � � � l  Y Y�� � ���   �  
		activate    � � � �  	 	 a c t i v a t e �  � � � l  Y Y�� � ���   �  	end repeat    � � � �  	 e n d   r e p e a t �  � � � l  Y Y�� � ���   �  end tell    � � � �  e n d   t e l l �  � � � l  Y Y��������  ��  ��   �  � � � l  Y Y�� � ���   �   default browser    � � � �     d e f a u l t   b r o w s e r �  � � � X   Y s ��� � � I  i n�� ���
�� .GURLGURLnull��� ��� TEXT � o   i j���� 0 img_url  ��  �� 0 img_url   � o   \ ]���� 0 linklist   �  � � � l  t t��������  ��  ��   �  � � � l  t t��������  ��  ��   �  ��� � L   t v����  ��     � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � k    $ � �  � � � l     �� � ���   �   choose filehost    � � � �     c h o o s e   f i l e h o s t �  � � � l     �� � ���   � 4 . set UseFilehostList to {"tinypic", "twitpic"}    � � � � \   s e t   U s e F i l e h o s t L i s t   t o   { " t i n y p i c " ,   " t w i t p i c " } �  � � � l     �� � ���   � A ;set UseFilehostList to {"ShareImage", "LulzIMG", "twitpic"}    � � � � v s e t   U s e F i l e h o s t L i s t   t o   { " S h a r e I m a g e " ,   " L u l z I M G " ,   " t w i t p i c " } �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   create path variable    � � � � *   c r e a t e   p a t h   v a r i a b l e �  � � � r      � � � I     �� ����� 0 getpath getPath �  ��� � m    ���� ��  ��   � o      ���� 
0 path_1   �  � � � r   	  � � � l  	  ����� � c   	  � � � n   	  � � � 1   
 ��
�� 
psxp � o   	 
���� 
0 path_1   � m    ��
�� 
TEXT��  ��   � o      ���� 	0 path_   �  � � � l   �� � ���   �   set processfile variable    � � � � 2   s e t   p r o c e s s f i l e   v a r i a b l e �  � � � r     � � � b     � � � o    �� 	0 path_   � m     � � � � �  / t i n y d r o p . p h p � o      �~�~ 0 processfile PROCESSFILE �  �  � l   �}�|�{�}  �|  �{     l   �z�z     get available filehosts    � 0   g e t   a v a i l a b l e   f i l e h o s t s  r    #	 c    !

 I    �y�x�y 0 runphp RunPHP �w b     o    �v�v 0 processfile PROCESSFILE m     �    2�w  �x   m     �u
�u 
ctxt	 o      �t�t ,0 usefilehostlistplain UseFilehostListPlain  l  $ $�s�r�q�s  �r  �q    l  $ $�p�p     parse    �    p a r s e  r   $ ) n  $ ' 1   % '�o
�o 
txdl 1   $ %�n
�n 
ascr o      �m�m 0 olddelim OldDelim   r   * /!"! m   * +## �$$ 
 P A R S E" n     %&% 1   , .�l
�l 
txdl& 1   + ,�k
�k 
ascr  '(' r   0 7)*) n   0 3+,+ 2  1 3�j
�j 
citm, o   0 1�i�i ,0 usefilehostlistplain UseFilehostListPlain* o      �h�h "0 usefilehostlist UseFilehostList( -.- r   8 =/0/ o   8 9�g�g 0 olddelim OldDelim0 n     121 1   : <�f
�f 
txdl2 1   9 :�e
�e 
ascr. 343 l  > >�d�c�b�d  �c  �b  4 565 l  > >�a�`�_�a  �`  �_  6 787 l  > >�^9:�^  9 &   choose filehost in popup window   : �;; @   c h o o s e   f i l e h o s t   i n   p o p u p   w i n d o w8 <=< r   > K>?> c   > G@A@ l  > EB�]�\B I  > E�[C�Z
�[ .gtqpchltns    @   @ ns  C o   > A�Y�Y "0 usefilehostlist UseFilehostList�Z  �]  �\  A m   E F�X
�X 
ctxt? o      �W�W 0 usefilehost UseFilehost= DED l  L L�V�U�T�V  �U  �T  E FGF l  L L�S�R�Q�S  �R  �Q  G HIH r   L SJKJ o   L O�P�P 0 usefilehost UseFilehostK o      �O�O 0 useuserdata UseUserdataI LML l  T T�N�M�L�N  �M  �L  M NON l  T T�KPQ�K  P   if twitpic   Q �RR    i f   t w i t p i cO STS Z   T �UV�J�IU =  T [WXW o   T W�H�H 0 usefilehost UseFilehostX m   W ZYY �ZZ  t w i t p i cV k   ^ �[[ \]\ l  ^ ^�G�F�E�G  �F  �E  ] ^_^ l  ^ ^�D`a�D  `   get username   a �bb    g e t   u s e r n a m e_ cdc r   ^ �efe n   ^ �ghg 1   � ��C
�C 
ttxth l  ^ �i�B�Ai I  ^ ��@jk
�@ .sysodlogaskr        TEXTj b   ^ ilml m   ^ ann �oo & E n t e r   U s e r n a m e   f o r  m n   a hpqp l 	 d hr�?�>r 1   d h�=
�= 
strq�?  �>  q l 
 a ds�<�;s o   a d�:�: 0 usefilehost UseFilehost�<  �;  k �9tu
�9 
apprt l 	 l ov�8�7v m   l oww �xx " T i n y D r o p   S e t t i n g s�8  �7  u �6yz
�6 
dispy l 
 r u{�5�4{ m   r u�3
�3 stic   �5  �4  z �2|}
�2 
dtxt| l 	 x {~�1�0~ m   x { ���  �1  �0  } �/��
�/ 
btns� l 
 ~ ���.�-� J   ~ ��� ��,� m   ~ ��� ���  S e t   P a s s w o r d . . .�,  �.  �-  � �+��*
�+ 
dflt� m   � ��)�) �*  �B  �A  f o      �(�( 0 useusername UseUsernamed ��� l  � ��'�&�%�'  �&  �%  � ��� l  � ��$���$  �   get password   � ���    g e t   p a s s w o r d� ��� r   � ���� n   � ���� 1   � ��#
�# 
ttxt� l  � ���"�!� I  � �� ��
�  .sysodlogaskr        TEXT� b   � ���� m   � ��� ��� & E n t e r   P a s s w o r d   f o r  � n   � ���� l 	 � ����� 1   � ��
� 
strq�  �  � l 
 � ����� o   � ��� 0 useusername UseUsername�  �  � ���
� 
appr� l 	 � ����� m   � ��� ��� " T i n y D r o p   S e t t i n g s�  �  � ���
� 
disp� l 
 � ����� m   � ��
� stic   �  �  � ���
� 
dtxt� l 	 � ����� m   � ��� ���  �  �  � ���
� 
btns� l 
 � ����� J   � ��� ��� m   � ��� ���  D o n e�  �  �  � ���

� 
dflt� m   � ��	�	 �
  �"  �!  � o      �� 0 usepassword UsePassword� ��� l  � �����  �  �  � ��� l  � �����  �   concat   � ���    c o n c a t� ��� r   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ��� 0 usefilehost UseFilehost� m   � ��� ��� 
 P A R S E� o   � ��� 0 useusername UseUsername� m   � ��� ��� 
 P A R S E� o   � ��� 0 usepassword UsePassword� o      � �  0 useuserdata UseUserdata� ���� l  � ���������  ��  ��  ��  �J  �I  T ��� l  � ���������  ��  ��  � ��� l  � �������  �   write to file	   � ���    w r i t e   t o   f i l e 	� ��� l  � �������  �   run php script   � ���    r u n   p h p   s c r i p t� ��� r   � ��� c   � ���� I   � �������� 0 runphp RunPHP� ���� b   � ���� b   � ���� o   � ����� 0 processfile PROCESSFILE� m   � ��� ���    1  � o   � ����� 0 useuserdata UseUserdata��  ��  � m   � ���
�� 
ctxt� o      ���� 0 usesaved UseSaved� ��� l ��������  ��  ��  � ��� I "����
�� .sysodlogaskr        TEXT� o  ���� 0 usesaved UseSaved� ����
�� 
appr� m  
�� ��� " T i n y D r o p   S e t t i n g s� ����
�� 
disp� m  ��
�� stic   � ����
�� 
btns� J  �� ���� m  �� ���  O k��  � �����
�� 
dflt� m  ���� ��  � ���� l ##��������  ��  ��  ��   � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  �    l     ����     function to get path..    � .   f u n c t i o n   t o   g e t   p a t h . .  i     I      ��	���� 0 getpath getPath	 
��
 o      ���� 0 num  ��  ��   k     5  r     	 c      l    ���� I    ����
�� .earsffdralis        afdr  f     ��  ��  ��   m    ��
�� 
ctxt o      ���� 0 mypath myPath  r   
  b   
  o   
 ���� 0 mypath myPath m     � & C o n t e n t s : R e s o u r c e s : o      ���� 0 mypath myPath  r     n    !  1    ��
�� 
txdl! 1    ��
�� 
ascr o      ���� 0 tid   "#" r    $%$ m    && �''  :% n     ()( 1    ��
�� 
txdl) 1    ��
�� 
ascr# *+* r    !,-, n    ./. 2   ��
�� 
citm/ o    ���� 0 mypath myPath- o      ���� 
0 chunks  + 010 l  " "��23��  2 G A if last item of chunks is "" then set chunks to chopLast(chunks)   3 �44 �   i f   l a s t   i t e m   o f   c h u n k s   i s   " "   t h e n   s e t   c h u n k s   t o   c h o p L a s t ( c h u n k s )1 565 l  " "��78��  7 J D the above accounts for script applications that are package folders   8 �99 �   t h e   a b o v e   a c c o u n t s   f o r   s c r i p t   a p p l i c a t i o n s   t h a t   a r e   p a c k a g e   f o l d e r s6 :;: r   " ,<=< c   " *>?> I   " (��@���� 0 choplast chopLast@ A��A o   # $���� 
0 chunks  ��  ��  ? m   ( )��
�� 
ctxt= o      ���� 0 myfolderpath myFolderPath; BCB r   - 2DED o   - .���� 0 tid  E n     FGF 1   / 1��
�� 
txdlG 1   . /��
�� 
ascrC H��H L   3 5II o   3 4���� 0 myfolderpath myFolderPath��   JKJ i    LML I      ��N���� 0 choplast chopLastN O��O o      ���� 0 thelist theList��  ��  M L     	PP n     QRQ 1    ��
�� 
rvseR l    S����S n     TUT 1    ��
�� 
restU l    V����V n     WXW 1    ��
�� 
rvseX o     ���� 0 thelist theList��  ��  ��  ��  K YZY l     ��������  ��  ��  Z [\[ l     ��������  ��  ��  \ ]^] l     ��_`��  _   function to run php code   ` �aa 2   f u n c t i o n   t o   r u n   p h p   c o d e^ b��b i    cdc I      ��e���� 0 runphp RunPHPe f��f o      ���� 
0 linkje  ��  ��  d k     gg hih l     ��������  ��  ��  i jkj r     	lml I    ��n��
�� .sysoexecTEXT���     TEXTn b     opo m     qq �rr  p h p  p o    ���� 
0 linkje  ��  m o      ���� 0 	phpreturn 	phpReturnk sts l  
 
��������  ��  ��  t u��u L   
 vv o   
 ���� 0 	phpreturn 	phpReturn��  ��       ��wxyz{|��  w ����������
�� .aevtodocnull  �    alis
�� .aevtoappnull  �   � ****�� 0 getpath getPath�� 0 choplast chopLast�� 0 runphp RunPHPx �� ����}~��
�� .aevtodocnull  �    alis�� 0 droppedfiles DroppedFiles��  } 	�������������������� 0 droppedfiles DroppedFiles�� 
0 path_1  �� 	0 path_  �� 0 processfile PROCESSFILE�� 0 linklist  �� 0 onefile oneFile�� 0 filepath FilePath�� 0 onlineimage OnlineImage�� 0 img_url  ~ ��~�} ,�|�{�z�y e�x�w t�v� 0 getpath getPath
�~ 
psxp
�} 
TEXT
�| 
kocl
�{ 
cobj
�z .corecnte****       ****
�y 
strq�x 0 runphp RunPHP
�w 
ctxt
�v .GURLGURLnull��� ��� TEXT�� w*kk+  E�O��,�&E�O��%E�OjvE�O ;�[��l kh ��,�,E�O*��%�%k+ 	�&E�O�� 	��6FY hOP[OY��O �[��l kh �j [OY��Ohy �u ��t�s��r
�u .aevtoappnull  �   � ****�t  �s    � 0�q�p�o�n�m ��l�k�j�i�h�g�f#�e�d�c�b�aYn�`�_w�^�]�\�[��Z�Y�X�W�V�����U����T���S�q 0 getpath getPath�p 
0 path_1  
�o 
psxp
�n 
TEXT�m 	0 path_  �l 0 processfile PROCESSFILE�k 0 runphp RunPHP
�j 
ctxt�i ,0 usefilehostlistplain UseFilehostListPlain
�h 
ascr
�g 
txdl�f 0 olddelim OldDelim
�e 
citm�d "0 usefilehostlist UseFilehostList
�c .gtqpchltns    @   @ ns  �b 0 usefilehost UseFilehost�a 0 useuserdata UseUserdata
�` 
strq
�_ 
appr
�^ 
disp
�] stic   
�\ 
dtxt
�[ 
btns
�Z 
dflt�Y 

�X .sysodlogaskr        TEXT
�W 
ttxt�V 0 useusername UseUsername�U 0 usepassword UsePassword�T 0 usesaved UseSaved�S �r%*kk+  E�O��,�&E�O��%E�O*��%k+ �&E�O��,E�O���,FO��-E` O���,FO_ j �&E` O_ E` O_ a   �a _ a ,%a a a a a a a a kva ka   !a ",E` #Oa $_ #a ,%a a %a a a a &a a 'kva ka   !a ",E` (O_ a )%_ #%a *%_ (%E` OPY hO*�a +%_ %k+ �&E` ,O_ ,a a -a a a a .kva ka / !OPz �R�Q�P���O�R 0 getpath getPath�Q �N��N �  �M�M 0 num  �P  � �L�K�J�I�H�L 0 num  �K 0 mypath myPath�J 0 tid  �I 
0 chunks  �H 0 myfolderpath myFolderPath� �G�F�E�D&�C�B
�G .earsffdralis        afdr
�F 
ctxt
�E 
ascr
�D 
txdl
�C 
citm�B 0 choplast chopLast�O 6)j  �&E�O��%E�O��,E�O���,FO��-E�O*�k+ �&E�O���,FO�{ �AM�@�?���>�A 0 choplast chopLast�@ �=��= �  �<�< 0 thelist theList�?  � �;�; 0 thelist theList� �:�9
�: 
rvse
�9 
rest�> 
��,�,�,E| �8d�7�6���5�8 0 runphp RunPHP�7 �4��4 �  �3�3 
0 linkje  �6  � �2�1�2 
0 linkje  �1 0 	phpreturn 	phpReturn� q�0
�0 .sysoexecTEXT���     TEXT�5 �%j E�O�ascr  ��ޭ