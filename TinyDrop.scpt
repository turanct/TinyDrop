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
TEXT��  ��    o      ���� 	0 path_     ! " ! l   ��������  ��  ��   "  # $ # l   �� % &��   %   set processfile variable    & � ' ' 2   s e t   p r o c e s s f i l e   v a r i a b l e $  ( ) ( r     * + * b     , - , o    ���� 	0 path_   - m     . . � / /  / c l i . p h p + o      ���� 0 processfile PROCESSFILE )  0 1 0 l   ��������  ��  ��   1  2 3 2 l   �� 4 5��   4   create list    5 � 6 6    c r e a t e   l i s t 3  7 8 7 r     9 : 9 J    ����   : o      ���� 0 linklist   8  ; < ; l   ��������  ��  ��   <  = > = l   �� ? @��   ? 2 , create loop going trough every dropped file    @ � A A X   c r e a t e   l o o p   g o i n g   t r o u g h   e v e r y   d r o p p e d   f i l e >  B C B l   X D E F D X    X G�� H G k   , S I I  J K J l  , ,��������  ��  ��   K  L M L r   , 3 N O N n   , 1 P Q P 1   / 1��
�� 
strq Q n   , / R S R 1   - /��
�� 
psxp S o   , -���� 0 onefile oneFile O o      ���� 0 filepath FilePath M  T U T l  4 4��������  ��  ��   U  V W V l  4 4�� X Y��   X   run php script    Y � Z Z    r u n   p h p   s c r i p t W  [ \ [ r   4 B ] ^ ] c   4 @ _ ` _ I   4 >�� a���� 0 runphp RunPHP a  b�� b b   5 : c d c b   5 8 e f e o   5 6���� 0 processfile PROCESSFILE f m   6 7 g g � h h    0   d o   8 9���� 0 filepath FilePath��  ��   ` m   > ?��
�� 
ctxt ^ o      ���� 0 onlineimage OnlineImage \  i j i l  C C��������  ��  ��   j  k l k l  C C�� m n��   m   add to list    n � o o    a d d   t o   l i s t l  p q p Z   C Q r s���� r >  C F t u t o   C D���� 0 onlineimage OnlineImage u m   D E v v � w w   s r   I M x y x o   I J���� 0 onlineimage OnlineImage y l      z���� z n       { | {  ;   K L | o   J K���� 0 linklist  ��  ��  ��  ��   q  }�� } l  R R��������  ��  ��  ��  �� 0 onefile oneFile H o     ���� 0 droppedfiles DroppedFiles E = 7 go back for another (assuming a one-at-a-time process)    F � ~ ~ n   g o   b a c k   f o r   a n o t h e r   ( a s s u m i n g   a   o n e - a t - a - t i m e   p r o c e s s ) C   �  l  Y Y��������  ��  ��   �  � � � l  Y Y�� � ���   �   default browser    � � � �     d e f a u l t   b r o w s e r �  � � � X   Y s ��� � � I  i n�� ���
�� .GURLGURLnull��� ��� TEXT � o   i j���� 0 img_url  ��  �� 0 img_url   � o   \ ]���� 0 linklist   �  � � � l  t t��������  ��  ��   �  � � � l  t t��������  ��  ��   �  ��� � L   t v����  ��     � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � k     � �  � � � l     �� � ���   �   create path variable    � � � � *   c r e a t e   p a t h   v a r i a b l e �  � � � r      � � � I     �� ����� 0 getpath getPath �  ��� � m    ���� ��  ��   � o      ���� 
0 path_1   �  � � � r   	  � � � l  	  ����� � c   	  � � � n   	  � � � 1   
 ��
�� 
psxp � o   	 
���� 
0 path_1   � m    ��
�� 
TEXT��  ��   � o      ���� 	0 path_   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   �   set processfile variable    � � � � 2   s e t   p r o c e s s f i l e   v a r i a b l e �  � � � r     � � � b     � � � o    ���� 	0 path_   � m     � � � � �  / c l i . p h p � o      ���� 0 processfile PROCESSFILE �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   �   get available filehosts    � � � � 0   g e t   a v a i l a b l e   f i l e h o s t s �  � � � r    # � � � c    ! � � � I    �� ����� 0 runphp RunPHP �  ��� � b     � � � o    ���� 0 processfile PROCESSFILE � m     � � � � �    2��  ��   � m     ��
�� 
ctxt � o      ���� ,0 usefilehostlistplain UseFilehostListPlain �  � � � l  $ $��������  ��  ��   �  � � � l  $ $�� � ���   �   parse    � � � �    p a r s e �  � � � r   $ ) � � � n  $ ' � � � 1   % '�
� 
txdl � 1   $ %�~
�~ 
ascr � o      �}�} 0 olddelim OldDelim �  � � � r   * / � � � m   * + � � � � � 
 P A R S E � n      � � � 1   , .�|
�| 
txdl � 1   + ,�{
�{ 
ascr �  � � � r   0 7 � � � n   0 3 � � � 2  1 3�z
�z 
citm � o   0 1�y�y ,0 usefilehostlistplain UseFilehostListPlain � o      �x�x "0 usefilehostlist UseFilehostList �  � � � r   8 = � � � o   8 9�w�w 0 olddelim OldDelim � n      � � � 1   : <�v
�v 
txdl � 1   9 :�u
�u 
ascr �  � � � l  > >�t�s�r�t  �s  �r   �  � � � l  > >�q�p�o�q  �p  �o   �  � � � l  > >�n � ��n   � &   choose filehost in popup window    � � � � @   c h o o s e   f i l e h o s t   i n   p o p u p   w i n d o w �  � � � r   > K � � � c   > G � � � l  > E ��m�l � I  > E�k �j
�k .gtqpchltns    @   @ ns    o   > A�i�i "0 usefilehostlist UseFilehostList�j  �m  �l   � m   E F�h
�h 
ctxt � o      �g�g 0 usefilehost UseFilehost �  l  L L�f�e�d�f  �e  �d    l  L L�c�b�a�c  �b  �a    r   L S o   L O�`�` 0 usefilehost UseFilehost o      �_�_ 0 useuserdata UseUserdata 	
	 l  T T�^�]�\�^  �]  �\  
  l  T T�[�Z�Y�[  �Z  �Y    l  T T�X�X     get username    �    g e t   u s e r n a m e  r   T � n   T � 1   � ��W
�W 
ttxt l  T ��V�U I  T ��T
�T .sysodlogaskr        TEXT b   T _ m   T W � & E n t e r   U s e r n a m e   f o r   n   W ^  l 	 Z ^!�S�R! 1   Z ^�Q
�Q 
strq�S  �R    l 
 W Z"�P�O" o   W Z�N�N 0 usefilehost UseFilehost�P  �O   �M#$
�M 
appr# l 	 b e%�L�K% m   b e&& �'' " T i n y D r o p   S e t t i n g s�L  �K  $ �J()
�J 
disp( l 
 h k*�I�H* m   h k�G
�G stic   �I  �H  ) �F+,
�F 
dtxt+ l 	 n q-�E�D- m   n q.. �//  �E  �D  , �C01
�C 
btns0 l 
 t y2�B�A2 J   t y33 4�@4 m   t w55 �66  S e t   P a s s w o r d . . .�@  �B  �A  1 �?7�>
�? 
dflt7 m   | }�=�= �>  �V  �U   o      �<�< 0 useusername UseUsername 898 l  � ��;�:�9�;  �:  �9  9 :;: l  � ��8<=�8  <   get password   = �>>    g e t   p a s s w o r d; ?@? r   � �ABA n   � �CDC 1   � ��7
�7 
ttxtD l  � �E�6�5E I  � ��4FG
�4 .sysodlogaskr        TEXTF b   � �HIH m   � �JJ �KK & E n t e r   P a s s w o r d   f o r  I n   � �LML l 	 � �N�3�2N 1   � ��1
�1 
strq�3  �2  M l 
 � �O�0�/O o   � ��.�. 0 useusername UseUsername�0  �/  G �-PQ
�- 
apprP l 	 � �R�,�+R m   � �SS �TT " T i n y D r o p   S e t t i n g s�,  �+  Q �*UV
�* 
dispU l 
 � �W�)�(W m   � ��'
�' stic   �)  �(  V �&XY
�& 
dtxtX l 	 � �Z�%�$Z m   � �[[ �\\  �%  �$  Y �#]^
�# 
btns] l 
 � �_�"�!_ J   � �`` a� a m   � �bb �cc  D o n e�   �"  �!  ^ �d�
� 
dfltd m   � ��� �  �6  �5  B o      �� 0 usepassword UsePassword@ efe l  � �����  �  �  f ghg l  � ��ij�  i   concat   j �kk    c o n c a th lml r   � �non b   � �pqp b   � �rsr b   � �tut b   � �vwv o   � ��� 0 usefilehost UseFilehostw m   � �xx �yy 
 P A R S Eu o   � ��� 0 useusername UseUsernames m   � �zz �{{ 
 P A R S Eq o   � ��� 0 usepassword UsePasswordo o      �� 0 useuserdata UseUserdatam |}| l  � �����  �  �  } ~~ l  � �����  �  �   ��� l  � �����  �   write to file	   � ���    w r i t e   t o   f i l e 	� ��� l  � �����  �   run php script   � ���    r u n   p h p   s c r i p t� ��� r   � ���� c   � ���� I   � ����
� 0 runphp RunPHP� ��	� b   � ���� b   � ���� o   � ��� 0 processfile PROCESSFILE� m   � ��� ���    1  � o   � ��� 0 useuserdata UseUserdata�	  �
  � m   � ��
� 
ctxt� o      �� 0 usesaved UseSaved� ��� l  � �����  �  �  � ��� I  ����
� .sysodlogaskr        TEXT� o   � �� �  0 usesaved UseSaved� ����
�� 
appr� m   � ��� ��� " T i n y D r o p   S e t t i n g s� ����
�� 
disp� m   � ��
�� stic   � ����
�� 
btns� J  �� ���� m  �� ���  O k��  � �����
�� 
dflt� m  ���� ��  � ���� l ��������  ��  ��  ��   � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   function to get path..   � ��� .   f u n c t i o n   t o   g e t   p a t h . .� ��� i    ��� I      ������� 0 getpath getPath� ���� o      ���� 0 num  ��  ��  � k     5�� ��� r     	��� c     ��� l    ������ I    �����
�� .earsffdralis        afdr�  f     ��  ��  ��  � m    ��
�� 
ctxt� o      ���� 0 mypath myPath� ��� r   
 ��� b   
 ��� o   
 ���� 0 mypath myPath� m    �� ��� & C o n t e n t s : R e s o u r c e s :� o      ���� 0 mypath myPath� ��� r    ��� n   ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� o      ���� 0 tid  � ��� r    ��� m    �� ���  :� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    !��� n    ��� 2   ��
�� 
citm� o    ���� 0 mypath myPath� o      ���� 
0 chunks  � ��� l  " "������  � G A if last item of chunks is "" then set chunks to chopLast(chunks)   � ��� �   i f   l a s t   i t e m   o f   c h u n k s   i s   " "   t h e n   s e t   c h u n k s   t o   c h o p L a s t ( c h u n k s )� ��� l  " "������  � J D the above accounts for script applications that are package folders   � ��� �   t h e   a b o v e   a c c o u n t s   f o r   s c r i p t   a p p l i c a t i o n s   t h a t   a r e   p a c k a g e   f o l d e r s� ��� r   " ,��� c   " *��� I   " (������� 0 choplast chopLast� ���� o   # $���� 
0 chunks  ��  ��  � m   ( )��
�� 
ctxt� o      ���� 0 myfolderpath myFolderPath� ��� r   - 2��� o   - .���� 0 tid  � n     ��� 1   / 1��
�� 
txdl� 1   . /��
�� 
ascr� ���� L   3 5�� o   3 4���� 0 myfolderpath myFolderPath��  � ��� i    ��� I      ������� 0 choplast chopLast� ���� o      ���� 0 thelist theList��  ��  � L     	   n      1    ��
�� 
rvse l    ���� n      1    ��
�� 
rest l    ���� n      1    ��
�� 
rvse o     ���� 0 thelist theList��  ��  ��  ��  � 	
	 l     ��������  ��  ��  
  l     ��������  ��  ��    l     ����     function to run php code    � 2   f u n c t i o n   t o   r u n   p h p   c o d e �� i     I      ������ 0 runphp RunPHP �� o      ���� 
0 linkje  ��  ��   k       l     ��������  ��  ��    r     	 I    ����
�� .sysoexecTEXT���     TEXT b       m     !! �""  p h p    o    ���� 
0 linkje  ��   o      ���� 0 	phpreturn 	phpReturn #$# l  
 
��������  ��  ��  $ %��% L   
 && o   
 ���� 0 	phpreturn 	phpReturn��  ��       ��'()*+,��  ' ����������
�� .aevtodocnull  �    alis
�� .aevtoappnull  �   � ****�� 0 getpath getPath�� 0 choplast chopLast�� 0 runphp RunPHP( �� ����-.��
�� .aevtodocnull  �    alis�� 0 droppedfiles DroppedFiles��  - 	�������������������� 0 droppedfiles DroppedFiles�� 
0 path_1  �� 	0 path_  �� 0 processfile PROCESSFILE�� 0 linklist  �� 0 onefile oneFile�� 0 filepath FilePath�� 0 onlineimage OnlineImage�� 0 img_url  . ������ .�������� g���� v���� 0 getpath getPath
�� 
psxp
�� 
TEXT
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
strq�� 0 runphp RunPHP
�� 
ctxt
�� .GURLGURLnull��� ��� TEXT�� w*kk+  E�O��,�&E�O��%E�OjvE�O ;�[��l kh ��,�,E�O*��%�%k+ 	�&E�O�� 	��6FY hOP[OY��O �[��l kh �j [OY��Oh) �� �����/0��
�� .aevtoappnull  �   � ****��  ��  /  0 /���������� ��� �����~�}�|�{ ��z�y�x�w�v�u�t&�s�r�q.�p5�o�n�m�l�kJS[b�jxz��i���h�� 0 getpath getPath�� 
0 path_1  
�� 
psxp
�� 
TEXT�� 	0 path_  �� 0 processfile PROCESSFILE�� 0 runphp RunPHP
� 
ctxt�~ ,0 usefilehostlistplain UseFilehostListPlain
�} 
ascr
�| 
txdl�{ 0 olddelim OldDelim
�z 
citm�y "0 usefilehostlist UseFilehostList
�x .gtqpchltns    @   @ ns  �w 0 usefilehost UseFilehost�v 0 useuserdata UseUserdata
�u 
strq
�t 
appr
�s 
disp
�r stic   
�q 
dtxt
�p 
btns
�o 
dflt�n 

�m .sysodlogaskr        TEXT
�l 
ttxt�k 0 useusername UseUsername�j 0 usepassword UsePassword�i 0 usesaved UseSaved�h ��*kk+  E�O��,�&E�O��%E�O*��%k+ �&E�O��,E�O���,FO��-E` O���,FO_ j �&E` O_ E` Oa _ a ,%a a a a a a a a kva ka   a !,E` "Oa #_ "a ,%a a $a a a a %a a &kva ka   a !,E` 'O_ a (%_ "%a )%_ '%E` O*�a *%_ %k+ �&E` +O_ +a a ,a a a a -kva ka .  OP* �g��f�e12�d�g 0 getpath getPath�f �c3�c 3  �b�b 0 num  �e  1 �a�`�_�^�]�a 0 num  �` 0 mypath myPath�_ 0 tid  �^ 
0 chunks  �] 0 myfolderpath myFolderPath2 �\�[��Z�Y��X�W
�\ .earsffdralis        afdr
�[ 
ctxt
�Z 
ascr
�Y 
txdl
�X 
citm�W 0 choplast chopLast�d 6)j  �&E�O��%E�O��,E�O���,FO��-E�O*�k+ �&E�O���,FO�+ �V��U�T45�S�V 0 choplast chopLast�U �R6�R 6  �Q�Q 0 thelist theList�T  4 �P�P 0 thelist theList5 �O�N
�O 
rvse
�N 
rest�S 
��,�,�,E, �M�L�K78�J�M 0 runphp RunPHP�L �I9�I 9  �H�H 
0 linkje  �K  7 �G�F�G 
0 linkje  �F 0 	phpreturn 	phpReturn8 !�E
�E .sysoexecTEXT���     TEXT�J �%j E�O�ascr  ��ޭ