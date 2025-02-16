FasdUAS 1.101.10   ��   ��    k             l      ��  ��   SM
	This script scans all projects and action groups in the front OmniFocus document identifying any that
	lack a next action.
	
	by Curt Clifton
	
	Copyright � 2007-2014, Curtis Clifton
	
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
	
	version 1.0.3: Fixed a bug when cleaning up after an item with no title had been given a next action.
	version 1.0.2: Fixed a bug when more than 10 items were missing next actions. Improved error handling. Speed improvements.
	version 1.0.1: Fixed to work with the Mac App Store version as well
	version 1.0: Updated for OmniFocus 2:
				� Added property to control whether single action lists are searched
				� Approximately twice as fast!
				� Uses Notification Center
				� Offers to reveal the projects and action groups that are missing next actions
				� Running the script again after added actions (or marking items completed) clears the �(missing next action)� suffix
				� Better error reporting
	version 0.5.1: Added a script to remove suffix to the package
	version 0.5: Move tag string to be a suffix rather than a prefix
	version 0.4.1: Removed sometimes-problematic use of 'activate' command
	version 0.4: Doesn't flag singleton holding projects as missing next actions even if they are empty
	version 0.3: Limited list of next-action-lacking projects in the dialog to 10.  More than 10 results in a dialog giving the number of such projects (along with the usual identifying-string instructions from the previous release).
	version 0.2: Added identifying string to offending projects based on idea from spiralocean.  Fixed bug where top-level projects without any actions were omitted.
	version 0.1: Original release
     � 	 	� 
 	 T h i s   s c r i p t   s c a n s   a l l   p r o j e c t s   a n d   a c t i o n   g r o u p s   i n   t h e   f r o n t   O m n i F o c u s   d o c u m e n t   i d e n t i f y i n g   a n y   t h a t 
 	 l a c k   a   n e x t   a c t i o n . 
 	 
 	 b y   C u r t   C l i f t o n 
 	 
 	 C o p y r i g h t   �   2 0 0 7 - 2 0 1 4 ,   C u r t i s   C l i f t o n 
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
 	 v e r s i o n   1 . 0 . 3 :   F i x e d   a   b u g   w h e n   c l e a n i n g   u p   a f t e r   a n   i t e m   w i t h   n o   t i t l e   h a d   b e e n   g i v e n   a   n e x t   a c t i o n . 
 	 v e r s i o n   1 . 0 . 2 :   F i x e d   a   b u g   w h e n   m o r e   t h a n   1 0   i t e m s   w e r e   m i s s i n g   n e x t   a c t i o n s .   I m p r o v e d   e r r o r   h a n d l i n g .   S p e e d   i m p r o v e m e n t s . 
 	 v e r s i o n   1 . 0 . 1 :   F i x e d   t o   w o r k   w i t h   t h e   M a c   A p p   S t o r e   v e r s i o n   a s   w e l l 
 	 v e r s i o n   1 . 0 :   U p d a t e d   f o r   O m n i F o c u s   2 : 
 	 	 	 	 "   A d d e d   p r o p e r t y   t o   c o n t r o l   w h e t h e r   s i n g l e   a c t i o n   l i s t s   a r e   s e a r c h e d 
 	 	 	 	 "   A p p r o x i m a t e l y   t w i c e   a s   f a s t ! 
 	 	 	 	 "   U s e s   N o t i f i c a t i o n   C e n t e r 
 	 	 	 	 "   O f f e r s   t o   r e v e a l   t h e   p r o j e c t s   a n d   a c t i o n   g r o u p s   t h a t   a r e   m i s s i n g   n e x t   a c t i o n s 
 	 	 	 	 "   R u n n i n g   t h e   s c r i p t   a g a i n   a f t e r   a d d e d   a c t i o n s   ( o r   m a r k i n g   i t e m s   c o m p l e t e d )   c l e a r s   t h e    ( m i s s i n g   n e x t   a c t i o n )    s u f f i x 
 	 	 	 	 "   B e t t e r   e r r o r   r e p o r t i n g 
 	 v e r s i o n   0 . 5 . 1 :   A d d e d   a   s c r i p t   t o   r e m o v e   s u f f i x   t o   t h e   p a c k a g e 
 	 v e r s i o n   0 . 5 :   M o v e   t a g   s t r i n g   t o   b e   a   s u f f i x   r a t h e r   t h a n   a   p r e f i x 
 	 v e r s i o n   0 . 4 . 1 :   R e m o v e d   s o m e t i m e s - p r o b l e m a t i c   u s e   o f   ' a c t i v a t e '   c o m m a n d 
 	 v e r s i o n   0 . 4 :   D o e s n ' t   f l a g   s i n g l e t o n   h o l d i n g   p r o j e c t s   a s   m i s s i n g   n e x t   a c t i o n s   e v e n   i f   t h e y   a r e   e m p t y 
 	 v e r s i o n   0 . 3 :   L i m i t e d   l i s t   o f   n e x t - a c t i o n - l a c k i n g   p r o j e c t s   i n   t h e   d i a l o g   t o   1 0 .     M o r e   t h a n   1 0   r e s u l t s   i n   a   d i a l o g   g i v i n g   t h e   n u m b e r   o f   s u c h   p r o j e c t s   ( a l o n g   w i t h   t h e   u s u a l   i d e n t i f y i n g - s t r i n g   i n s t r u c t i o n s   f r o m   t h e   p r e v i o u s   r e l e a s e ) . 
 	 v e r s i o n   0 . 2 :   A d d e d   i d e n t i f y i n g   s t r i n g   t o   o f f e n d i n g   p r o j e c t s   b a s e d   o n   i d e a   f r o m   s p i r a l o c e a n .     F i x e d   b u g   w h e r e   t o p - l e v e l   p r o j e c t s   w i t h o u t   a n y   a c t i o n s   w e r e   o m i t t e d . 
 	 v e r s i o n   0 . 1 :   O r i g i n a l   r e l e a s e 
   
  
 l     ��������  ��  ��        j     �� �� <0 shouldchecksingleactionlists shouldCheckSingleActionLists  m     ��
�� boovfals      j    �� �� *0 lackinglistingdelim lackingListingDelim  l    ����  b        o    ��
�� 
ret   m       �            "  ��  ��        j    
�� �� "0 missingnasuffix missingNASuffix  m    	   �   * ( m i s s i n g   n e x t   a c t i o n )      j    �� �� (0 missingnadelimiter missingNADelimiter  m       �          ! " ! l     ��������  ��  ��   "  # $ # l      �� % &��   % D >
	The following properties are used for script notifications.
    & � ' ' | 
 	 T h e   f o l l o w i n g   p r o p e r t i e s   a r e   u s e d   f o r   s c r i p t   n o t i f i c a t i o n s . 
 $  ( ) ( j    �� *�� "0 scriptsuitename scriptSuiteName * m     + + � , ,  C u r t  s   S c r i p t s )  - . - l     ��������  ��  ��   .  / 0 / l    1���� 1 O     2 3 2 O    4 5 4 k    6 6  7 8 7 Q    G 9 : ; 9 k    + < <  = > = r     ? @ ? m    ��
�� boovfals @ 1    ��
�� 
FCwa >  A B A n    C D C I    �� E����  0 removesuffixes removeSuffixes E  F�� F  g    ��  ��   D  f     B  G H G r    % I J I n   # K L K I    #�� M���� ,0 accumulatemissingnas accumulateMissingNAs M  N O N  g     O  P�� P J    ����  ��  ��   L  f     J o      ���� (0 lackingnextactions lackingNextActions H  Q�� Q r   & + R S R m   & '��
�� boovtrue S 1   ' *��
�� 
FCwa��   : R      �� T U
�� .ascrerr ****      � **** T o      ���� 0 errtext errText U �� V��
�� 
errn V o      ���� 0 errnum errNum��   ; k   3 G W W  X Y X r   3 8 Z [ Z m   3 4��
�� boovtrue [ 1   4 7��
�� 
FCwa Y  \ ] \ I  9 D�� ^��
�� .sysodlogaskr        TEXT ^ b   9 @ _ ` _ b   9 > a b a b   9 < c d c m   9 : e e � f f  E r r o r :   d o   : ;���� 0 errnum errNum b o   < =��
�� 
ret  ` o   > ?���� 0 errtext errText��   ]  g�� g L   E G����  ��   8  h�� h Z   H i j�� k i l  H L l���� l =  H L m n m o   H I���� (0 lackingnextactions lackingNextActions n J   I K����  ��  ��   j k   O h o o  p q p Z   O ` r s�� t r o   O T���� <0 shouldchecksingleactionlists shouldCheckSingleActionLists s r   W Z u v u m   W X w w � x x � N e x t   a c t i o n s   a r e   i d e n t i f i e d   f o r   a l l   a c t i v e   p r o j e c t s ,   a c t i o n   g r o u p s ,   a n d   s i n g l e   a c t i o n   l i s t s . v o      ���� 0 msg  ��   t r   ] ` y z y m   ] ^ { { � | | � N e x t   a c t i o n s   a r e   i d e n t i f i e d   f o r   a l l   a c t i v e   p r o j e c t s   a n d   a c t i o n   g r o u p s . z o      ���� 0 msg   q  }�� } n  a h ~  ~ I   b h�� ����� 
0 notify   �  � � � m   b c � � � � �   C o n g r a t u l a t i o n s ! �  ��� � o   c d���� 0 msg  ��  ��     f   a b��  ��   k k   k � �  � � � r   k r � � � m   k n � � � � � � S o m e   a c t i v e   p r o j e c t s   o r   a c t i o n   g r o u p s   a r e   m i s s i n g   n e x t   a c t i o n s .   Y o u   c a n   r e v e a l   t h e m   i f   y o u   w a n t   t o   c o r r e c t   t h i s . � o      ���� 0 	titletext 	titleText �  � � � r   s z � � � m   s v � � � � � 
 i t e m s � o      ���� "0 pluralizeditems pluralizedItems �  � � � Z   { � � � � � l  { � ����� � =  { � � � � l  { � ����� � I  { ��� ���
�� .corecnte****       **** � o   { |���� (0 lackingnextactions lackingNextActions��  ��  ��   � m   � ����� ��  ��   � k   � � � �  � � � r   � � � � � m   � � � � � � � � A n   a c t i v e   p r o j e c t   o r   a c t i o n   g r o u p   i s   m i s s i n g   a   n e x t   a c t i o n .   Y o u   c a n   r e v e a l   i t   i f   y o u   w a n t   t o   c o r r e c t   t h i s . � o      ���� 0 	titletext 	titleText �  � � � r   � � � � � b   � � � � � b   � � � � � m   � � � � � � � : T h e r e   i s   n o   n e x t   a c t i o n   f o r    � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� (0 lackingnextactions lackingNextActions � m   � � � � � � �   .   � o      ���� 0 msg   �  ��� � r   � � � � � m   � � � � � � �  i t e m � o      ���� "0 pluralizeditems pluralizedItems��   �  � � � l  � � ����� � ?   � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � o   � ����� (0 lackingnextactions lackingNextActions��  ��  ��   � m   � ����� 
��  ��   �  ��� � r   � � � � � c   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  T h e r e   a r e   � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � o   � ����� (0 lackingnextactions lackingNextActions��  ��  ��   � m   � � � � � � � p   a c t i v e   p r o j e c t s   o r   a c t i o n   g r o u p s   w i t h o u t   n e x t   a c t i o n s .   � m   � ���
�� 
ctxt � o      ���� 0 msg  ��   � k   � � �  � � � r   � � � � � n  � � � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr � o      ���� 0 olddelim oldDelim �  � � � r   � � � � � o   � ����� *0 lackinglistingdelim lackingListingDelim � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr �  � � � r   � � � � � l  � � ����� � c   � � � � � o   � ����� (0 lackingnextactions lackingNextActions � m   � ���
�� 
ctxt��  ��   � o      ����  0 lackinglisting lackingListing �  � � � r   � � � � � o   � ����� 0 olddelim oldDelim � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr �  ��� � r   � � � � b   �	 � � � b   � � � � b   � � � � m   � � � � � � � � T h e s e   a c t i v e   p r o j e c t s   o r   a c t i o n   g r o u p s   d o   n o t   h a v e   n e x t   a c t i o n s : � o   ����� *0 lackinglistingdelim lackingListingDelim � o  ����  0 lackinglisting lackingListing � o  ��
�� 
ret  � o      ���� 0 msg  ��   �  � � � r   � � � K   � � �� ���
�� 
bhit � m   � � � � �  ��   � o      ���� 0 alertresult alertResult �  � � � Q  s � �  � r  V I R��
�� .sysodisAaleR        TEXT o  ���� 0 	titletext 	titleText ��
�� 
mesS b  "9 b  "5	
	 b  "/ b  "+ b  "' o  "#���� 0 msg   m  #& �  M a r k   t h e   o  '*���� "0 pluralizeditems pluralizedItems m  +. � �   a s   c o m p l e t e d ,   o r   a d d   a c t i o n s   a s   n e e d e d   a n d   r e - r u n   t h i s   s c r i p t   t o   r e m o v e   t h e   
 o  /4���� "0 missingnasuffix missingNASuffix m  58 �     s u f f i x . ��
�� 
btns J  <D  m  <? �  O K �� m  ?B �    R e v e a l��   �!"
� 
dflt! m  GH�~�~ " �}#�|
�} 
cbtn# m  KL�{�{ �|   o      �z�z 0 alertresult alertResult � R      �y$�x
�y .ascrerr ****      � ****$ o      �w�w 0 errnum errNum�x    Z  ^s%&�v�u% l ^c'�t�s' >  ^c()( o  ^_�r�r 0 errnum errNum) m  _b�q�q���t  �s  & I fo�p*�o
�p .ascrcmnt****      � ***** b  fk+,+ m  fi-- �.. L E x p e c t e d   u s e r   c a n c e l l e d   e r r o r   b u t   g o t  , o  ij�n�n 0 errnum errNum�o  �v  �u   � /�m/ Z  t01�l�k0 l t2�j�i2 = t343 n  t{565 1  w{�h
�h 
bhit6 o  tw�g�g 0 alertresult alertResult4 m  {~77 �88  R e v e a l�j  �i  1 k  �	99 :;: r  ��<=< I ���f�e>
�f .corecrel****      � null�e  > �d?@
�d 
kocl? m  ���c
�c 
FCdw@ �bA�a
�b 
inshA n  ��BCB 8  ���`
�` 
inslC 4 ���_D
�_ 
FCdwD m  ���^�^ �a  = o      �]�] 0 awindow aWindow; E�\E O  �	FGF k  �HH IJI r  ��KLK m  ���[
�[ FCsbFCT1L 1  ���Z
�Z 
FCSTJ MNM r  ��OPO m  ���Y
�Y savono  P n      QRQ 1  ���X
�X 
OTs?R n  ��STS 2  ���W
�W 
OTdsT 1  ���V
�V 
FCStN UVU r  ��WXW m  ��YY �ZZ  i n c o m p l e t eX n      [\[ 1  ���U
�U 
FC?i\ 1  ���T
�T 
FCcnV ]^] r  ��_`_ 1  ���S
�S 
FC~=` o      �R�R &0 currentsearchterm currentSearchTerm^ a�Qa Z  �bc�Pdb l ��e�O�Ne = ��fgf o  ���M�M &0 currentsearchterm currentSearchTermg m  ���L
�L 
msng�O  �N  c I ���Khi
�K .sysodisAaleR        TEXTh m  ��jj �kk � T h e   m i s s i n g   a c t i o n s   c a n n o t   b e   r e v e a l e d   w i t h o u t   h a v i n g   t h e   S e a r c h   f i e l d   i n   t h e   t o o l b a r .i �Jlm
�J 
mesSl m  ��nn �oob T o   a d d   t h e   S e a r c h   f i e l d ,   c o n t r o l - c l i c k   o n   t h e   t o o l b a r ,   c h o o s e    C u s t o m i z e   T o o l b a r &  ,   a n d   d r a g   t h e   S e a r c h   f i e l d   o n t o   t h e   t o o l b a r .   R e - r u n   t h i s   s c r i p t   t o   r e v e a l   t h e   m i s s i n g   a c t i o n s .m �Ip�H
�I 
btnsp J  ��qq r�Gr m  ��ss �tt  O K�G  �H  �P  d r  �uvu m  �ww �xx * ( m i s s i n g   n e x t   a c t i o n )v 1  �F
�F 
FC~=�Q  G o  ���E�E 0 awindow aWindow�\  �l  �k  �m  ��   5 4   �Dy
�D 
docuy m    �C�C  3 m     zz�                                                                                  OFOC  alis    X  Macintosh HD               �Ȗ�H+   �G�OmniFocus.app                                                  ������e        ����  	                Applications    ���*      ��O�     �G�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��   0 {|{ l     �B�A�@�B  �A  �@  | }~} l      �?��?  	 
	Accumulates a list of items that are:
		� not complete and 
		� have subtasks, but 
		� have no incomplete or pending subtasks.
	theContainer: a document or folder containing flattened projects
	accum: the items lacking next actions that have been found so far 
   � ���   
 	 A c c u m u l a t e s   a   l i s t   o f   i t e m s   t h a t   a r e : 
 	 	 "   n o t   c o m p l e t e   a n d   
 	 	 "   h a v e   s u b t a s k s ,   b u t   
 	 	 "   h a v e   n o   i n c o m p l e t e   o r   p e n d i n g   s u b t a s k s . 
 	 t h e C o n t a i n e r :   a   d o c u m e n t   o r   f o l d e r   c o n t a i n i n g   f l a t t e n e d   p r o j e c t s 
 	 a c c u m :   t h e   i t e m s   l a c k i n g   n e x t   a c t i o n s   t h a t   h a v e   b e e n   f o u n d   s o   f a r   
~ ��� i    ��� I      �>��=�> ,0 accumulatemissingnas accumulateMissingNAs� ��� o      �<�< 0 thecontainer theContainer� ��;� o      �:�: 	0 accum  �;  �=  � k     C�� ��� I    �9��8
�9 .ascrcmnt****      � ****� o     �7�7 0 thecontainer theContainer�8  � ��6� w    C��� k    C�� ��� Z    9���5�� o    �4�4 <0 shouldchecksingleactionlists shouldCheckSingleActionLists� r    ��� 6   ��� n    ��� 2    �3
�3 
FCfx� o    �2�2 0 thecontainer theContainer� =   ��� 1    �1
�1 
FCPs� m    �0
�0 FCPsFCPa� o      �/�/ 0 theprojects theProjects�5  � r   ! 9��� 6  ! 7��� n   ! $��� 2   " $�.
�. 
FCfx� o   ! "�-�- 0 thecontainer theContainer� F   % 6��� =  & -��� 1   ' )�,
�, 
FCPs� m   * ,�+
�+ FCPsFCPa� =  . 5��� 1   / 1�*
�* 
FC.A� m   2 4�)
�) boovfals� o      �(�( 0 theprojects theProjects� ��'� r   : C��� n  : A��� I   ; A�&��%�& <0 accumulatemissingnasprojects accumulateMissingNAsProjects� ��� o   ; <�$�$ 0 theprojects theProjects� ��#� o   < =�"�" 	0 accum  �#  �%  �  f   : ;� o      �!�! 	0 accum  �'  ��                                                                                  OFOC  alis    X  Macintosh HD               �Ȗ�H+   �G�OmniFocus.app                                                  ������e        ����  	                Applications    ���*      ��O�     �G�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �6  � ��� l     � ���   �  �  � ��� l      ����  �$ 
	Recurses over the trees rooted at the given projects, accumulates a list of items that are:
		� not complete and 
		� have subtasks, but 
		� have no incomplete or pending subtasks.
	theProjects: a list of projects
	accum: the items lacking next actions that have been found so far 
   � ���<   
 	 R e c u r s e s   o v e r   t h e   t r e e s   r o o t e d   a t   t h e   g i v e n   p r o j e c t s ,   a c c u m u l a t e s   a   l i s t   o f   i t e m s   t h a t   a r e : 
 	 	 "   n o t   c o m p l e t e   a n d   
 	 	 "   h a v e   s u b t a s k s ,   b u t   
 	 	 "   h a v e   n o   i n c o m p l e t e   o r   p e n d i n g   s u b t a s k s . 
 	 t h e P r o j e c t s :   a   l i s t   o f   p r o j e c t s 
 	 a c c u m :   t h e   i t e m s   l a c k i n g   n e x t   a c t i o n s   t h a t   h a v e   b e e n   f o u n d   s o   f a r   
� ��� i    ��� I      ���� <0 accumulatemissingnasprojects accumulateMissingNAsProjects� ��� o      �� 0 theprojects theProjects� ��� o      �� 	0 accum  �  �  � k     ^�� ��� w     [��� X    [���� k    V�� ��� I   ���
� .ascrcmnt****      � ****� b    ��� m    �� ��� $ C h e c k i n g   p r o j e c t :  � l   ���� n    ��� 1    �
� 
pnam� o    �� 0 aproject aProject�  �  �  � ��� r    !��� n    ��� 1    �
� 
ctnr� o    �� 0 aproject aProject� o      �� $0 projectcontainer projectContainer� ��� Z   " V����� l  " ;���
� G   " ;��� >  " '��� n   " %��� m   # %�	
�	 
pcls� o   " #�� $0 projectcontainer projectContainer� m   % &�
� 
FCAr� l  * 9���� F   * 9��� =  * /��� n   * -��� m   + -�
� 
pcls� o   * +�� $0 projectcontainer projectContainer� m   - .�
� 
FCAr� >  2 7��� n   2 5��� 1   3 5�
� 
FCHi� o   2 3� �  $0 projectcontainer projectContainer� m   5 6��
�� boovtrue�  �  �  �
  � k   > N�� ��� r   > C��� n   > A��� 1   ? A��
�� 
FCrt� o   > ?���� 0 aproject aProject� o      ���� 0 theroottask theRootTask� ���� r   D N��� n  D L��� I   E L������� 40 accumulatemissingnastask accumulateMissingNAsTask� ��� o   E F���� 0 theroottask theRootTask�    m   F G��
�� boovtrue �� o   G H���� 	0 accum  ��  ��  �  f   D E� o      ���� 	0 accum  ��  �  � I  Q V����
�� .ascrcmnt****      � **** m   Q R �  s k i p p e d��  �  � 0 aproject aProject� o    ���� 0 theprojects theProjects��                                                                                  OFOC  alis    X  Macintosh HD               �Ȗ�H+   �G�OmniFocus.app                                                  ������e        ����  	                Applications    ���*      ��O�     �G�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � �� L   \ ^ o   \ ]���� 	0 accum  ��  � 	 l     ��������  ��  ��  	 

 l      ����  NH 
	Recurses over the tree rooted at the given task, accumulates a list of items that are:
		� not complete and 
		� have subtasks, but 
		� have no incomplete or pending subtasks.
	theTask: a task
	isProjectRoot: true iff theTask is the root task of a project
	accum: the items lacking next actions that have been found so far 
    ��   
 	 R e c u r s e s   o v e r   t h e   t r e e   r o o t e d   a t   t h e   g i v e n   t a s k ,   a c c u m u l a t e s   a   l i s t   o f   i t e m s   t h a t   a r e : 
 	 	 "   n o t   c o m p l e t e   a n d   
 	 	 "   h a v e   s u b t a s k s ,   b u t   
 	 	 "   h a v e   n o   i n c o m p l e t e   o r   p e n d i n g   s u b t a s k s . 
 	 t h e T a s k :   a   t a s k 
 	 i s P r o j e c t R o o t :   t r u e   i f f   t h e T a s k   i s   t h e   r o o t   t a s k   o f   a   p r o j e c t 
 	 a c c u m :   t h e   i t e m s   l a c k i n g   n e x t   a c t i o n s   t h a t   h a v e   b e e n   f o u n d   s o   f a r   
  i     I      ������ 40 accumulatemissingnastask accumulateMissingNAsTask  o      ���� 0 thetask theTask  o      ���� 0 isprojectroot isProjectRoot �� o      ���� 	0 accum  ��  ��   w     � O    � k    �  r     !  G    "#" o    ���� 0 isprojectroot isProjectRoot# ?   
 $%$ l  
 &����& I  
 ��'��
�� .corecnte****       ****' l  
 (����( e   
 )) 2  
 ��
�� 
FCac��  ��  ��  ��  ��  % m    ����  ! o      ���� 80 isaprojectorsubprojecttask isAProjectOrSubprojectTask *+* Z   -,-����, l   $.����. G    $/0/ 1    ��
�� 
FCcd0 H     "11 o     !���� 80 isaprojectorsubprojecttask isAProjectOrSubprojectTask��  ��  - L   ' )22 o   ' (���� 	0 accum  ��  ��  + 343 r   . <565 6  . :787 2   . 1��
�� 
FCac8 =  2 99:9 1   3 5��
�� 
FCcd: m   6 8��
�� boovfals6 o      ���� ,0 incompletechildtasks incompleteChildTasks4 ;��; Z   = �<=��>< l  = D?����? =  = D@A@ l  = BB����B I  = B��C��
�� .corecnte****       ****C o   = >���� ,0 incompletechildtasks incompleteChildTasks��  ��  ��  A m   B C����  ��  ��  = k   G uDD EFE r   G MGHG 1   G J��
�� 
pnamH n      IJI  ;   K LJ o   J K���� 	0 accum  F KLK l  N N��MN��  M � � The following idea of tagging the items with an identifying string is due to user spiralocean on the OmniFocus Extras forum at OmniGroup.com:   N �OO   T h e   f o l l o w i n g   i d e a   o f   t a g g i n g   t h e   i t e m s   w i t h   a n   i d e n t i f y i n g   s t r i n g   i s   d u e   t o   u s e r   s p i r a l o c e a n   o n   t h e   O m n i F o c u s   E x t r a s   f o r u m   a t   O m n i G r o u p . c o m :L PQP Z   N rRS����R l  N XT����T H   N XUU D   N WVWV 1   N Q��
�� 
pnamW o   Q V���� "0 missingnasuffix missingNASuffix��  ��  S r   [ nXYX l  [ jZ����Z b   [ j[\[ b   [ d]^] 1   [ ^��
�� 
pnam^ o   ^ c���� (0 missingnadelimiter missingNADelimiter\ o   d i���� "0 missingnasuffix missingNASuffix��  ��  Y 1   j m��
�� 
pnam��  ��  Q _��_ L   s u`` o   s t���� 	0 accum  ��  ��  > L   x �aa n  x bcb I   y ��d���� 60 accumulatemissingnastasks accumulateMissingNAsTasksd efe o   y z���� ,0 incompletechildtasks incompleteChildTasksf g��g o   z {���� 	0 accum  ��  ��  c  f   x y��   o    ���� 0 thetask theTask�                                                                                  OFOC  alis    X  Macintosh HD               �Ȗ�H+   �G�OmniFocus.app                                                  ������e        ����  	                Applications    ���*      ��O�     �G�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   hih l     ��������  ��  ��  i jkj l      ��lm��  lA; 
	Recurses over the trees rooted at the given tasks, accumulates a list of items that are:
		� not complete and 
		� have subtasks, but 
		� have no incomplete or pending subtasks.
	theTasks: a list of tasks, none of which are project root tasks
	accum: the items lacking next actions that have been found so far 
   m �nnv   
 	 R e c u r s e s   o v e r   t h e   t r e e s   r o o t e d   a t   t h e   g i v e n   t a s k s ,   a c c u m u l a t e s   a   l i s t   o f   i t e m s   t h a t   a r e : 
 	 	 "   n o t   c o m p l e t e   a n d   
 	 	 "   h a v e   s u b t a s k s ,   b u t   
 	 	 "   h a v e   n o   i n c o m p l e t e   o r   p e n d i n g   s u b t a s k s . 
 	 t h e T a s k s :   a   l i s t   o f   t a s k s ,   n o n e   o f   w h i c h   a r e   p r o j e c t   r o o t   t a s k s 
 	 a c c u m :   t h e   i t e m s   l a c k i n g   n e x t   a c t i o n s   t h a t   h a v e   b e e n   f o u n d   s o   f a r   
k opo i     qrq I      ��s���� 60 accumulatemissingnastasks accumulateMissingNAsTaskss tut o      ���� 0 thetasks theTasksu v��v o      ���� 	0 accum  ��  ��  r k     $ww xyx w     !z{z X    !|��}| r    ~~ n   ��� I    ������� 40 accumulatemissingnastask accumulateMissingNAsTask� ��� o    ���� 0 atask aTask� ��� m    ��
�� boovfals� ���� o    ���� 	0 accum  ��  ��  �  f     o      ���� 	0 accum  �� 0 atask aTask} o    ���� 0 thetasks theTasks{�                                                                                  OFOC  alis    X  Macintosh HD               �Ȗ�H+   �G�OmniFocus.app                                                  ������e        ����  	                Applications    ���*      ��O�     �G�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  y ���� L   " $�� o   " #���� 	0 accum  ��  p ��� l     ��������  ��  ��  � ��� l      ������  � p j
	Removes "missing next action" suffixes from all tasks and projects.
	theDocument: an OmniFocus document
   � ��� � 
 	 R e m o v e s   " m i s s i n g   n e x t   a c t i o n "   s u f f i x e s   f r o m   a l l   t a s k s   a n d   p r o j e c t s . 
 	 t h e D o c u m e n t :   a n   O m n i F o c u s   d o c u m e n t 
� ��� i   ! $��� I      �������  0 removesuffixes removeSuffixes� ���� o      ���� 0 thedocument theDocument��  ��  � w     ���� k    ��� ��� r    ��� 6   ��� n    ��� 2    ��
�� 
FCft� o    ���� 0 thedocument theDocument� D    ��� 1    	��
�� 
pnam� o   
 ���� "0 missingnasuffix missingNASuffix� o      ���� 0 thetasks theTasks� ���� X    ������ k   % ��� ��� r   % *��� n   % (��� 1   & (��
�� 
pnam� o   % &���� 0 atask aTask� o      ���� 0 newname newName� ��� Z   + Q������ l  + 2������ =  + 2��� o   + ,���� 0 newname newName� o   , 1���� "0 missingnasuffix missingNASuffix��  ��  � r   5 8��� m   5 6�� ���  � o      ���� 0 newname newName��  � r   ; Q��� n   ; O��� 7  < O����
�� 
ctxt� m   @ B���� � d   C N�� l  D M����� [   D M��� m   D E�~�~ � l  E L��}�|� n   E L��� 1   J L�{
�{ 
leng� o   E J�z�z "0 missingnasuffix missingNASuffix�}  �|  ��  �  � o   ; <�y�y 0 newname newName� o      �x�x 0 newname newName� ��� Z   R �����w� l  R Y��v�u� =  R Y��� o   R S�t�t 0 newname newName� o   S X�s�s (0 missingnadelimiter missingNADelimiter�v  �u  � r   \ _��� m   \ ]�� ���  � o      �r�r 0 newname newName� ��� l  b i��q�p� D   b i��� o   b c�o�o 0 newname newName� o   c h�n�n (0 missingnadelimiter missingNADelimiter�q  �p  � ��m� r   l ���� n   l ���� 7  m ��l��
�l 
ctxt� m   q s�k�k � d   t �� l  u ~��j�i� [   u ~��� m   u v�h�h � l  v }��g�f� n   v }��� 1   { }�e
�e 
leng� o   v {�d�d (0 missingnadelimiter missingNADelimiter�g  �f  �j  �i  � o   l m�c�c 0 newname newName� o      �b�b 0 newname newName�m  �w  � ��a� r   � ���� o   � ��`�` 0 newname newName� n      ��� 1   � ��_
�_ 
pnam� o   � ��^�^ 0 atask aTask�a  �� 0 atask aTask� o    �]�] 0 thetasks theTasks��  ��                                                                                  OFOC  alis    X  Macintosh HD               �Ȗ�H+   �G�OmniFocus.app                                                  ������e        ����  	                Applications    ���*      ��O�     �G�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     �\�[�Z�\  �[  �Z  � ��� l      �Y���Y  � � �
	Uses Notification Center to display a notification message.
	theTitle � a string giving the notification title
	theDescription � a string describing the notification event
   � ���\ 
 	 U s e s   N o t i f i c a t i o n   C e n t e r   t o   d i s p l a y   a   n o t i f i c a t i o n   m e s s a g e . 
 	 t h e T i t l e      a   s t r i n g   g i v i n g   t h e   n o t i f i c a t i o n   t i t l e 
 	 t h e D e s c r i p t i o n      a   s t r i n g   d e s c r i b i n g   t h e   n o t i f i c a t i o n   e v e n t 
� ��� i   % (��� I      �X��W�X 
0 notify  � ��� o      �V�V 0 thetitle theTitle� ��U� o      �T�T  0 thedescription theDescription�U  �W  � I    �S��
�S .sysonotfnull��� ��� TEXT� o     �R�R  0 thedescription theDescription� �Q��
�Q 
appr� o    �P�P "0 scriptsuitename scriptSuiteName� �O��N
�O 
subt� o    	�M�M 0 thetitle theTitle�N  � ��L� l     �K�J�I�K  �J  �I  �L       �H �G   +�H    �F�E�D�C�B�A�@�?�>�=�<�;�F <0 shouldchecksingleactionlists shouldCheckSingleActionLists�E *0 lackinglistingdelim lackingListingDelim�D "0 missingnasuffix missingNASuffix�C (0 missingnadelimiter missingNADelimiter�B "0 scriptsuitename scriptSuiteName�A ,0 accumulatemissingnas accumulateMissingNAs�@ <0 accumulatemissingnasprojects accumulateMissingNAsProjects�? 40 accumulatemissingnastask accumulateMissingNAsTask�> 60 accumulatemissingnastasks accumulateMissingNAsTasks�=  0 removesuffixes removeSuffixes�< 
0 notify  
�; .aevtoappnull  �   � ****
�G boovfals �		           "   �:��9�8
�7�: ,0 accumulatemissingnas accumulateMissingNAs�9 �6�6   �5�4�5 0 thecontainer theContainer�4 	0 accum  �8  
 �3�2�1�3 0 thecontainer theContainer�2 	0 accum  �1 0 theprojects theProjects �0��/�.�-�,�+
�0 .ascrcmnt****      � ****
�/ 
FCfx  
�. 
FCPs
�- FCPsFCPa
�, 
FC.A�+ <0 accumulatemissingnasprojects accumulateMissingNAsProjects�7 D�j  O�Zb    ��-�[�,\Z�81E�Y ��-�[[�,\Z�8\[�,\Zf8A1E�O)��l+ E� �*��)�(�'�* <0 accumulatemissingnasprojects accumulateMissingNAsProjects�) �&�&   �%�$�% 0 theprojects theProjects�$ 	0 accum  �(   �#�"�!� ��# 0 theprojects theProjects�" 	0 accum  �! 0 aproject aProject�  $0 projectcontainer projectContainer� 0 theroottask theRootTask ��������������
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pnam
� .ascrcmnt****      � ****
� 
ctnr
� 
pcls
� 
FCAr
� 
FCHi
� 
bool
� 
FCrt� 40 accumulatemissingnastask accumulateMissingNAsTask�' _�Z X�[��l kh ��,%j O��,E�O��,�
 ��,� 	 	��,e�&�& ��,E�O)�e�m+ E�Y �j [OY��O� ����� 40 accumulatemissingnastask accumulateMissingNAsTask� ��   ���� 0 thetask theTask� 0 isprojectroot isProjectRoot� 	0 accum  �   �
�	����
 0 thetask theTask�	 0 isprojectroot isProjectRoot� 	0 accum  � 80 isaprojectorsubprojecttask isAProjectOrSubprojectTask� ,0 incompletechildtasks incompleteChildTasks ������ 
� 
FCac
� .corecnte****       ****
� 
bool
� 
FCcd
� 
pnam�  60 accumulatemissingnastasks accumulateMissingNAsTasks� ��Z� |�
 *�-Ej j�&E�O*�,E
 ��& �Y hO*�-�[�,\Zf81E�O�j j  3*�,�6FO*�,b   *�,b  %b  %*�,FY hO�Y 
)��l+ U ��r�������� 60 accumulatemissingnastasks accumulateMissingNAsTasks�� ����   ������ 0 thetasks theTasks�� 	0 accum  ��   �������� 0 thetasks theTasks�� 	0 accum  �� 0 atask aTask {��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 40 accumulatemissingnastask accumulateMissingNAsTask�� %�Z �[��l kh )�f�m+ E�[OY��O� �����������  0 removesuffixes removeSuffixes�� ����   ���� 0 thedocument theDocument��   ���������� 0 thedocument theDocument�� 0 thetasks theTasks�� 0 atask aTask�� 0 newname newName �����������������
�� 
FCft
�� 
pnam
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
ctxt
�� 
leng�� ��Z��-�[�,\Zb  ?1E�O {�[��l kh ��,E�O�b    �E�Y �[�\[Zk\Zkb  �,'2E�O�b    �E�Y &�b   �[�\[Zk\Zkb  �,'2E�Y hO���,F[OY�� ����������� 
0 notify  �� ����   ������ 0 thetitle theTitle��  0 thedescription theDescription��   ������ 0 thetitle theTitle��  0 thedescription theDescription ��������
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT�� ��b  ��  ��������
�� .aevtoappnull  �   � **** k        /����  ��  ��   ������ 0 errtext errText�� 0 errnum errNum Nz������������! e���� w�� { ��� ��� ����� � ��� � ��� � ����������� ��� ���������������������-��7��������������������������Y����������jnsw
�� 
docu
�� 
FCwa��  0 removesuffixes removeSuffixes�� ,0 accumulatemissingnas accumulateMissingNAs�� (0 lackingnextactions lackingNextActions�� 0 errtext errText! ������
�� 
errn�� 0 errnum errNum��  
�� 
ret 
�� .sysodlogaskr        TEXT�� 0 msg  �� 
0 notify  �� 0 	titletext 	titleText�� "0 pluralizeditems pluralizedItems
�� .corecnte****       ****
�� 
cobj�� 

�� 
ctxt
�� 
ascr
�� 
txdl�� 0 olddelim oldDelim��  0 lackinglisting lackingListing
�� 
bhit�� 0 alertresult alertResult
�� 
mesS
�� 
btns
�� 
dflt
�� 
cbtn�� 
�� .sysodisAaleR        TEXT�� 0 errnum errNum��  ����
�� .ascrcmnt****      � ****
�� 
kocl
�� 
FCdw
�� 
insh
�� 
insl�� 
�� .corecrel****      � null�� 0 awindow aWindow
�� FCsbFCT1
�� 
FCST
�� savono  
�� 
FCSt
�� 
OTds
�� 
OTs?
�� 
FCcn
�� 
FC?i
�� 
FC~=�� &0 currentsearchterm currentSearchTerm
�� 
msng���*�k/ "f*�,FO)*k+ O)*jvl+ E�Oe*�,FW X  e*�,FO�%�%�%j 
OhO�jv  b    �E�Y �E�O)��l+ Y�a E` Oa E` O�j k  %a E` Oa �a k/%a %E�Oa E` Y e�j a  a �j %a %a &E�Y C_ a ,E`  Ob  _ a ,FO�a &E` !O_  _ a ,FOa "b  %_ !%�%E�Oa #a $lE` %O ?_ a &�a '%_ %a (%b  %a )%a *a +a ,lva -la .ka / 0E` %W X 1 2�a 3 a 4�%j 5Y hO_ %a #,a 6  �*a 7a 8a 9*a 8k/a :3a ; <E` =O_ = ca >*a ?,FOa @*a A,a B-a C,FOa D*a E,a F,FO*a G,E` HO_ Ha I  a Ja &a Ka *a Lkva ; 0Y a M*a G,FUY hUUascr  ��ޭ