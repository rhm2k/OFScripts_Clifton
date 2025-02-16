FasdUAS 1.101.10   ��   ��    k             j     �� �� 
0 author    m        � 	 	  A l e x   B r o w n   
  
 j    �� �� 0 toolname toolName  m       �    R e v e a l      j    �� �� 0 toolversion toolVersion  m       �   
 1 . 4 . 4      j   	 �� �� "0 tooldescription toolDescription  m   	 
   �   W h e n   u s e d   o n   a n   a c t i o n ,   o p e n s   a   n e w   w i n d o w   s h o w i n g   t h e   a c t i o n   i n   i t s   p r o j e c t ,   w i t h   f i l t e r s   a n d   s e a r c h   t e r m s   r e m o v e d ,   a n d   f o c u s   a p p l i e d .      l      ��  ��   �� 
Installation:
	copy to ~/Library/Scripts/Applications/Omnifocus

	note: scripting must be enabled for this to work.

Licence: 

This script is copyright 2007 Alex B Brown
This script is distributed under the terms of the GNU General Public License, version 2.0

Contact:

I regularly check the account alex b brown on the gmail website.

history:

1.4.4: fix inbox / task bug.  Change 'mirror' to reveal throughout
1.4.3: revert get window since it gets from the wrong window! - uploaded
1.4.2: version for upload to omni forums
1.4.1: added warning error on completed actions.  Get window using new interface
1.4: version for upload to omni forums, add GPL Licence.
1.3.4: fix search term filter (has value) bug.
1.3.3: fix flag filter (not all) bug.
1.3.2: undo focus in new window to avoid selection error.  Focus on results (optional)
1.3.1: fix OTVA bug (change to value)
1.3: allowed reveal to work in projects
1.2.2: cleaned up typo, changed things to properties, for no good reason
1.2.1: changed doc format, added bug to todo list
1.2: work for tasks still in inbox
1.1: open up filters
1.0: first release

TODO: 
* Fix bug that actions that contain actions are not leaves!
* Fix bug when revealing completed task
* let actions selected in inbox reveal the project they *would* be in
* find out why the selection doesn't always work
* fix bug "the variable w is not defined" when selecting reveal from in the inbox while editing the project name of an action

note: common bugs are filters and searches left 'implicit' that appear on new windows.  If you get an error, try opening a new window, see what filters are on it, and make sure this code sets those to something sensible.
     �  8   
 I n s t a l l a t i o n : 
 	 c o p y   t o   ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / O m n i f o c u s 
 
 	 n o t e :   s c r i p t i n g   m u s t   b e   e n a b l e d   f o r   t h i s   t o   w o r k . 
 
 L i c e n c e :   
 
 T h i s   s c r i p t   i s   c o p y r i g h t   2 0 0 7   A l e x   B   B r o w n 
 T h i s   s c r i p t   i s   d i s t r i b u t e d   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e ,   v e r s i o n   2 . 0 
 
 C o n t a c t : 
 
 I   r e g u l a r l y   c h e c k   t h e   a c c o u n t   a l e x   b   b r o w n   o n   t h e   g m a i l   w e b s i t e . 
 
 h i s t o r y : 
 
 1 . 4 . 4 :   f i x   i n b o x   /   t a s k   b u g .     C h a n g e   ' m i r r o r '   t o   r e v e a l   t h r o u g h o u t 
 1 . 4 . 3 :   r e v e r t   g e t   w i n d o w   s i n c e   i t   g e t s   f r o m   t h e   w r o n g   w i n d o w !   -   u p l o a d e d 
 1 . 4 . 2 :   v e r s i o n   f o r   u p l o a d   t o   o m n i   f o r u m s 
 1 . 4 . 1 :   a d d e d   w a r n i n g   e r r o r   o n   c o m p l e t e d   a c t i o n s .     G e t   w i n d o w   u s i n g   n e w   i n t e r f a c e 
 1 . 4 :   v e r s i o n   f o r   u p l o a d   t o   o m n i   f o r u m s ,   a d d   G P L   L i c e n c e . 
 1 . 3 . 4 :   f i x   s e a r c h   t e r m   f i l t e r   ( h a s   v a l u e )   b u g . 
 1 . 3 . 3 :   f i x   f l a g   f i l t e r   ( n o t   a l l )   b u g . 
 1 . 3 . 2 :   u n d o   f o c u s   i n   n e w   w i n d o w   t o   a v o i d   s e l e c t i o n   e r r o r .     F o c u s   o n   r e s u l t s   ( o p t i o n a l ) 
 1 . 3 . 1 :   f i x   O T V A   b u g   ( c h a n g e   t o   v a l u e ) 
 1 . 3 :   a l l o w e d   r e v e a l   t o   w o r k   i n   p r o j e c t s 
 1 . 2 . 2 :   c l e a n e d   u p   t y p o ,   c h a n g e d   t h i n g s   t o   p r o p e r t i e s ,   f o r   n o   g o o d   r e a s o n 
 1 . 2 . 1 :   c h a n g e d   d o c   f o r m a t ,   a d d e d   b u g   t o   t o d o   l i s t 
 1 . 2 :   w o r k   f o r   t a s k s   s t i l l   i n   i n b o x 
 1 . 1 :   o p e n   u p   f i l t e r s 
 1 . 0 :   f i r s t   r e l e a s e 
 
 T O D O :   
 *   F i x   b u g   t h a t   a c t i o n s   t h a t   c o n t a i n   a c t i o n s   a r e   n o t   l e a v e s ! 
 *   F i x   b u g   w h e n   r e v e a l i n g   c o m p l e t e d   t a s k 
 *   l e t   a c t i o n s   s e l e c t e d   i n   i n b o x   r e v e a l   t h e   p r o j e c t   t h e y   * w o u l d *   b e   i n 
 *   f i n d   o u t   w h y   t h e   s e l e c t i o n   d o e s n ' t   a l w a y s   w o r k 
 *   f i x   b u g   " t h e   v a r i a b l e   w   i s   n o t   d e f i n e d "   w h e n   s e l e c t i n g   r e v e a l   f r o m   i n   t h e   i n b o x   w h i l e   e d i t i n g   t h e   p r o j e c t   n a m e   o f   a n   a c t i o n 
 
 n o t e :   c o m m o n   b u g s   a r e   f i l t e r s   a n d   s e a r c h e s   l e f t   ' i m p l i c i t '   t h a t   a p p e a r   o n   n e w   w i n d o w s .     I f   y o u   g e t   a n   e r r o r ,   t r y   o p e n i n g   a   n e w   w i n d o w ,   s e e   w h a t   f i l t e r s   a r e   o n   i t ,   a n d   m a k e   s u r e   t h i s   c o d e   s e t s   t h o s e   t o   s o m e t h i n g   s e n s i b l e . 
      l     ��������  ��  ��       !   j    �� "�� 0 setfocus setFocus " m    ��
�� boovtrue !  # $ # l     �� % &��   % * $ create the new window hidden until     & � ' ' H   c r e a t e   t h e   n e w   w i n d o w   h i d d e n   u n t i l   $  ( ) ( j    �� *�� 80 invisiblewhileconstructing invisibleWhileConstructing * m    ��
�� boovtrue )  + , + l     ��������  ��  ��   ,  - . - l   ; /���� / O    ; 0 1 0 k   : 2 2  3 4 3 l    �� 5 6��   5 ( " get the window the user is using     6 � 7 7 D   g e t   t h e   w i n d o w   t h e   u s e r   i s   u s i n g   4  8 9 8 r     : ; : 6    < = < 4   �� >
�� 
FCdw > m   	 
����  = =    ? @ ? 1    ��
�� 
pidx @ m    ����  ; o      ���� 0 w   9  A B A O    � C D C k    � E E  F G F l    �� H I��   H ? 9 find out where we are and if there's anything we can do     I � J J r   f i n d   o u t   w h e r e   w e   a r e   a n d   i f   t h e r e ' s   a n y t h i n g   w e   c a n   d o   G  K L K r      M N M l    O���� O 1    ��
�� 
FCvm��  ��   N o      ���� 0 mode   L  P Q P l  ! !��������  ��  ��   Q  R S R l   ! !�� T U��   T p j if we are in a project, and there exists a context, we can show the context.  But that's for later on...     U � V V �   i f   w e   a r e   i n   a   p r o j e c t ,   a n d   t h e r e   e x i s t s   a   c o n t e x t ,   w e   c a n   s h o w   t h e   c o n t e x t .     B u t   t h a t ' s   f o r   l a t e r   o n . . .   S  W X W l  ! !��������  ��  ��   X  Y Z Y r   ! ( [ \ [ n   ! & ] ^ ] 2  $ &��
�� 
OTst ^ 1   ! $��
�� 
FCcn \ o      ���� 0 theitems theItems Z  _ ` _ l  ) )��������  ��  ��   `  a b a Z   ) G c d���� c l  ) 0 e���� e =  ) 0 f g f l  ) . h���� h I  ) .�� i��
�� .corecnte****       **** i o   ) *���� 0 theitems theItems��  ��  ��   g m   . /����  ��  ��   d k   3 C j j  k l k I  3 @�� m n
�� .sysodisAaleR        TEXT m b   3 : o p o l 	 3 4 q���� q m   3 4 r r � s s ( S e l e c t   a n   a c t i o n   t o  ��  ��   p o   4 9���� 0 toolname toolName n �� t��
�� 
mesS t m   ; < u u � v v > Y o u   h a v e   n o t   s e l e c t e d   a n   a c t i o n��   l  w�� w L   A C����  ��  ��  ��   b  x y x l  H H��������  ��  ��   y  z { z Z   H j | }���� | l  H O ~���� ~ ?  H O  �  l  H M ����� � I  H M�� ���
�� .corecnte****       **** � o   H I���� 0 theitems theItems��  ��  ��   � m   M N���� ��  ��   } k   R f � �  � � � I  R c�� � �
�� .sysodisAaleR        TEXT � b   R [ � � � l 	 R U ����� � m   R U � � � � � 4 S e l e c t   j u s t   o n e   a c t i o n   t o  ��  ��   � o   U Z���� 0 toolname toolName � �� ���
�� 
mesS � m   \ _ � � � � � x Y o u   h a v e   s e l e c t e d   m o r e   t h a n   o n e   i t e m ,   p l e a s e   s e l e c t   j u s t   o n e��   �  ��� � L   d f����  ��  ��  ��   {  � � � l  k k��������  ��  ��   �  � � � I  k p�� ���
�� .ascrcmnt****      � **** � l  k l ����� � o   k l���� 0 theitems theItems��  ��  ��   �  � � � l  q q��������  ��  ��   �  � � � r   q  � � � n   q { � � � 1   w {��
�� 
valL � n   q w � � � 4   r w�� �
�� 
cobj � m   u v����  � o   q r���� 0 theitems theItems � o      ���� 0 selecteditem selectedItem �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � , &set selectedItem to item 1 of theItems    � � � � L s e t   s e l e c t e d I t e m   t o   i t e m   1   o f   t h e I t e m s �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � l  � � ����� � >  � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
pcls � o   � ����� 0 selecteditem selectedItem��  ��   � m   � ���
�� 
FCac��  ��   � k   � � � �  � � � I  � ��� � �
�� .sysodisAaleR        TEXT � b   � � � � � l 	 � � ����� � m   � � � � � � � ( S e l e c t   a n   a c t i o n   t o  ��  ��   � o   � ����� 0 toolname toolName � �� ���
�� 
mesS � m   � � � � � � � ` Y o u   h a v e   s e l e c t e d   s o m e t h i n g   t h a t   i s n ' t   a n   a c t i o n��   �  ��� � L   � �����  ��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � l  � � ���� � n   � � � � � 1   � ��~
�~ 
FCcd � o   � ��}�} 0 selecteditem selectedItem��  �   � k   � � � �  � � � I  � ��| ��{
�| .sysodisAaleR        TEXT � l 	 � � ��z�y � m   � � � � � � � l C a n n o t   r e v e a l   c o m p l e t e d   a c t i o n s   i n   v e r s i o n   1   o f   r e v e a l�z  �y  �{   �  ��x � L   � ��w�w  �x  ��  ��   �  ��v � l  � ��u�t�s�u  �t  �s  �v   D o    �r�r 0 w   B  � � � l  � ��q�p�o�q  �p  �o   �  � � � l   � ��n � ��n   �   make a new window     � � � � &   m a k e   a   n e w   w i n d o w   �  � � � r   � � � � � I  � ��m � �
�m .corecrel****      � null � m   � ��l
�l 
FCdw � �k ��j
�k 
prdt � l 	 � � ��i�h � l 	 � � ��g�f � l 
 � � ��e�d � K   � � � � �c � �
�c 
pvis � H   � � � � o   � ��b�b 80 invisiblewhileconstructing invisibleWhileConstructing � �a � �
�a 
FCvm � m   � � � � � � �  p r o j e c t � �` ��_
�` 
FC~= � m   � � � � � � �  �_  �e  �d  �g  �f  �i  �h  �j   � o      �^�^ 0 neww newW �  � � � e   � � � � n   � � � � � 1   � ��]
�] 
FCFF � n   � � � � � 1   � ��\
�\ 
FCcn � o   � ��[�[ 0 neww newW �  � � � l  � ��Z�Y�X�Z  �Y  �X   �  � � � l   � ��W � ��W   �   set filters     � � � �    s e t   f i l t e r s   �  �  � O   � k   �  l  � ��V�V   2 ,set (selected grouping identifier) to "none"    � X s e t   ( s e l e c t e d   g r o u p i n g   i d e n t i f i e r )   t o   " n o n e " 	
	 l  � ��U�U   1 +set (selected sorting identifier) to "none"    � V s e t   ( s e l e c t e d   s o r t i n g   i d e n t i f i e r )   t o   " n o n e "
  l  � r   � m   � � �  i n c o m p l e t e 1   ��T
�T 
FC?i   aka remaining    �    a k a   r e m a i n i n g  r   m   �  a n y 1  �S
�S 
FCFi �R r    m  !! �""  a l l  1  �Q
�Q 
FCFf�R   n   � �#$# 1   � ��P
�P 
FCcn$ o   � ��O�O 0 neww newW  %&% r  %'(' n  !)*) 1  !�N
�N 
FCPr* o  �M�M 0 selecteditem selectedItem( o      �L�L 0 p P& +,+ l &&�K�J�I�K  �J  �I  , -.- I &-�H/�G
�H .ascrcmnt****      � ****/ o  &)�F�F 0 p P�G  . 010 l ..�E�D�C�E  �D  �C  1 232 Z  .�45�B64 l .57�A�@7 > .5898 o  .1�?�? 0 p P9 m  14�>
�> 
msng�A  �@  5 k  8�:: ;<; l  88�==>�=  = %  a real project, not the inbox    > �?? >   a   r e a l   p r o j e c t ,   n o t   t h e   i n b o x  < @�<@ O  8�ABA k  F�CC DED l FF�;FG�;  F ) # let's open up the sidebar folders,   G �HH F   l e t ' s   o p e n   u p   t h e   s i d e b a r   f o l d e r s ,E IJI l FF�:KL�:  K + %   otherwise we can't select properly   L �MM J       o t h e r w i s e   w e   c a n ' t   s e l e c t   p r o p e r l yJ NON r  FPPQP J  FH�9�9  Q n      RSR 1  KO�8
�8 
FCFsS o  HK�7�7 0 neww newWO TUT l QQ�6�5�4�6  �5  �4  U VWV r  Q\XYX n  QXZ[Z 1  TX�3
�3 
ID  [ o  QT�2�2 0 p PY 1      �1
�1 
pi  W \]\ l ]m^_`^ r  ]maba 5  ]i�0c�/
�0 
OTlfc 1  ae�.
�. 
pi  
�/ kfrmID  b o      �-�- 0 t  _ , & this errors if focus is on, (OF bug?)   ` �dd L   t h i s   e r r o r s   i f   f o c u s   i s   o n ,   ( O F   b u g ? )] efe X  n�g�,hg r  ��iji m  ���+
�+ boovtruej l     k�*�)k n      lml 1  ���(
�( 
OTx?m 1  ���'
�' 
OSav�*  �)  
�, 
OSavh n  qxnon 2 tx�&
�& 
OTano o  qt�%�% 0 t  f pqp l ���$�#�"�$  �#  �"  q rsr l ���!tu�!  t ( " select the project in the sidebar   u �vv D   s e l e c t   t h e   p r o j e c t   i n   t h e   s i d e b a rs wxw I ��� y�
�  .OTREisalnull���    cct2y n  ��z{z 2  ���
� 
cobj{ J  ��|| }�} o  ���� 0 p P�  �  x ~~ l ������  �   focus if necessary   � ��� &   f o c u s   i f   n e c e s s a r y ��� Z  ������� l ������ o  ���� 0 setfocus setFocus�  �  � r  ����� J  ���� ��� o  ���� 0 p P�  � n      ��� 1  ���
� 
FCFs� o  ���� 0 neww newW�  �  �  B n  8C��� 1  ?C�
� 
FCLb� n  8?��� 1  ;?�
� 
FCSt� o  8;�� 0 neww newW�<  �B  6 k  ���� ��� l ������  �   it's the inbox   � ���    i t ' s   t h e   i n b o x� ��� O  ����� I �����

� .OTREisalnull���    cct2� 1  ���	
�	 
FCIb�
  � n  ����� 1  ���
� 
FCSt� o  ���� 0 neww newW�  3 ��� l ������  �  �  � ��� l  ������  � < 6 i'd like to set focus, but OF doesn't support it yet    � ��� l   i ' d   l i k e   t o   s e t   f o c u s ,   b u t   O F   d o e s n ' t   s u p p o r t   i t   y e t  � ��� l ����� �  �  �   � ��� l  ��������  � ( " now deal with the content window    � ��� D   n o w   d e a l   w i t h   t h e   c o n t e n t   w i n d o w  � ��� O  �.��� k  �-�� ��� l  ��������  � - ' open up subproject in the main window    � ��� N   o p e n   u p   s u b p r o j e c t   i n   t h e   m a i n   w i n d o w  � ��� r  ����� n  ����� 1  ����
�� 
ID  � o  ������ 0 selecteditem selectedItem� o      ���� 0 si  � ��� l ��������  � ) # it's possible it can't be found...   � ��� F   i t ' s   p o s s i b l e   i t   c a n ' t   b e   f o u n d . . .� ��� r  ����� 5  �������
�� 
OTlf� o  ������ 0 si  
�� kfrmID  � o      ���� 0 t  � ��� X  ������ r  ��� m  ��
�� boovtrue� l     ������ n      ��� 1  ��
�� 
OTx?� 1  ��
�� 
OSav��  ��  
�� 
OSav� n  ���� 2 ���
�� 
OTan� o  ������ 0 t  � ��� l   ��������  ��  ��  � ��� l    ������  �   select the action    � ��� &   s e l e c t   t h e   a c t i o n  � ���� I  -�����
�� .OTREisalnull���    cct2� n   )��� 2  %)��
�� 
cobj� J   %�� ���� o   #���� 0 selecteditem selectedItem��  ��  ��  � n  ����� 1  ����
�� 
FCcn� o  ������ 0 neww newW� ��� l //��������  ��  ��  � ��� l  //������  � ? 9 reveal the window I hid so user can't see faffing about    � ��� r   r e v e a l   t h e   w i n d o w   I   h i d   s o   u s e r   c a n ' t   s e e   f a f f i n g   a b o u t  � ��� r  /8��� m  /0��
�� boovtrue� n      ��� 1  37��
�� 
pvis� o  03���� 0 neww newW� ���� l 99��������  ��  ��  ��   1 n     ��� 4   ���
�� 
docu� m    ���� � m     ���                                                                                  OFOC   alis    X  Mac Book Pro               �WXfH+     �OmniFocus.app                                                   ܷ�P��        ����  	                Applications    �W��      �P�       �  'Mac Book Pro:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c   B o o k   P r o  Applications/OmniFocus.app  / ��  ��  ��   . ��� l     ��������  ��  ��  � ���� l      ������  ���
  This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
   � ��� 
     T h i s   p r o g r a m   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 
         i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y 
         t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   2   o f   t h e   L i c e n s e ,   o r 
         ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
         T h i s   p r o g r a m   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l , 
         b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f 
         M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e 
         G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
         Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
         a l o n g   w i t h   t h i s   p r o g r a m .     I f   n o t ,   s e e   < h t t p : / / w w w . g n u . o r g / l i c e n s e s / > . 
��       ���    ������������ ��������������������������  � ���������������������������������������������������������� 
0 author  �� 0 toolname toolName�� 0 toolversion toolVersion�� "0 tooldescription toolDescription�� 0 setfocus setFocus�� 80 invisiblewhileconstructing invisibleWhileConstructing
�� .aevtoappnull  �   � ****�� 0 w  �� 0 mode  �� 0 theitems theItems�� 0 selecteditem selectedItem�� 0 neww newW�� 0 p P
�� 
pi  �� 0 t  �� 0 si  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  
�� boovtrue
�� boovtrue� ��������
�� .aevtoappnull  �   � **** k    ;  -����  ��  ��   ��
�� 
OSav <��������������������� r�� u�� � ������������� � ��� ����� ��� �������������!��������~�}�|�{�z�y�x�w�v�u�t�s�r�q
�� 
docu
�� 
FCdw  
�� 
pidx�� 0 w  
�� 
FCvm�� 0 mode  
�� 
FCcn
�� 
OTst�� 0 theitems theItems
�� .corecnte****       ****
�� 
mesS
�� .sysodisAaleR        TEXT
�� .ascrcmnt****      � ****
�� 
cobj
�� 
valL�� 0 selecteditem selectedItem
�� 
pcls
�� 
FCac
�� 
FCcd
�� 
prdt
�� 
pvis
�� 
FC~=�� 
�� .corecrel****      � null�� 0 neww newW
�� 
FCFF
�� 
FC?i
�� 
FCFi
�� 
FCFf
�� 
FCPr�� 0 p P
� 
msng
�~ 
FCSt
�} 
FCLb
�| 
FCFs
�{ 
ID  
�z 
pi  
�y 
OTlf
�x kfrmID  �w 0 t  
�v 
OTan
�u 
kocl
�t 
OTx?
�s .OTREisalnull���    cct2
�r 
FCIb�q 0 si  ��<��k/5*�k/�[�,\Zk81E�O� �*�,E�O*�,�-E�O�j j  �b  %��l OhY hO�j k a b  %�a l OhY hO�j O�a k/a ,E` O_ a ,a  a b  %�a l OhY hO_ a ,E a j OhY hOPUO�a a b  �a a a  a !l "E` #O_ #�,a $,EO_ #�, a %*a &,FOa '*a (,FOa )*a *,FUO_ a +,E` ,O_ ,j O_ ,a - �_ #a .,a /, xjv_ #a 0,FO_ ,a 1,E` 2O*a 3_ 2Ea 40E` 5O %_ 5a 6-[a 7a l kh  e�a 8,F[OY��O_ ,kva -j 9Ob   _ ,kv_ #a 0,FY hUY _ #a ., *a :,j 9UO_ #�, R_ a 1,E` ;O*a 3_ ;a 40E` 5O %_ 5a 6-[a 7a l kh  e�a 8,F[OY��O_ kva -j 9UOe_ #a ,FOPU�  �p�o�n ��m	�l
�m 
docu	 �

  h F v D 6 V J C 7 y C
�l kfrmID  
�p 
FCdw�o/
�n kfrmID  � �  c o n t e x t� �k�k     �j�i �h�g �f �e�d�c ��b�a
�b 
docu �  h F v D 6 V J C 7 y C
�a kfrmID  
�e 
FCdw�d/
�c kfrmID  
�f 
FCcn
�h 
OTtr�g 
�j 
OTtr�i �  �`�_ ��^�]
�^ 
docu �  h F v D 6 V J C 7 y C
�] kfrmID  
�` 
FCac �  n z T x q - j C w i h
�_ kfrmID  �  �\�[�Z ��Y�X
�Y 
docu �  h F v D 6 V J C 7 y C
�X kfrmID  
�\ 
FCdw�[��
�Z kfrmID  �   �W!�V  ��U"�T
�U 
docu" �##  h F v D 6 V J C 7 y C
�T kfrmID  
�W 
FCpr! �$$  m Q q E W h N A a y 7
�V kfrmID  � �%%  m Q q E W h N A a y 7  && '�S�R' (�Q�P( )�O�N) *�M* +�L�K�J+ ��I,�H
�I 
docu, �--  h F v D 6 V J C 7 y C
�H kfrmID  
�L 
FCdw�K��
�J kfrmID  
�M 
FCcn
�O 
OTtr�N 
�Q 
OTtr�P 
�S 
OTtr�R  �..  n z T x q - j C w i h��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ascr  ��ޭ