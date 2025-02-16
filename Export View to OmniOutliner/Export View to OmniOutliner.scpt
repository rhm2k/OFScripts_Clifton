FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	This script generates an OmniOutliner outline from the currently displayed view in OmniFocus.
	
	version 1.2, by Curt Clifton
	
	Copyright � 2007�9, 2015, Curtis Clifton
	
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
     � 	 	D 
 	 T h i s   s c r i p t   g e n e r a t e s   a n   O m n i O u t l i n e r   o u t l i n e   f r o m   t h e   c u r r e n t l y   d i s p l a y e d   v i e w   i n   O m n i F o c u s . 
 	 
 	 v e r s i o n   1 . 2 ,   b y   C u r t   C l i f t o n 
 	 
 	 C o p y r i g h t   �   2 0 0 7  9 ,   2 0 1 5 ,   C u r t i s   C l i f t o n 
 	 
 	 A l l   r i g h t s   r e s e r v e d . 
 	 
 	 R e d i s t r i b u t i o n   a n d   u s e   i n   s o u r c e   a n d   b i n a r y   f o r m s ,   w i t h   o r   w i t h o u t   m o d i f i c a t i o n ,   a r e   p e r m i t t e d   p r o v i d e d   t h a t   t h e   f o l l o w i n g   c o n d i t i o n s   a r e   m e t : 
 	 
 	 	 "   R e d i s t r i b u t i o n s   o f   s o u r c e   c o d e   m u s t   r e t a i n   t h e   a b o v e   c o p y r i g h t   n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r . 
 	 	 
 	 	 "   R e d i s t r i b u t i o n s   i n   b i n a r y   f o r m   m u s t   r e p r o d u c e   t h e   a b o v e   c o p y r i g h t   n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r   i n   t h e   d o c u m e n t a t i o n   a n d / o r   o t h e r   m a t e r i a l s   p r o v i d e d   w i t h   t h e   d i s t r i b u t i o n . 
 	 	 
 	 T H I S   S O F T W A R E   I S   P R O V I D E D   B Y   T H E   C O P Y R I G H T   H O L D E R S   A N D   C O N T R I B U T O R S   " A S   I S "   A N D   A N Y   E X P R E S S   O R   I M P L I E D   W A R R A N T I E S ,   I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   T H E   I M P L I E D   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y   A N D   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A R E   D I S C L A I M E D .   I N   N O   E V E N T   S H A L L   T H E   C O P Y R I G H T   O W N E R   O R   C O N T R I B U T O R S   B E   L I A B L E   F O R   A N Y   D I R E C T ,   I N D I R E C T ,   I N C I D E N T A L ,   S P E C I A L ,   E X E M P L A R Y ,   O R   C O N S E Q U E N T I A L   D A M A G E S   ( I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   P R O C U R E M E N T   O F   S U B S T I T U T E   G O O D S   O R   S E R V I C E S ;   L O S S   O F   U S E ,   D A T A ,   O R   P R O F I T S ;   O R   B U S I N E S S   I N T E R R U P T I O N )   H O W E V E R   C A U S E D   A N D   O N   A N Y   T H E O R Y   O F   L I A B I L I T Y ,   W H E T H E R   I N   C O N T R A C T ,   S T R I C T   L I A B I L I T Y ,   O R   T O R T   ( I N C L U D I N G   N E G L I G E N C E   O R   O T H E R W I S E )   A R I S I N G   I N   A N Y   W A Y   O U T   O F   T H E   U S E   O F   T H I S   S O F T W A R E ,   E V E N   I F   A D V I S E D   O F   T H E   P O S S I B I L I T Y   O F   S U C H   D A M A G E . 
   
  
 l     ��������  ��  ��        l     ����  O         O        r        n        2    ��
�� 
OTtr  1    ��
�� 
FCcn  o      ���� 0 topleveltrees topLevelTrees  4    �� 
�� 
FCdw  m   	 
����   n         4   �� 
�� 
docu  m    ����   m       �                                                                                  OFOC  alis    X  Macintosh HD               �B��H+     EOmniFocus.app                                                  �H�S^1        ����  	                Applications    �C=i      �S��       E  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��        l     ��������  ��  ��        l   0  ����   O    0 ! " ! k    / # #  $ % $ I   !������
�� .miscactvnull��� ��� null��  ��   %  &�� & I  " /���� '
�� .corecrel****      � null��   ' �� ( )
�� 
kocl ( m   $ %��
�� 
docu ) �� *��
�� 
insh * n   & + + , + 8   ) +��
�� 
insl , 2  & )��
�� 
docu��  ��   " m     - -�                                                                                  OOut  alis    f  Macintosh HD               �B��H+     EOmniOutliner.app                                               ~�N�        ����  	                Applications    �C=i      �NwE       E  +Macintosh HD:Applications: OmniOutliner.app   "  O m n i O u t l i n e r . a p p    M a c i n t o s h   H D  Applications/OmniOutliner.app   / ��  ��  ��     . / . l     ��������  ��  ��   /  0 1 0 l  1 7 2���� 2 I   1 7�� 3���� 0 
createrows 
createRows 3  4�� 4 o   2 3���� 0 topleveltrees topLevelTrees��  ��  ��  ��   1  5 6 5 l  8 : 7���� 7 L   8 :����  ��  ��   6  8 9 8 l     ��������  ��  ��   9  : ; : l     �� < =��   < , & theItems is a list of top-level trees    = � > > L   t h e I t e m s   i s   a   l i s t   o f   t o p - l e v e l   t r e e s ;  ? @ ? i      A B A I      �� C���� 0 
createrows 
createRows C  D�� D o      ���� 0 theitems theItems��  ��   B k       E E  F G F Z     H I���� H l     J���� J =     K L K o     ���� 0 theitems theItems L J    ����  ��  ��   I L    	����  ��  ��   G  M N M I    �� O���� 0 	createrow 	createRow O  P�� P n     Q R Q 4    �� S
�� 
cobj S m    ����  R o    ���� 0 theitems theItems��  ��   N  T�� T I     �� U���� 0 
createrows 
createRows U  V�� V n     W X W 1    ��
�� 
rest X o    ���� 0 theitems theItems��  ��  ��   @  Y Z Y l     ��������  ��  ��   Z  [ \ [ l     �� ] ^��   ]   anItem is a tree    ^ � _ _ "   a n I t e m   i s   a   t r e e \  ` a ` i     b c b I      �� d���� 0 	createrow 	createRow d  e�� e o      ���� 0 anitem anItem��  ��   c k     3 f f  g h g r     	 i j i I    ���� k�� 0 
getrowdata 
getRowData��   k �� l��
�� 
from l o    ���� 0 anitem anItem��   j o      ���� 0 rowdata rowData h  m n m O   
 + o p o r    * q r q I   (���� s
�� .corecrel****      � null��   s �� t u
�� 
kocl t m    ��
�� 
OOrw u �� v w
�� 
insh v n     x y x  ;     y 2    ��
�� 
OOsu w �� z��
�� 
prdt z K    $ { { �� | }
�� 
OOtp | l    ~���� ~ n      �  o    ���� 0 rowtopic rowTopic � o    ���� 0 rowdata rowData��  ��   } �� ���
�� 
OOnt � l   " ����� � n    " � � � o     "���� 0 rownote rowNote � o     ���� 0 rowdata rowData��  ��  ��  ��   r o      ���� 0 arow aRow p n   
  � � � 4   �� �
�� 
docu � m    ����  � m   
  � ��                                                                                  OOut  alis    f  Macintosh HD               �B��H+     EOmniOutliner.app                                               ~�N�        ����  	                Applications    �C=i      �NwE       E  +Macintosh HD:Applications: OmniOutliner.app   "  O m n i O u t l i n e r . a p p    M a c i n t o s h   H D  Applications/OmniOutliner.app   / ��   n  ��� � I   , 3�� �����  0 createchildren createChildren �  � � � o   - .���� 0 anitem anItem �  ��� � o   . /���� 0 arow aRow��  ��  ��   a  � � � l     ��������  ��  ��   �  � � � i     � � � I      ���� ��� 0 
getrowdata 
getRowData��   � �� ���
�� 
from � o      ���� 0 anitem anItem��   � k     � � �  � � � w     � � � � k    � � �  � � � Q     � � � � r    
 � � � n     � � � 1    ��
�� 
pnam � o    ���� 0 anitem anItem � o      ���� 0 thetopic theTopic � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 errmsg errMsg � �� ���
�� 
errn � o      ���� 0 errnum errNum��   � k     � �  � � � I   � ��~
� .ascrcmnt****      � **** � b     � � � b     � � � o    �}�} 0 errmsg errMsg � m     � � � � �  :   � o    �|�| 0 errnum errNum�~   �  ��{ � r     � � � m     � � � � �   � o      �z�z 0 thetopic theTopic�{   �  � � � l     �y�x�w�y  �x  �w   �  ��v � Q     � � � � � k   # � � �  � � � r   # ( � � � n   # & � � � 1   $ &�u
�u 
valL � o   # $�t�t 0 anitem anItem � o      �s�s 0 	itemvalue 	itemValue �  � � � r   ) , � � � m   ) * � � � � �   � o      �r�r 0 thenote theNote �  ��q � X   - � ��p � � k   A � � �  � � � I  A H�o ��n
�o .ascrcmnt****      � **** � c   A D � � � o   A B�m�m 0 arun aRun � m   B C�l
�l 
ctxt�n   �  � � � r   I N � � � c   I L � � � o   I J�k�k 0 arun aRun � m   J K�j
�j 
ctxt � o      �i�i 0 runtext runText �  � � � r   O T � � � n   O R � � � m   P R�h
�h 
OSst � o   O P�g�g 0 arun aRun � o      �f�f 0 runstyle runStyle �  � � � r   U j � � � l  U h ��e�d � 6  U h � � � n   U [ � � � 4  V [�c �
�c 
OSsa � m   Y Z�b�b  � o   U V�a�a 0 runstyle runStyle � =  ^ g � � � 1   _ a�`
�` 
pnam � m   b f � � � � �  l i n k�e  �d   � o      �_�_ 0 linkattribute linkAttribute �  � � � r   k r � � � c   k p � � � n   k n � � � 1   l n�^
�^ 
valL � o   k l�]�] 0 linkattribute linkAttribute � m   n o�\
�\ 
ctxt � o      �[�[ &0 linkattributetext linkAttributeText �  ��Z � Z   s � � ��Y � � G   s � � � � =   s x � � � o   s t�X�X &0 linkattributetext linkAttributeText � m   t w � � � � �   � =   { ~ �  � o   { |�W�W &0 linkattributetext linkAttributeText  o   | }�V�V 0 runtext runText � r   � � b   � � o   � ��U�U 0 thenote theNote o   � ��T�T 0 runtext runText o      �S�S 0 thenote theNote�Y   � r   � � b   � � b   � �	
	 b   � � b   � � o   � ��R�R 0 thenote theNote o   � ��Q�Q 0 runtext runText m   � � �    (
 o   � ��P�P &0 linkattributetext linkAttributeText m   � � �  ) o      �O�O 0 thenote theNote�Z  �p 0 arun aRun � n   0 5 2   3 5�N
�N 
catr n   0 3 1   1 3�M
�M 
FCno o   0 1�L�L 0 	itemvalue 	itemValue�q   � R      �K
�K .ascrerr ****      � **** o      �J�J 0 errmsg errMsg �I�H
�I 
errn o      �G�G 0 errnum errNum�H   � k   � �  I  � ��F�E
�F .ascrcmnt****      � **** b   � � b   � � !  o   � ��D�D 0 errmsg errMsg! m   � �"" �##  :   o   � ��C�C 0 errnum errNum�E   $�B$ Z   � �%&�A'% =   � �()( o   � ��@�@ 0 errnum errNum) m   � ��?�?�@& k   � �** +,+ l  � ��>-.�>  - ; 5 Not all tree nodes have notes, so punt on this error   . �// j   N o t   a l l   t r e e   n o d e s   h a v e   n o t e s ,   s o   p u n t   o n   t h i s   e r r o r, 0�=0 r   � �121 m   � �33 �44  2 o      �<�< 0 thenote theNote�=  �A  ' r   � �565 b   � �787 b   � �9:9 m   � �;; �<<  E r r o r  : o   � ��;�; 0 errnum errNum8 m   � �== �>>    g e t t i n g   n o t e6 o      �:�: 0 thenote theNote�B  �v   ��                                                                                  OFOC  alis    X  Macintosh HD               �B��H+     EOmniFocus.app                                                  �H�S^1        ����  	                Applications    �C=i      �S��       E  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   � ?�9? L   � �@@ K   � �AA �8BC�8 0 rowtopic rowTopicB o   � ��7�7 0 thetopic theTopicC �6D�5�6 0 rownote rowNoteD o   � ��4�4 0 thenote theNote�5  �9   � EFE l     �3�2�1�3  �2  �1  F GHG l     �0IJ�0  I   anItem is a tree   J �KK "   a n I t e m   i s   a   t r e eH LML l     �/NO�/  N "  aRow is an OmniOutliner row   O �PP 8   a R o w   i s   a n   O m n i O u t l i n e r   r o wM QRQ i    STS I      �.U�-�.  0 createchildren createChildrenU VWV o      �,�, 0 anitem anItemW X�+X o      �*�* 0 arow aRow�+  �-  T k     YY Z[Z w     \]\ r    ^_^ n    `a` 2    �)
�) 
OTtra o    �(�( 0 anitem anItem_ o      �'�' 0 itemchildren itemChildren]�                                                                                  OFOC  alis    X  Macintosh HD               �B��H+     EOmniFocus.app                                                  �H�S^1        ����  	                Applications    �C=i      �S��       E  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  [ b�&b I    �%c�$�% ,0 createchildrenhelper createChildrenHelperc ded o   	 
�#�# 0 itemchildren itemChildrene f�"f o   
 �!�! 0 arow aRow�"  �$  �&  R ghg l     � ���   �  �  h iji l     �kl�  k &   itemChildren is a list of trees   l �mm @   i t e m C h i l d r e n   i s   a   l i s t   o f   t r e e sj non l     �pq�  p "  aRow is an OmniOutliner row   q �rr 8   a R o w   i s   a n   O m n i O u t l i n e r   r o wo s�s i    tut I      �v�� ,0 createchildrenhelper createChildrenHelperv wxw o      �� 0 itemchildren itemChildrenx y�y o      �� 0 arow aRow�  �  u k     Xzz {|{ Z    }~��} l    �� =    ��� o     �� 0 itemchildren itemChildren� J    ��  �  �  ~ L    	��  �  �  | ��� r    ��� n    ��� 4    ��
� 
cobj� m    �� � o    �� 0 itemchildren itemChildren� o      �� 0 	childitem 	childItem� ��� r    ��� I   �
�	��
 0 
getrowdata 
getRowData�	  � ���
� 
from� o    �� 0 	childitem 	childItem�  � o      �� 0 rowdata rowData� ��� O    D��� r   & C��� I  & A���
� .corecrel****      � null�  � ���
� 
kocl� m   ( )�
� 
OOrw� � ��
�  
prdt� K   * 4�� ����
�� 
OOtp� l  + .������ n   + .��� o   , .���� 0 rowtopic rowTopic� o   + ,���� 0 rowdata rowData��  ��  � �����
�� 
OOnt� l  / 2������ n   / 2��� o   0 2���� 0 rownote rowNote� o   / 0���� 0 rowdata rowData��  ��  ��  � �����
�� 
insh� n   5 ;��� 9   9 ;��
�� 
insl� n   5 9��� 4  6 9���
�� 
OOsu� m   7 8������� o   5 6���� 0 arow aRow��  � o      ���� 0 childrow childRow� n    #��� 4    #���
�� 
docu� m   ! "���� � m     ���                                                                                  OOut  alis    f  Macintosh HD               �B��H+     EOmniOutliner.app                                               ~�N�        ����  	                Applications    �C=i      �NwE       E  +Macintosh HD:Applications: OmniOutliner.app   "  O m n i O u t l i n e r . a p p    M a c i n t o s h   H D  Applications/OmniOutliner.app   / ��  � ��� I   E L�������  0 createchildren createChildren� ��� o   F G���� 0 	childitem 	childItem� ���� o   G H���� 0 childrow childRow��  ��  � ���� I   M X������� ,0 createchildrenhelper createChildrenHelper� ��� n   N S��� 1   O S��
�� 
rest� o   N O���� 0 itemchildren itemChildren� ���� o   S T���� 0 arow aRow��  ��  ��  �       �����������  � �������������� 0 
createrows 
createRows�� 0 	createrow 	createRow�� 0 
getrowdata 
getRowData��  0 createchildren createChildren�� ,0 createchildrenhelper createChildrenHelper
�� .aevtoappnull  �   � ****� �� B���������� 0 
createrows 
createRows�� ����� �  ���� 0 theitems theItems��  � ���� 0 theitems theItems� ��������
�� 
cobj�� 0 	createrow 	createRow
�� 
rest�� 0 
createrows 
createRows�� !�jv  hY hO*��k/k+ O*��,k+ � �� c���������� 0 	createrow 	createRow�� ����� �  ���� 0 anitem anItem��  � �������� 0 anitem anItem�� 0 rowdata rowData�� 0 arow aRow� ���� �����������������������������
�� 
from�� 0 
getrowdata 
getRowData
�� 
docu
�� 
kocl
�� 
OOrw
�� 
insh
�� 
OOsu
�� 
prdt
�� 
OOtp�� 0 rowtopic rowTopic
�� 
OOnt�� 0 rownote rowNote�� �� 
�� .corecrel****      � null��  0 createchildren createChildren�� 4*�l E�O��k/ *���*�-6���,��,�� E�UO*��l+ � �� ����������� 0 
getrowdata 
getRowData��  �� ������
�� 
from�� 0 anitem anItem��  � ������������������������ 0 anitem anItem�� 0 thetopic theTopic�� 0 errmsg errMsg�� 0 errnum errNum�� 0 	itemvalue 	itemValue�� 0 thenote theNote�� 0 arun aRun�� 0 runtext runText�� 0 runstyle runStyle�� 0 linkattribute linkAttribute�� &0 linkattributetext linkAttributeText�  ������ ��� ��� ������������������ � ���"��3;=������
�� 
pnam�� 0 errmsg errMsg� ������
�� 
errn�� 0 errnum errNum��  
�� .ascrcmnt****      � ****
�� 
valL
�� 
FCno
�� 
catr
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
ctxt
�� 
OSst
�� 
OSsa�  
�� 
bool���@�� 0 rowtopic rowTopic�� 0 rownote rowNote�� �� ��Z 
��,E�W X  ��%�%j O�E�O ���,E�O�E�O s��,�-[��l kh ��&j O��&E�O��,E�O�a k/a [�,\Za 81E�O��,�&E�O�a  
 	�� a & 
��%E�Y ��%a %�%a %E�[OY��W .X  �a %�%j O�a   
a E�Y a �%a %E�Oa �a �a � ��T����������  0 createchildren createChildren�� ����� �  ������ 0 anitem anItem�� 0 arow aRow��  � �������� 0 anitem anItem�� 0 arow aRow�� 0 itemchildren itemChildren� ]����
�� 
OTtr�� ,0 createchildrenhelper createChildrenHelper�� �Z��-E�O*��l+ � ��u��������� ,0 createchildrenhelper createChildrenHelper�� �~��~ �  �}�|�} 0 itemchildren itemChildren�| 0 arow aRow��  � �{�z�y�x�w�{ 0 itemchildren itemChildren�z 0 arow aRow�y 0 	childitem 	childItem�x 0 rowdata rowData�w 0 childrow childRow� �v�u�t��s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c
�v 
cobj
�u 
from�t 0 
getrowdata 
getRowData
�s 
docu
�r 
kocl
�q 
OOrw
�p 
prdt
�o 
OOtp�n 0 rowtopic rowTopic
�m 
OOnt�l 0 rownote rowNote�k 
�j 
insh
�i 
OOsu
�h 
insl�g 
�f .corecrel****      � null�e  0 createchildren createChildren
�d 
rest�c ,0 createchildrenhelper createChildrenHelper� Y�jv  hY hO��k/E�O*�l E�O��k/ *�����,��,����i/�4a  E�UO*��l+ O*�a ,�l+ � �b��a�`���_
�b .aevtoappnull  �   � ****� k     :��  ��  ��  0��  5�^�^  �a  �`  �  �  �]�\�[�Z�Y -�X�W�V�U�T�S�R
�] 
docu
�\ 
FCdw
�[ 
FCcn
�Z 
OTtr�Y 0 topleveltrees topLevelTrees
�X .miscactvnull��� ��� null
�W 
kocl
�V 
insh
�U 
insl�T 
�S .corecrel****      � null�R 0 
createrows 
createRows�_ ;��k/ *�k/ 	*�,�-E�UUO� *j O*���*�-�3� UO*�k+ Oh ascr  ��ޭ