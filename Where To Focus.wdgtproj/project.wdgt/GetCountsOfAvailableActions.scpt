FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	This script returns the number of available actions in each context as an aid to choosing a context to move into.
	
	version 0.1, by Curt Clifton
	
	Copyright � 2008, Curtis Clifton
	
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
     � 	 	\ 
 	 T h i s   s c r i p t   r e t u r n s   t h e   n u m b e r   o f   a v a i l a b l e   a c t i o n s   i n   e a c h   c o n t e x t   a s   a n   a i d   t o   c h o o s i n g   a   c o n t e x t   t o   m o v e   i n t o . 
 	 
 	 v e r s i o n   0 . 1 ,   b y   C u r t   C l i f t o n 
 	 
 	 C o p y r i g h t   �   2 0 0 8 ,   C u r t i s   C l i f t o n 
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
 l     ��������  ��  ��        l      ��  ��    2 , 
	Some properties to tune script behavior.
     �   X   
 	 S o m e   p r o p e r t i e s   t o   t u n e   s c r i p t   b e h a v i o r . 
      j     �� �� 00 showonlyactivecontexts showOnlyActiveContexts  m     ��
�� boovtrue      j    �� �� B0 includechildrenstotalsinparents includeChildrensTotalsInParents  m    ��
�� boovtrue      l     ��������  ��  ��        l      ��  ��   	 
	Throughout the script, the record for tracking context info includes:
		context: a reference to the OF context object
		name: the name of the context
		|count|: the number of available actions in the context
		depth: the context's depth in the context hierarchy
     �     
 	 T h r o u g h o u t   t h e   s c r i p t ,   t h e   r e c o r d   f o r   t r a c k i n g   c o n t e x t   i n f o   i n c l u d e s : 
 	 	 c o n t e x t :   a   r e f e r e n c e   t o   t h e   O F   c o n t e x t   o b j e c t 
 	 	 n a m e :   t h e   n a m e   o f   t h e   c o n t e x t 
 	 	 | c o u n t | :   t h e   n u m b e r   o f   a v a i l a b l e   a c t i o n s   i n   t h e   c o n t e x t 
 	 	 d e p t h :   t h e   c o n t e x t ' s   d e p t h   i n   t h e   c o n t e x t   h i e r a r c h y 
      i    	   !   I     �� "��
�� .aevtoappnull  �   � **** " o      ���� 0 args  ��   ! k     � # #  $ % $ Z     ' & '���� & =      ( ) ( l     *���� * I    �� +��
�� .corecnte****       **** + o     ���� 0 args  ��  ��  ��   ) m    ����  ' k   
 # , ,  - . - l  
 
�� / 0��   /   Updates properties    0 � 1 1 &   U p d a t e s   p r o p e r t i e s .  2 3 2 r   
  4 5 4 l  
  6���� 6 =  
  7 8 7 n   
  9 : 9 4    �� ;
�� 
cobj ; m    ����  : o   
 ���� 0 args   8 m     < < � = =  t r u e��  ��   5 o      ���� 00 showonlyactivecontexts showOnlyActiveContexts 3  >�� > r    # ? @ ? l    A���� A =    B C B n     D E D 4    �� F
�� 
cobj F m    ����  E o    ���� 0 args   C m     G G � H H  t r u e��  ��   @ o      ���� B0 includechildrenstotalsinparents includeChildrensTotalsInParents��  ��  ��   %  I J I l  ( (��������  ��  ��   J  K L K O   ( B M N M k   , A O O  P Q P r   , 3 R S R n   , 1 T U T 1   / 1��
�� 
pnam U 2   , /��
�� 
pcap S o      ���� 0 apps   Q  V�� V Z   4 A W X���� W l  4 8 Y���� Y H   4 8 Z Z E   4 7 [ \ [ o   4 5���� 0 apps   \ m   5 6 ] ] � ^ ^  O m n i F o c u s��  ��   X L   ; = _ _ m   ; < ` ` � a a & # # #   N O T   R U N N I N G   # # #��  ��  ��   N m   ( ) b b�                                                                                  sevs   alis    �  Mac Book Pro               �WXfH+     �System Events.app                                                ���        ����  	                CoreServices    �W��      ��C       �   Q   P  :Mac Book Pro:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c   B o o k   P r o  -System/Library/CoreServices/System Events.app   / ��   L  c d c l  C C��������  ��  ��   d  e f e l  C C�� g h��   g C = Testing code to see how widget handles slow response from OF    h � i i z   T e s t i n g   c o d e   t o   s e e   h o w   w i d g e t   h a n d l e s   s l o w   r e s p o n s e   f r o m   O F f  j k j l  C C�� l m��   l   delay 2    m � n n    d e l a y   2 k  o p o l  C C��������  ��  ��   p  q r q O   C � s t s k   J � u u  v w v r   J O x y x 2   J M��
�� 
FCct y o      ���� 0 thecontexts theContexts w  z { z r   P W | } | n   P U ~  ~ 1   S U��
�� 
pnam  2   P S��
�� 
FCct } o      ���� 0 thenames theNames {  � � � r   X a � � � n   X ] � � � 1   [ ]��
�� 
FCa# � 2   X [��
�� 
FCct � o      ���� 0 	thecounts 	theCounts �  � � � r   b | � � � n   b x � � � 1   t x��
�� 
rvse � n  b t � � � I   c t�� ����� 00 zipcontextsnamescounts zipContextsNamesCounts �  � � � o   c d���� 0 thecontexts theContexts �  � � � o   d e���� 0 thenames theNames �  � � � o   e h���� 0 	thecounts 	theCounts �  � � � m   h i����   �  � � � m   i l � � � � �   �  ��� � J   l n����  ��  ��   �  f   b c � o      ���� 
0 zipped   �  � � � r   } � � � � n  } � � � � I   ~ ��� ����� 0 buildcounts buildCounts �  � � � o   ~ ����� 
0 zipped   �  � � � J   � �����   �  � � � m   � �����   �  ��� � m   � �����  ��  ��   �  f   } ~ � o      ���� "0 recursedrecords recursedRecords �  � � � r   � � � � � n  � � � � � I   � ��� ����� 0 formatresults formatResults �  � � � n   � � � � � o   � ����� 0 
therecords 
theRecords � o   � ����� "0 recursedrecords recursedRecords �  ��� � J   � �����  ��  ��   �  f   � � � o      ���� 0 
theresults 
theResults �  � � � r   � � � � � n  � � � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr � o      ���� 0 oldtid oldTID �  � � � r   � � � � � o   � ���
�� 
ret  � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr �  � � � r   � � � � � c   � � � � � o   � ����� 0 
theresults 
theResults � m   � ���
�� 
TEXT � o      ���� 0 
resulttext 
resultText �  ��� � r   � � � � � o   � ����� 0 oldtid oldTID � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr��   t n   C G � � � 4  D G�� �
�� 
docu � m   E F����  � m   C D � ��                                                                                  OFOC   alis    X  Mac Book Pro               �WXfH+     �OmniFocus.app                                                  �qĿh        ����  	                Applications    �W��      Ŀ��       �  'Mac Book Pro:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c   B o o k   P r o  Applications/OmniFocus.app  / ��   r  � � � l  � ���������  ��  ��   �  ��� � L   � � � � o   � ����� 0 
resulttext 
resultText��     � � � l     ��������  ��  ��   �  � � � l      �� � ���   � = 7 Converts each record in the input list into a string.     � � � � n   C o n v e r t s   e a c h   r e c o r d   i n   t h e   i n p u t   l i s t   i n t o   a   s t r i n g .   �  � � � i   
  � � � I      �� ����� 0 formatresults formatResults �  � � � o      ���� 0 
therecords 
theRecords �  ��� � o      ���� 	0 accum  ��  ��   � k     5 � �  � � � Z     � ����� � =     � � � o     ���� 0 
therecords 
theRecords � J    ����   � L    	 � � o    ���� 	0 accum  ��  ��   �  � � � r     � � � n     � � � 4    �� �
�� 
cobj � m    ����  � o    �� 0 
therecords 
theRecords � o      �~�~ 0 firstrecord firstRecord �  � � � r    & � � � b    $ � � � b      � � � b     � � � b     � � � l    ��}�| � n       1    �{
�{ 
pnam o    �z�z 0 firstrecord firstRecord�}  �|   � o    �y
�y 
ret  � l   �x�w n     o    �v�v 	0 count   o    �u�u 0 firstrecord firstRecord�x  �w   � o    �t
�t 
ret  � l    #�s�r n     # o   ! #�q�q 	0 depth   o     !�p�p 0 firstrecord firstRecord�s  �r   � o      �o�o 0 astext asText � �n L   ' 5		 I   ' 4�m
�l�m 0 formatresults formatResults
  n   ( + 1   ) +�k
�k 
rest o   ( )�j�j 0 
therecords 
theRecords �i b   + 0 J   + . �h o   + ,�g�g 0 astext asText�h   o   . /�f�f 	0 accum  �i  �l  �n   �  l     �e�d�c�e  �d  �c    l      �b�b   r l Recursively zips together the three lists into records. 
requires: lengths of all three lists are the same     � �   R e c u r s i v e l y   z i p s   t o g e t h e r   t h e   t h r e e   l i s t s   i n t o   r e c o r d s .   
 r e q u i r e s :   l e n g t h s   o f   a l l   t h r e e   l i s t s   a r e   t h e   s a m e    i     I      �a�`�a 00 zipcontextsnamescounts zipContextsNamesCounts  !  o      �_�_ 0 thecontexts theContexts! "#" o      �^�^ 0 thenames theNames# $%$ o      �]�] 0 	thecounts 	theCounts% &'& o      �\�\ 	0 depth  ' ()( o      �[�[ 0 
nameprefix 
namePrefix) *�Z* o      �Y�Y 	0 accum  �Z  �`   k     u++ ,-, Z    ./�X�W. =    010 o     �V�V 0 thecontexts theContexts1 J    �U�U  / L    	22 o    �T�T 	0 accum  �X  �W  - 343 r    565 n    787 4    �S9
�S 
cobj9 m    �R�R 8 o    �Q�Q 0 	thecounts 	theCounts6 o      �P�P 0 
firstcount 
firstCount4 :;: w    <=< r    >?> n    @A@ 1    �O
�O 
FCHiA l   B�N�MB n    CDC 4    �LE
�L 
cobjE m    �K�K D o    �J�J 0 thecontexts theContexts�N  �M  ? o      �I�I 0 	isdropped 	isDropped=�                                                                                  OFOC   alis    X  Mac Book Pro               �WXfH+     �OmniFocus.app                                                  �qĿh        ����  	                Applications    �W��      Ŀ��       �  'Mac Book Pro:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c   B o o k   P r o  Applications/OmniFocus.app  / ��  ; F�HF Z     uGH�GIG G     3JKJ o     !�F�F 0 	isdropped 	isDroppedK l  $ 1L�E�DL F   $ 1MNM =  $ 'OPO o   $ %�C�C 0 
firstcount 
firstCountP m   % &�B�B  N o   * /�A�A 00 showonlyactivecontexts showOnlyActiveContexts�E  �D  H k   6 HQQ RSR l  6 6�@TU�@  T * $ Skips this context and its children   U �VV H   S k i p s   t h i s   c o n t e x t   a n d   i t s   c h i l d r e nS W�?W L   6 HXX I   6 G�>Y�=�> 00 zipcontextsnamescounts zipContextsNamesCountsY Z[Z n   7 :\]\ 1   8 :�<
�< 
rest] o   7 8�;�; 0 thecontexts theContexts[ ^_^ n   : =`a` 1   ; =�:
�: 
resta o   : ;�9�9 0 thenames theNames_ bcb n   = @ded 1   > @�8
�8 
reste o   = >�7�7 0 	thecounts 	theCountsc fgf o   @ A�6�6 	0 depth  g hih o   A B�5�5 0 
nameprefix 
namePrefixi j�4j o   B C�3�3 	0 accum  �4  �=  �?  �G  I L   K ukk I   K t�2l�1�2 00 zipcontextsnamescounts zipContextsNamesCountsl mnm n   L Oopo 1   M O�0
�0 
restp o   L M�/�/ 0 thecontexts theContextsn qrq n   O Rsts 1   P R�.
�. 
restt o   O P�-�- 0 thenames theNamesr uvu n   R Uwxw 1   S U�,
�, 
restx o   R S�+�+ 0 	thecounts 	theCountsv yzy o   U V�*�* 	0 depth  z {|{ o   V W�)�) 0 
nameprefix 
namePrefix| }�(} b   W p~~ J   W n�� ��'� K   W l�� �&���& 0 context  � n   X \��� 4   Y \�%�
�% 
cobj� m   Z [�$�$ � o   X Y�#�# 0 thecontexts theContexts� �"��
�" 
pnam� l  ] c��!� � b   ] c��� o   ] ^�� 0 
nameprefix 
namePrefix� l  ^ b���� n   ^ b��� 4   _ b��
� 
cobj� m   ` a�� � o   ^ _�� 0 thenames theNames�  �  �!  �   � ���� 	0 count  � n   d h��� 4   e h��
� 
cobj� m   f g�� � o   d e�� 0 	thecounts 	theCounts� ���� 	0 depth  � o   i j�� 	0 depth  �  �'   o   n o�� 	0 accum  �(  �1  �H   ��� l     ����  �  �  � ��� l      ����  �uo 
	Recursively builds a list of records including subcontexts. Subtracts subcontext counts from parent contexts.
	recordsToSearch: a list of context records
	accum: a list of context records
	countSoFar: the number of tasks found in the portion of recordsToSearch processed so far
	depth: the current depth in the context hierarchy
	result: a {total, theRecords} pair   � ����   
 	 R e c u r s i v e l y   b u i l d s   a   l i s t   o f   r e c o r d s   i n c l u d i n g   s u b c o n t e x t s .   S u b t r a c t s   s u b c o n t e x t   c o u n t s   f r o m   p a r e n t   c o n t e x t s . 
 	 r e c o r d s T o S e a r c h :   a   l i s t   o f   c o n t e x t   r e c o r d s 
 	 a c c u m :   a   l i s t   o f   c o n t e x t   r e c o r d s 
 	 c o u n t S o F a r :   t h e   n u m b e r   o f   t a s k s   f o u n d   i n   t h e   p o r t i o n   o f   r e c o r d s T o S e a r c h   p r o c e s s e d   s o   f a r 
 	 d e p t h :   t h e   c u r r e n t   d e p t h   i n   t h e   c o n t e x t   h i e r a r c h y 
 	 r e s u l t :   a   { t o t a l ,   t h e R e c o r d s }   p a i r� ��� i    ��� I      ���� 0 buildcounts buildCounts� ��� o      �
�
 "0 recordstosearch recordsToSearch� ��� o      �	�	 	0 accum  � ��� o      �� 0 
countsofar 
countSoFar� ��� o      �� 	0 depth  �  �  � w     ���� k    ��� ��� Z   ����� l   ���� =   ��� o    �� "0 recordstosearch recordsToSearch� J    � �   �  �  � L   	 �� K   	 �� ������ 	0 total  � o   
 ���� 0 
countsofar 
countSoFar� ������� 0 
therecords 
theRecords� o    ���� 	0 accum  ��  �  �  � ��� r    ��� n    ��� 4    ���
�� 
cobj� m    ���� � o    ���� "0 recordstosearch recordsToSearch� o      ���� 0 firstrecord firstRecord� ��� l   ������  � z t Gets sub-context results, subtracts total from super context count, adds firstRecord and sublist to accum, recurses   � ��� �   G e t s   s u b - c o n t e x t   r e s u l t s ,   s u b t r a c t s   t o t a l   f r o m   s u p e r   c o n t e x t   c o u n t ,   a d d s   f i r s t R e c o r d   a n d   s u b l i s t   t o   a c c u m ,   r e c u r s e s� ��� O    8��� k   " 7�� ��� r   " '��� 2   " %��
�� 
FCct� o      ���� 0 subcontexts subContexts� ��� r   ( /��� n   ( -��� 1   + -��
�� 
pnam� 2   ( +��
�� 
FCct� o      ���� 0 subnames subNames� ���� r   0 7��� n   0 5��� 1   3 5��
�� 
FCa#� 2   0 3��
�� 
FCct� o      ���� 0 	subcounts 	subCounts��  � n    ��� o    ���� 0 context  � o    ���� 0 firstrecord firstRecord� ��� r   9 O��� n   9 M��� 1   K M��
�� 
rvse� n  9 K��� I   : K������� 00 zipcontextsnamescounts zipContextsNamesCounts� ��� o   : ;���� 0 subcontexts subContexts� ��� o   ; <���� 0 subnames subNames� ��� o   < =���� 0 	subcounts 	subCounts� ��� [   = @��� o   = >���� 	0 depth  � m   > ?���� � ��� l  @ E������ b   @ E��� n   @ C��� 1   A C��
�� 
pnam� o   @ A���� 0 firstrecord firstRecord� m   C D�� ��� !���  ��  � ���� J   E G����  ��  ��  �  f   9 :� o      ���� 0 	subzipped 	subZipped� ��� r   P ^��� n  P \��� I   Q \������� 0 buildcounts buildCounts� ��� o   Q R���� 0 	subzipped 	subZipped�    J   R T����    m   T U����   �� [   U X o   U V���� 	0 depth   m   V W���� ��  ��  �  f   P Q� o      ���� 0 
subresults 
subResults�  r   _ d	
	 n   _ b o   ` b���� 	0 count   o   _ `���� 0 firstrecord firstRecord
 o      ���� 0 	origcount 	origCount  Z   e {���� H   e k o   e j���� B0 includechildrenstotalsinparents includeChildrensTotalsInParents r   n w \   n s o   n o���� 0 	origcount 	origCount l  o r���� n   o r o   p r���� 	0 total   o   o p���� 0 
subresults 
subResults��  ��   n       o   t v���� 	0 count   o   s t���� 0 firstrecord firstRecord��  ��    r   | � o   | }���� 0 firstrecord firstRecord n         ;   � �  n   } �!"! o   ~ ����� 0 
therecords 
theRecords" o   } ~���� 0 
subresults 
subResults #��# L   � �$$ n  � �%&% I   � ���'���� 0 buildcounts buildCounts' ()( n   � �*+* 1   � ���
�� 
rest+ o   � ����� "0 recordstosearch recordsToSearch) ,-, b   � �./. l  � �0����0 n   � �121 o   � ����� 0 
therecords 
theRecords2 o   � ����� 0 
subresults 
subResults��  ��  / o   � ����� 	0 accum  - 343 [   � �565 o   � ����� 0 
countsofar 
countSoFar6 o   � ����� 0 	origcount 	origCount4 7��7 o   � ����� 	0 depth  ��  ��  &  f   � ���  ��                                                                                  OFOC   alis    X  Mac Book Pro               �WXfH+     �OmniFocus.app                                                  �qĿh        ����  	                Applications    �W��      Ŀ��       �  'Mac Book Pro:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c   B o o k   P r o  Applications/OmniFocus.app  / ��  �       ��8����9:;<=>?@ABCDE��������������������  8 �������������������������������������������������� 00 showonlyactivecontexts showOnlyActiveContexts�� B0 includechildrenstotalsinparents includeChildrensTotalsInParents
�� .aevtoappnull  �   � ****�� 0 formatresults formatResults�� 00 zipcontextsnamescounts zipContextsNamesCounts�� 0 buildcounts buildCounts�� 0 apps  �� 0 thecontexts theContexts�� 0 thenames theNames�� 0 	thecounts 	theCounts�� 
0 zipped  �� "0 recursedrecords recursedRecords�� 0 
theresults 
theResults�� 0 oldtid oldTID�� 0 
resulttext 
resultText��  ��  ��  ��  ��  ��  ��  ��  ��  
�� boovtrue
�� boovtrue9 �� !����FG��
�� .aevtoappnull  �   � ****�� 0 args  ��  F ���� 0 args  G "���� < G b������ ] ` ������������� �����~�}�|�{�z�y�x�w�v�u�t�s�r�q
�� .corecnte****       ****
�� 
cobj
�� 
pcap
�� 
pnam�� 0 apps  
�� 
docu
�� 
FCct�� 0 thecontexts theContexts�� 0 thenames theNames
�� 
FCa#�� 0 	thecounts 	theCounts�� � 00 zipcontextsnamescounts zipContextsNamesCounts
�~ 
rvse�} 
0 zipped  �| �{ 0 buildcounts buildCounts�z "0 recursedrecords recursedRecords�y 0 
therecords 
theRecords�x 0 formatresults formatResults�w 0 
theresults 
theResults
�v 
ascr
�u 
txdl�t 0 oldtid oldTID
�s 
ret 
�r 
TEXT�q 0 
resulttext 
resultText�� ٠j  l  ��k/� Ec   O��l/� Ec  Y hO� *�-�,E�O�� �Y hUO��k/ �*�-E�O*�-�,E�O*�-�,E` O)��_ ja jva + a ,E` O)_ jvjja + E` O)_ a ,jvl+ E` O_ a ,E` O_ _ a ,FO_ a  &E` !O_ _ a ,FUO_ !: �p ��o�nHI�m�p 0 formatresults formatResults�o �lJ�l J  �k�j�k 0 
therecords 
theRecords�j 	0 accum  �n  H �i�h�g�f�i 0 
therecords 
theRecords�h 	0 accum  �g 0 firstrecord firstRecord�f 0 astext asTextI �e�d�c�b�a�`�_
�e 
cobj
�d 
pnam
�c 
ret �b 	0 count  �a 	0 depth  
�` 
rest�_ 0 formatresults formatResults�m 6�jv  �Y hO��k/E�O��,�%��,%�%��,%E�O*��,�kv�%l+ ; �^�]�\KL�[�^ 00 zipcontextsnamescounts zipContextsNamesCounts�] �ZM�Z M  �Y�X�W�V�U�T�Y 0 thecontexts theContexts�X 0 thenames theNames�W 0 	thecounts 	theCounts�V 	0 depth  �U 0 
nameprefix 
namePrefix�T 	0 accum  �\  K �S�R�Q�P�O�N�M�L�S 0 thecontexts theContexts�R 0 thenames theNames�Q 0 	thecounts 	theCounts�P 	0 depth  �O 0 
nameprefix 
namePrefix�N 	0 accum  �M 0 
firstcount 
firstCount�L 0 	isdropped 	isDroppedL �K=�J�I�H�G�F�E�D�C�B�A
�K 
cobj
�J 
FCHi
�I 
bool
�H 
rest�G �F 00 zipcontextsnamescounts zipContextsNamesCounts�E 0 context  
�D 
pnam�C 	0 count  �B 	0 depth  �A �[ v�jv  �Y hO��k/E�O�Z��k/�,E�O�
 �j 	 	b   �&�& *��,��,��,����+ Y ,*��,��,��,����k/褡�k/%��k/��kv�%�+ < �@��?�>NO�=�@ 0 buildcounts buildCounts�? �<P�< P  �;�:�9�8�; "0 recordstosearch recordsToSearch�: 	0 accum  �9 0 
countsofar 
countSoFar�8 	0 depth  �>  N �7�6�5�4�3�2�1�0�/�.�-�7 "0 recordstosearch recordsToSearch�6 	0 accum  �5 0 
countsofar 
countSoFar�4 	0 depth  �3 0 firstrecord firstRecord�2 0 subcontexts subContexts�1 0 subnames subNames�0 0 	subcounts 	subCounts�/ 0 	subzipped 	subZipped�. 0 
subresults 
subResults�- 0 	origcount 	origCountO ��,�+�*�)�(�'�&�%��$�#�"�!� ��, 	0 total  �+ 0 
therecords 
theRecords�* 
�) 
cobj�( 0 context  
�' 
FCct
�& 
pnam
�% 
FCa#�$ �# 00 zipcontextsnamescounts zipContextsNamesCounts
�" 
rvse�! 0 buildcounts buildCounts�  	0 count  
� 
rest�= ��Z�jv  ���Y hO��k/E�O��, *�-E�O*�-�,E�O*�-�,E�UO)����k��,�%jv�+ �,E�O)�jvj�k�+ E�O��,E�Ob   ���,��,FY hO���,6FO)��,��,�%����+ = �Q� Q  RSTUVWXYZ[\]^_`abcdefghijklmnoR �pp  l o g i n w i n d o wS �qq  A p p l e V N C S e r v e rT �rr  D o c kU �ss 4 A i r P o r t   B a s e   S t a t i o n   A g e n tV �tt  S p o t l i g h tW �uu  S y s t e m U I S e r v e rX �vv  F i n d e rY �ww  P T H P a s t e b o a r dZ �xx  i T u n e s H e l p e r[ �yy  T w i t t e r r i f i c\ �zz $ U S B O v e r d r i v e H e l p e r] �{{  L a u n c h B a r^ �||  G r o w l H e l p e r A p p_ �}}  G r o w l T u n e s` �~~  F u z z y C l o c ka �  E P S O N   S c a n n e rb ��� . I m a g e   C a p t u r e   E x t e n s i o nc ���  i C a ld ���  D a s h c o d ee ���  S c r i p t   E d i t o rf ���  P r e v i e wg ���  m d w o r k e rh ���  S a f a r ii ���  O m n i F o c u sj ���  m d w o r k e rk ���  i T u n e sl ���  D a s h c o d e C l i e n tm ���  A p p l e S p e l ln ���  o s a s c r i p to ���  S y s t e m   E v e n t s> ��� 
� 
 ����������� �� �����  ����
� 
docu� ���  e T 4 j o S X N m 3 c
� kfrmID  
� 
FCct� ���  j 9 n c 7 j I n f D c
� kfrmID  � �� �����  ����
� 
docu� ���  e T 4 j o S X N m 3 c
� kfrmID  
� 
FCct� ���  i 3 j p - 5 2 8 0 v F
� kfrmID  � �� �����  ����
� 
docu� ���  e T 4 j o S X N m 3 c
� kfrmID  
� 
FCct� ���  a w 2 F n g Z W s C D
� kfrmID  � �� �����  ����
� 
docu� ���  e T 4 j o S X N m 3 c
� kfrmID  
� 
FCct� ���  o T V g e j 1 i f U O
� kfrmID  � �� �����  ��
��	
�
 
docu� ���  e T 4 j o S X N m 3 c
�	 kfrmID  
� 
FCct� ���  c M 1 h w W A 5 4 h 1
� kfrmID  � �� �����  ����
� 
docu� ���  e T 4 j o S X N m 3 c
� kfrmID  
� 
FCct� ���  l j T 9 f 7 5 B n i V
� kfrmID  � �� �����  ����
� 
docu� ���  e T 4 j o S X N m 3 c
� kfrmID  
� 
FCct� ���  c e w B c j D t v o r
� kfrmID  � �� �� ����  ������
�� 
docu� ���  e T 4 j o S X N m 3 c
�� kfrmID  
�  
FCct� ���  n e V 7 P T 6 K A 4 C
�� kfrmID  � �� �������  ������
�� 
docu� ���  e T 4 j o S X N m 3 c
�� kfrmID  
�� 
FCct� ���  n X X 9 n 4 I D Y y Z
�� kfrmID  � �� �������  ������
�� 
docu� ���  e T 4 j o S X N m 3 c
�� kfrmID  
�� 
FCct� ���  m Y J H 3 P 0 Q X _ M
�� kfrmID  ? ����� 
� 
 ����������� ���  H o m e� ��� 
 P h o n e� ���  B r i e f c a s e� ��� $ B r i e f c a s e   P l a n n i n g� ��� " B r i e f c a s e   R e a d i n g� ���  M a c� ���  C a m p u s� ���  E r r a n d s� ���  A w a i t i n g� ���  G a r y@ ����� 
� 
 ���������������������� �� ��  ��  ��  �� )�� �� �� ��  A ����� �  ������� ������ 0 context  � ����
�� 
pnam� ���  H o m e� ������� 	0 count  �� � �������� 	0 depth  ��  ��  � ������ 0 context  � ����
�� 
pnam� ��� 
 P h o n e� ������� 	0 count  �� � �������� 	0 depth  ��  ��  � ������ 0 context  � ����
�� 
pnam� ���  M a c� ���� �� 	0 count  �� )  �������� 	0 depth  ��  ��  � ����� 0 context   ��
�� 
pnam �  C a m p u s ������ 	0 count  ��  �������� 	0 depth  ��  ��  � ����� 0 context   ��
�� 
pnam �		  E r r a n d s ����
�� 	0 count  �� 
 �������� 	0 depth  ��  ��  � ����� 0 context   ��
�� 
pnam �  A w a i t i n g ������ 	0 count  ��  �������� 	0 depth  ��  ��  B ������ 	0 total  �� T ������ 0 
therecords 
theRecords ����   ������ ���� 0 context    �� ��  ���!��
�� 
docu! �""  e T 4 j o S X N m 3 c
�� kfrmID  
�� 
FCct  �##  j k w G c q a F m f K
�� kfrmID   ��$%
�� 
pnam$ �&& . C a m p u s!� O f f i c e   o n   C a m p u s% ����'�� 	0 count  �� ' �������� 	0 depth  �� ��   ��()�� 0 context  ( ** +��,��+  ���-��
�� 
docu- �..  e T 4 j o S X N m 3 c
�� kfrmID  
�� 
FCct, �//  a l K j n 2 _ 4 c k c
�� kfrmID  ) ��01
�� 
pnam0 �22  M a c!� O n - l i n e1 ����3�� 	0 count  �� 3 �������� 	0 depth  �� ��   ��45�� 0 context  4 66 7��8��7  ���9��
�� 
docu9 �::  e T 4 j o S X N m 3 c
�� kfrmID  
�� 
FCct8 �;;  e R 6 W w T Y 0 g Z -
�� kfrmID  5 ��<=
�� 
pnam< �>>  M a c!� W r i t i n g= ����?�� 	0 count  �� ? �������� 	0 depth  �� ��   ��@A�� 0 context  @ BB C��D��C  ���E��
�� 
docuE �FF  e T 4 j o S X N m 3 c
�� kfrmID  
�� 
FCctD �GG  j K - E C K 6 z a a W
�� kfrmID  A ��HI
�� 
pnamH �JJ  M a c!� O f f - l i n eI ����K�� 	0 count  �� 
K �������� 	0 depth  �� ��   ��LM�� 0 context  L NN O��P��O  ���Q��
�� 
docuQ �RR  e T 4 j o S X N m 3 c
�� kfrmID  
�� 
FCctP �SS  f l T t 4 N 3 f p _ s
�� kfrmID  M ��TU
�� 
pnamT �VV  P h o n e!� P e r s o n a lU ����W�� 	0 count  �� W �������� 	0 depth  �� ��   ��XY�� 0 context  X ZZ [��\�[  ��~]�}
�~ 
docu] �^^  e T 4 j o S X N m 3 c
�} kfrmID  
�� 
FCct\ �__  k L A T C 3 l T w q P
� kfrmID  Y �|`a
�| 
pnam` �bb & P h o n e!� B u s i n e s s   H r s .a �{�zc�{ 	0 count  �z c �y�x�w�y 	0 depth  �x �w   �vde�v 0 context  d ff g�uh�tg  ��si�r
�s 
docui �jj  e T 4 j o S X N m 3 c
�r kfrmID  
�u 
FCcth �kk  c i 6 M _ d q Q d x o
�t kfrmID  e �qlm
�q 
pnaml �nn  H o m e!� W i t h   L i s am �p�oo�p 	0 count  �o o �n�m�l�n 	0 depth  �m �l   �kpq�k 0 context  p rr s�jt�is  ��hu�g
�h 
docuu �vv  e T 4 j o S X N m 3 c
�g kfrmID  
�j 
FCctt �ww  l v P C m D C d A O C
�i kfrmID  q �fxy
�f 
pnamx �zz  H o m e!� C h o r e sy �e�d{�e 	0 count  �d 	{ �c�b�a�c 	0 depth  �b �a   �`|}�` 0 context  | ~~ �_��^  ��]��\
�] 
docu� ���  e T 4 j o S X N m 3 c
�\ kfrmID  
�_ 
FCct� ���  l A X R o t 5 X h c o
�^ kfrmID  } �[��
�[ 
pnam� ��� & H o m e!� O f f i c e   a t   H o m e� �Z�Y��Z 	0 count  �Y � �X�W�V�X 	0 depth  �W �V  ��  C �U��U �  ���������������� ���  H o m e  2 4  0� ��� 0 H o m e!� O f f i c e   a t   H o m e  1 1  1� ���  H o m e!� C h o r e s  9  1� ��� $ H o m e!� W i t h   L i s a  1  1� ���  P h o n e  5  0� ��� . P h o n e!� B u s i n e s s   H r s .  4  1� ��� $ P h o n e!� P e r s o n a l  1  1� ���  M a c  4 1  0� ��� " M a c!� O f f - l i n e  1 0  1� ���  M a c!� W r i t i n g  1  1� ���   M a c!� O n - l i n e  3 0  1� ���  C a m p u s  4  0� ��� 6 C a m p u s!� O f f i c e   o n   C a m p u s  3  1� ���  E r r a n d s  4  0� ���  A w a i t i n g  6  0D �T��T �  �� ���  E ���� H o m e  2 4  0  H o m e!� O f f i c e   a t   H o m e  1 1  1  H o m e!� C h o r e s  9  1  H o m e!� W i t h   L i s a  1  1  P h o n e  5  0  P h o n e!� B u s i n e s s   H r s .  4  1  P h o n e!� P e r s o n a l  1  1  M a c  4 1  0  M a c!� O f f - l i n e  1 0  1  M a c!� W r i t i n g  1  1  M a c!� O n - l i n e  3 0  1  C a m p u s  4  0  C a m p u s!� O f f i c e   o n   C a m p u s  3  1  E r r a n d s  4  0  A w a i t i n g  6  0��  ��  ��  ��  ��  ��  ��  ��  ��  ascr  ��ޭ