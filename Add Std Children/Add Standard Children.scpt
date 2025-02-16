FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	Add Standard Children

	This script adds a standard set of child actions to a selected action or project.
	
	by Curt Clifton
	
	Copyright � 2015, Curtis Clifton
	
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
	
	Version History:

		0.1, initial draft, Apr 12, 2015

     � 	 	� 
 	 A d d   S t a n d a r d   C h i l d r e n 
 
 	 T h i s   s c r i p t   a d d s   a   s t a n d a r d   s e t   o f   c h i l d   a c t i o n s   t o   a   s e l e c t e d   a c t i o n   o r   p r o j e c t . 
 	 
 	 b y   C u r t   C l i f t o n 
 	 
 	 C o p y r i g h t   �   2 0 1 5 ,   C u r t i s   C l i f t o n 
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
 	 
 	 V e r s i o n   H i s t o r y : 
 
 	 	 0 . 1 ,   i n i t i a l   d r a f t ,   A p r   1 2 ,   2 0 1 5 
 
   
  
 l     ��������  ��  ��        l      ��  ��    � �
	Configuration:
	� childrenTitles is a list of the titles for the child tasks that will be added
	� includeParentTitle controls whether the child tasks will be named like �Parent Name: Child Name� or just �Child Name�
     �  � 
 	 C o n f i g u r a t i o n : 
 	 "   c h i l d r e n T i t l e s   i s   a   l i s t   o f   t h e   t i t l e s   f o r   t h e   c h i l d   t a s k s   t h a t   w i l l   b e   a d d e d 
 	 "   i n c l u d e P a r e n t T i t l e   c o n t r o l s   w h e t h e r   t h e   c h i l d   t a s k s   w i l l   b e   n a m e d   l i k e    P a r e n t   N a m e :   C h i l d   N a m e    o r   j u s t    C h i l d   N a m e  
      j     �� ��  0 childrentitles childrenTitles  J            m        �    A L X      m       �    C A L      m       �      C H C   ! " ! m     # # � $ $  M M M "  %�� % m     & & � ' '  S I B��     ( ) ( j   	 �� *�� (0 includeparenttitle includeParentTitle * m   	 
��
�� boovfals )  + , + l     ��������  ��  ��   ,  - . - l      �� / 0��   / D >
	The following properties are used for script notifications.
    0 � 1 1 | 
 	 T h e   f o l l o w i n g   p r o p e r t i e s   a r e   u s e d   f o r   s c r i p t   n o t i f i c a t i o n s . 
 .  2 3 2 j    �� 4�� "0 scriptsuitename scriptSuiteName 4 m     5 5 � 6 6  C u r t  s   S c r i p t s 3  7 8 7 l     ��������  ��  ��   8  9 : 9 l   ( ;���� ; O    ( < = < O   ' > ? > k   & @ @  A B A O    5 C D C l   4 E F G E k    4 H H  I J I r     K L K n     M N M 2   ��
�� 
OTst N 1    ��
�� 
FCcn L o      ���� $0 theselecteditems theSelectedItems J  O�� O Z    4 P Q���� P l   ! R���� R >    ! S T S l    U���� U I   �� V��
�� .corecnte****       **** V o    ���� $0 theselecteditems theSelectedItems��  ��  ��   T m     ���� ��  ��   Q k   $ 0 W W  X Y X I  $ -�� Z [
�� .sysodisAaleR        TEXT Z m   $ % \ \ � ] ] v Y o u   m u s t   f i r s t   s e l e c t   a   t a s k   o r   p r o j e c t   t o   a d d   c h i l d r e n   t o . [ �� ^ _
�� 
mesS ^ m   & ' ` ` � a a h S e l e c t   a   s i n g l e   t a s k   o r   p r o j e c t   i n   t h e   m a i n   o u t l i n e . _ �� b��
�� 
as A b m   ( )��
�� EAlTwarN��   Y  c�� c L   . 0����  ��  ��  ��  ��   F / ) (first document window whose index is 1)    G � d d R   ( f i r s t   d o c u m e n t   w i n d o w   w h o s e   i n d e x   i s   1 ) D 4    �� e
�� 
FCdw e m    ����  B  f g f l  6 6��������  ��  ��   g  h i h r   6 @ j k j n   6 < l m l 1   : <��
�� 
valL m n   6 : n o n 4   7 :�� p
�� 
cobj p m   8 9����  o o   6 7���� $0 theselecteditems theSelectedItems k o      ���� 0 selecteditem selectedItem i  q r q r   A M s t s n   A I u v u 1   E I��
�� 
pnam v n   A E w x w 4   B E�� y
�� 
cobj y m   C D����  x o   A B���� $0 theselecteditems theSelectedItems t o      ���� 0 theparentname theParentName r  z { z r   N U | } | o   N Q���� 0 selecteditem selectedItem } o      ���� 0 roottask rootTask {  ~  ~ Z   V s � ����� � l  V a ����� � =  V a � � � n   V ] � � � m   Y ]��
�� 
pcls � o   V Y���� 0 roottask rootTask � m   ] `��
�� 
FCpr��  ��   � r   d o � � � n   d k � � � 1   g k��
�� 
FCrt � o   d g���� 0 selecteditem selectedItem � o      ���� 0 roottask rootTask��  ��     � � � Z   t � � ����� � l  t  ����� � >  t  � � � n   t { � � � m   w {��
�� 
pcls � o   t w���� 0 roottask rootTask � m   { ~��
�� 
FCac��  ��   � k   � � � �  � � � I  � ��� � �
�� .sysodisAaleR        TEXT � m   � � � � � � � j Y o u   m u s t   s e l e c t   a   t a s k   o r   p r o j e c t   t o   a d d   c h i l d r e n   t o . � �� � �
�� 
mesS � m   � � � � � � � Z S e l e c t   a   t a s k   o r   p r o j e c t   i n   t h e   m a i n   o u t l i n e . � �� ���
�� 
as A � m   � ���
�� EAlTwarN��   �  ��� � L   � �����  ��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � ���
�� boovfals � 1   � ���
�� 
FCwa �  � � � Q   � � � � � X   �  ��� � � k   � � � �  � � � Z   � � � ����� � o   � ����� (0 includeparenttitle includeParentTitle � r   � � � � � b   � � � � � b   � � � � � o   � ����� 0 theparentname theParentName � m   � � � � � � �  :   � o   � ����� 0 
childtitle 
childTitle � o      ���� 0 
childtitle 
childTitle��  ��   �  � � � r   � � � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
FCac � �� � �
�� 
prdt � K   � � � � �� ���
�� 
pnam � o   � ����� 0 
childtitle 
childTitle��   � �� ���
�� 
insh � n   � � � � � 9   � ���
�� 
insl � n   � � � � � 4  � ��� �
�� 
FCac � m   � ������� � o   � ����� 0 roottask rootTask��   � o      ���� 0 newtask newTask �  ��� � l  � ��� � ���   �   HEREDAMMIT    � � � �    H E R E D A M M I T��  �� 0 
childtitle 
childTitle � o   � �����  0 childrentitles childrenTitles � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 errstr errStr � �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��   � k   � �  � � � r   � � � m  	��
�� boovtrue � 1  	��
�� 
FCwa �  ��� � R  �� � �
�� .ascrerr ****      � **** � o  ���� 0 errstr errStr � �� ���
�� 
errn � o  ���� 0 errornumber errorNumber��  ��   �  � � � l ��������  ��  ��   �  � � � n $ � � � I  $� ��~� 
0 notify   �  � � � m   � � � � �  C h i l d r e n   A d d e d �  ��} � m    � � � � � n Y o u   m a y   n e e d   t o   g o   t o   P r o j e c t s   t o   s e e   t h e   n e w   c h i l d r e n .�}  �~   �  f   �  ��| � l %%�{�z�y�{  �z  �y  �|   ? 4   �x �
�x 
docu � m    �w�w  = m      � ��                                                                                  OFOC  alis    X  Macintosh HD               �Ȗ�H+   �OmniFocus.app                                                  ����K�        ����  	                Applications    ���*      �K{U     �  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��   :  � � � l     �v�u�t�v  �u  �t   �  � � � l      �s � ��s   � � �
	Uses Notification Center to display a notification message.
	theTitle � a string giving the notification title
	theDescription � a string describing the notification event
    � � � �\ 
 	 U s e s   N o t i f i c a t i o n   C e n t e r   t o   d i s p l a y   a   n o t i f i c a t i o n   m e s s a g e . 
 	 t h e T i t l e      a   s t r i n g   g i v i n g   t h e   n o t i f i c a t i o n   t i t l e 
 	 t h e D e s c r i p t i o n      a   s t r i n g   d e s c r i b i n g   t h e   n o t i f i c a t i o n   e v e n t 
 �  � � � i     � � � I      �r ��q�r 
0 notify   �  � � � o      �p�p 0 thetitle theTitle �  ��o � o      �n�n  0 thedescription theDescription�o  �q   � I    �m � �
�m .sysonotfnull��� ��� TEXT � o     �l�l  0 thedescription theDescription � �k � �
�k 
appr � o    �j�j "0 scriptsuitename scriptSuiteName � �i �h
�i 
subt  o    	�g�g 0 thetitle theTitle�h   �  l     �f�e�d�f  �e  �d   �c l     �b�a�`�b  �a  �`  �c       �_�^ 5�_   �]�\�[�Z�Y�]  0 childrentitles childrenTitles�\ (0 includeparenttitle includeParentTitle�[ "0 scriptsuitename scriptSuiteName�Z 
0 notify  
�Y .aevtoappnull  �   � **** �X�X       # &
�^ boovfals �W ��V�U	
�T�W 
0 notify  �V �S�S   �R�Q�R 0 thetitle theTitle�Q  0 thedescription theDescription�U  	 �P�O�P 0 thetitle theTitle�O  0 thedescription theDescription
 �N�M�L�K
�N 
appr
�M 
subt�L 
�K .sysonotfnull��� ��� TEXT�T ��b  ��  �J�I�H�G
�J .aevtoappnull  �   � **** k    (  9�F�F  �I  �H   �E�D�C�E 0 
childtitle 
childTitle�D 0 errstr errStr�C 0 errornumber errorNumber ) ��B�A�@�?�>�= \�< `�;�:�9�8�7�6�5�4�3�2�1�0�/�. � ��-�, ��+�*�)�(�'�&�%�$ � ��#
�B 
docu
�A 
FCdw
�@ 
FCcn
�? 
OTst�> $0 theselecteditems theSelectedItems
�= .corecnte****       ****
�< 
mesS
�; 
as A
�: EAlTwarN�9 
�8 .sysodisAaleR        TEXT
�7 
cobj
�6 
valL�5 0 selecteditem selectedItem
�4 
pnam�3 0 theparentname theParentName�2 0 roottask rootTask
�1 
pcls
�0 
FCpr
�/ 
FCrt
�. 
FCac
�- 
FCwa
�, 
kocl
�+ 
prdt
�* 
insh
�) 
insl�( 
�' .corecrel****      � null�& 0 newtask newTask�% 0 errstr errStr �"�!� 
�" 
errn�! 0 errornumber errorNumber�   
�$ 
errn�# 
0 notify  �G)�%*�k/*�k/ $*�,�-E�O�j k ������ OhY hUO��k/�,E` O��k/a ,E` O_ E` O_ a ,a   _ a ,E` Y hO_ a ,a  a �a ��� OhY hOf*a ,FO c ]b   [a �l kh  b   _ a %�%E�Y hO*a a a a �la _ a i/a 4a   !E` "OP[OY��W X # $e*a ,FO)a %�l�O)a &a 'l+ (OPUU ascr  ��ޭ