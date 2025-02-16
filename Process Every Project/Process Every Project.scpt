FasdUAS 1.101.10   ��   ��    k             l      ��  ��   "
	This script is a template for use in scripts that need to process every project in an OmniFocus database.  The template provides stubs for two handlers that script developers can complete to create custom solutions.  Script developers, see the handlers shouldProjectBeIncluded and handleProjects.
	
	At this writing (Feb 10, 2010) there is no command in OmniFocus's dictionary to get all the projects, so this template uses a brute force recursion over the Library tree.
	
	version 0.1, by Curt Clifton
	
	Copyright � 2010, Curtis Clifton
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
	
	version 0.1: Original release
     � 	 	8 
 	 T h i s   s c r i p t   i s   a   t e m p l a t e   f o r   u s e   i n   s c r i p t s   t h a t   n e e d   t o   p r o c e s s   e v e r y   p r o j e c t   i n   a n   O m n i F o c u s   d a t a b a s e .     T h e   t e m p l a t e   p r o v i d e s   s t u b s   f o r   t w o   h a n d l e r s   t h a t   s c r i p t   d e v e l o p e r s   c a n   c o m p l e t e   t o   c r e a t e   c u s t o m   s o l u t i o n s .     S c r i p t   d e v e l o p e r s ,   s e e   t h e   h a n d l e r s   s h o u l d P r o j e c t B e I n c l u d e d   a n d   h a n d l e P r o j e c t s . 
 	 
 	 A t   t h i s   w r i t i n g   ( F e b   1 0 ,   2 0 1 0 )   t h e r e   i s   n o   c o m m a n d   i n   O m n i F o c u s ' s   d i c t i o n a r y   t o   g e t   a l l   t h e   p r o j e c t s ,   s o   t h i s   t e m p l a t e   u s e s   a   b r u t e   f o r c e   r e c u r s i o n   o v e r   t h e   L i b r a r y   t r e e . 
 	 
 	 v e r s i o n   0 . 1 ,   b y   C u r t   C l i f t o n 
 	 
 	 C o p y r i g h t   �   2 0 1 0 ,   C u r t i s   C l i f t o n 
 	 
 	 R e d i s t r i b u t i o n   a n d   u s e   i n   s o u r c e   a n d   b i n a r y   f o r m s ,   w i t h   o r   w i t h o u t   m o d i f i c a t i o n ,   a r e   p e r m i t t e d   p r o v i d e d   t h a t   t h e   f o l l o w i n g   c o n d i t i o n s   a r e   m e t : 
 	 
 	 	 "   R e d i s t r i b u t i o n s   o f   s o u r c e   c o d e   m u s t   r e t a i n   t h e   a b o v e   c o p y r i g h t   n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r . 
 	 	 
 	 	 "   R e d i s t r i b u t i o n s   i n   b i n a r y   f o r m   m u s t   r e p r o d u c e   t h e   a b o v e   c o p y r i g h t   n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r   i n   t h e   d o c u m e n t a t i o n   a n d / o r   o t h e r   m a t e r i a l s   p r o v i d e d   w i t h   t h e   d i s t r i b u t i o n . 
 	 	 
 	 T H I S   S O F T W A R E   I S   P R O V I D E D   B Y   T H E   C O P Y R I G H T   H O L D E R S   A N D   C O N T R I B U T O R S   " A S   I S "   A N D   A N Y   E X P R E S S   O R   I M P L I E D   W A R R A N T I E S ,   I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   T H E   I M P L I E D   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y   A N D   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A R E   D I S C L A I M E D .   I N   N O   E V E N T   S H A L L   T H E   C O P Y R I G H T   O W N E R   O R   C O N T R I B U T O R S   B E   L I A B L E   F O R   A N Y   D I R E C T ,   I N D I R E C T ,   I N C I D E N T A L ,   S P E C I A L ,   E X E M P L A R Y ,   O R   C O N S E Q U E N T I A L   D A M A G E S   ( I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   P R O C U R E M E N T   O F   S U B S T I T U T E   G O O D S   O R   S E R V I C E S ;   L O S S   O F   U S E ,   D A T A ,   O R   P R O F I T S ;   O R   B U S I N E S S   I N T E R R U P T I O N )   H O W E V E R   C A U S E D   A N D   O N   A N Y   T H E O R Y   O F   L I A B I L I T Y ,   W H E T H E R   I N   C O N T R A C T ,   S T R I C T   L I A B I L I T Y ,   O R   T O R T   ( I N C L U D I N G   N E G L I G E N C E   O R   O T H E R W I S E )   A R I S I N G   I N   A N Y   W A Y   O U T   O F   T H E   U S E   O F   T H I S   S O F T W A R E ,   E V E N   I F   A D V I S E D   O F   T H E   P O S S I B I L I T Y   O F   S U C H   D A M A G E . 
 	 
 	 v e r s i o n   0 . 1 :   O r i g i n a l   r e l e a s e 
   
  
 l     ��������  ��  ��        l      ��  ��    � � TODO: Change this property to control whether the script looks at projects inside folders that are hidden. The hidden property of a folder seems to correspond to the Dropped setting for a folder in the OmniFocus user interface.      �  �   T O D O :   C h a n g e   t h i s   p r o p e r t y   t o   c o n t r o l   w h e t h e r   t h e   s c r i p t   l o o k s   a t   p r o j e c t s   i n s i d e   f o l d e r s   t h a t   a r e   h i d d e n .   T h e   h i d d e n   p r o p e r t y   o f   a   f o l d e r   s e e m s   t o   c o r r e s p o n d   t o   t h e   D r o p p e d   s e t t i n g   f o r   a   f o l d e r   i n   t h e   O m n i F o c u s   u s e r   i n t e r f a c e .        j     �� �� 60 shouldlookinhiddenfolders shouldLookInHiddenFolders  m     ��
�� boovfals      l     ��������  ��  ��        l      ��  ��    � �
	Tests whether the given OmniFocus project should be included in the list of projects to be processed.
	
	Developers should customize this handler if they wish to filter out some projects.
     �  | 
 	 T e s t s   w h e t h e r   t h e   g i v e n   O m n i F o c u s   p r o j e c t   s h o u l d   b e   i n c l u d e d   i n   t h e   l i s t   o f   p r o j e c t s   t o   b e   p r o c e s s e d . 
 	 
 	 D e v e l o p e r s   s h o u l d   c u s t o m i z e   t h i s   h a n d l e r   i f   t h e y   w i s h   t o   f i l t e r   o u t   s o m e   p r o j e c t s . 
      i        I      �� ���� 20 shouldprojectbeincluded shouldProjectBeIncluded    ��   o      ���� 0 
theproject 
theProject��  ��    w      ! " ! k     # #  $ % $ l   �� & '��   & Q K TODO: test theProject and return true to include it or false to exclude it    ' � ( ( �   T O D O :   t e s t   t h e P r o j e c t   a n d   r e t u r n   t r u e   t o   i n c l u d e   i t   o r   f a l s e   t o   e x c l u d e   i t %  ) * ) l   �� + ,��   + 0 * For example: return theProject is flagged    , � - - T   F o r   e x a m p l e :   r e t u r n   t h e P r o j e c t   i s   f l a g g e d *  . / . L     0 0 m    ��
�� boovtrue /  1�� 1 l   �� 2 3��   2 T N -----------------------------------------------------------------------------    3 � 4 4 �   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -��   "�                                                                                  OFOC  alis    X  Mac Book Pro               �WXfH+  �lOmniFocus.app                                                  P�l�]�        ����  	                Applications    �W��      ��    �l  'Mac Book Pro:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c   B o o k   P r o  Applications/OmniFocus.app  / ��     5 6 5 l     ��������  ��  ��   6  7 8 7 l      �� 9 :��   9 y s
	Processes the list of all matched projects.
	
	Developers should customize this handler to process the projects.
    : � ; ; � 
 	 P r o c e s s e s   t h e   l i s t   o f   a l l   m a t c h e d   p r o j e c t s . 
 	 
 	 D e v e l o p e r s   s h o u l d   c u s t o m i z e   t h i s   h a n d l e r   t o   p r o c e s s   t h e   p r o j e c t s . 
 8  < = < i    
 > ? > I      �� @����  0 handleprojects handleProjects @  A�� A o      ���� (0 thematchedprojects theMatchedProjects��  ��   ? w     
 B C B k    
 D D  E F E l   �� G H��   G } w TODO: replace the following with code to process the projects (perhaps looping over them to process them individually)    H � I I �   T O D O :   r e p l a c e   t h e   f o l l o w i n g   w i t h   c o d e   t o   p r o c e s s   t h e   p r o j e c t s   ( p e r h a p s   l o o p i n g   o v e r   t h e m   t o   p r o c e s s   t h e m   i n d i v i d u a l l y ) F  J K J L     L L I   �� M��
�� .corecnte****       **** M o    ���� (0 thematchedprojects theMatchedProjects��   K  N�� N l  	 	�� O P��   O T N -----------------------------------------------------------------------------    P � Q Q �   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -��   C�                                                                                  OFOC  alis    X  Mac Book Pro               �WXfH+  �lOmniFocus.app                                                  P�l�]�        ����  	                Applications    �W��      ��    �l  'Mac Book Pro:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c   B o o k   P r o  Applications/OmniFocus.app  / ��   =  R S R l     ��������  ��  ��   S  T U T l      �� V W��   V  
	Main entry point.
    W � X X ( 
 	 M a i n   e n t r y   p o i n t . 
 U  Y Z Y l    $ [���� [ O     $ \ ] \ O    # ^ _ ^ k    " ` `  a b a r     c d c 2    ��
�� 
FCSX d o      ���� 0 thesections theSections b  e f e r     g h g n    i j i I    �� k���� (0 accumulateprojects accumulateProjects k  l m l o    ���� 0 thesections theSections m  n�� n J    ����  ��  ��   j  f     h o      ���� "0 matchedprojects matchedProjects f  o�� o n   " p q p I    "�� r����  0 handleprojects handleProjects r  s�� s o    ���� "0 matchedprojects matchedProjects��  ��   q  f    ��   _ 4   �� t
�� 
docu t m    ����  ] m      u u�                                                                                  OFOC  alis    X  Mac Book Pro               �WXfH+  �lOmniFocus.app                                                  P�l�]�        ����  	                Applications    �W��      ��    �l  'Mac Book Pro:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c   B o o k   P r o  Applications/OmniFocus.app  / ��  ��  ��   Z  v w v l     ��������  ��  ��   w  x y x l      �� z {��   z � � 
	Recurses over the given sections of the Library. Accumulates a list of projects that satisfy the 'shouldProjectBeIncluded' handler.

	theSections: a list of folders, projects, and tasks
	accum: the matching projects that have been found so far 
    { � | |�   
 	 R e c u r s e s   o v e r   t h e   g i v e n   s e c t i o n s   o f   t h e   L i b r a r y .   A c c u m u l a t e s   a   l i s t   o f   p r o j e c t s   t h a t   s a t i s f y   t h e   ' s h o u l d P r o j e c t B e I n c l u d e d '   h a n d l e r . 
 
 	 t h e S e c t i o n s :   a   l i s t   o f   f o l d e r s ,   p r o j e c t s ,   a n d   t a s k s 
 	 a c c u m :   t h e   m a t c h i n g   p r o j e c t s   t h a t   h a v e   b e e n   f o u n d   s o   f a r   
 y  } ~ } i      �  I      �� ����� (0 accumulateprojects accumulateProjects �  � � � o      ���� 0 thesections theSections �  ��� � o      ���� 	0 accum  ��  ��   � k     ! � �  � � � Z     � ����� � l     ����� � =     � � � o     ���� 0 thesections theSections � J    ����  ��  ��   � L    	 � � o    ���� 	0 accum  ��  ��   �  ��� � L    ! � � I     �� ����� (0 accumulateprojects accumulateProjects �  � � � n     � � � 1    ��
�� 
rest � o    ���� 0 thesections theSections �  ��� � I    �� ����� 40 accumulateprojectshelper accumulateProjectsHelper �  � � � n     � � � 4    �� �
�� 
cobj � m    ����  � o    ���� 0 thesections theSections �  ��� � o    ���� 	0 accum  ��  ��  ��  ��  ��   ~  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � � 
	Recurses over the tree rooted at the given item. Accumulates a list of projects that satisfy the 'shouldProjectBeIncluded' handler.

	theItem: a folder, project, or task
	accum: the matching projects that have been found so far 
    � � � ��   
 	 R e c u r s e s   o v e r   t h e   t r e e   r o o t e d   a t   t h e   g i v e n   i t e m .   A c c u m u l a t e s   a   l i s t   o f   p r o j e c t s   t h a t   s a t i s f y   t h e   ' s h o u l d P r o j e c t B e I n c l u d e d '   h a n d l e r . 
 
 	 t h e I t e m :   a   f o l d e r ,   p r o j e c t ,   o r   t a s k 
 	 a c c u m :   t h e   m a t c h i n g   p r o j e c t s   t h a t   h a v e   b e e n   f o u n d   s o   f a r   
 �  � � � i     � � � I      �� ����� 40 accumulateprojectshelper accumulateProjectsHelper �  � � � o      ���� 0 theitem theItem �  ��� � o      ���� 	0 accum  ��  ��   � w     8 � � � Z    8 � � � � � l    ����� � =    � � � n     � � � 1    ��
�� 
pcls � o    ���� 0 theitem theItem � m    ��
�� 
FCpr��  ��   � k   
  � �  � � � l  
 
�� � ���   � . ( screens the item before accumulating it    � � � � P   s c r e e n s   t h e   i t e m   b e f o r e   a c c u m u l a t i n g   i t �  � � � Z   
  � ����� � n  
  � � � I    �� ����� 20 shouldprojectbeincluded shouldProjectBeIncluded �  ��� � o    ���� 0 theitem theItem��  ��   �  f   
  � r     � � � o    ���� 0 theitem theItem � n       � � �  ;     � o    ���� 	0 accum  ��  ��   �  ��� � L     � � o    ���� 	0 accum  ��   �  � � � l  ! & ����� � =  ! & � � � n   ! $ � � � 1   " $��
�� 
pcls � o   ! "���� 0 theitem theItem � m   $ %��
�� 
FCAr��  ��   �  ��� � L   ) 1 � � n  ) 0 � � � I   * 0�� ����� 80 accumulateprojectsinfolder accumulateProjectsInFolder �  � � � o   * +���� 0 theitem theItem �  ��� � o   + ,���� 	0 accum  ��  ��   �  f   ) *��   � k   4 8 � �  � � � l   4 4�� � ���   � j d The item must be a task. Shouldn't really reach here since we don't recurse into projects or SALs.     � � � � �   T h e   i t e m   m u s t   b e   a   t a s k .   S h o u l d n ' t   r e a l l y   r e a c h   h e r e   s i n c e   w e   d o n ' t   r e c u r s e   i n t o   p r o j e c t s   o r   S A L s .   �  ��� � R   4 8�� ���
�� .ascrerr ****      � **** � m   6 7 � � � � �� S c r i p t   a t t e m p t e d   t o   p r o c e s s   i n s i d e   a   p r o j e c t .     T h i s   s c r i p t   i s   s u p p o s e d l y   d e s i g n e d   t o   j u s t   p r o c e s s   p r o j e c t s .     S o ,   i t   l o o k s   l i k e   t h e r e ' s   a   b u g .     P l e a s e   c o n t a c t   t h e   d e v e l o p e r .     W e   a p o l o g i z e   f o r   t h e   i n c o n v e n i e n c e .��  ��   ��                                                                                  OFOC  alis    X  Mac Book Pro               �WXfH+  �lOmniFocus.app                                                  P�l�]�        ����  	                Applications    �W��      ��    �l  'Mac Book Pro:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c   B o o k   P r o  Applications/OmniFocus.app  / ��   �  � � � l     ��������  ��  ��   �  � � � l      � � ��   � � � 
	Recurses over the tree rooted at the given folder. Accumulates a list of projects that satisfy the 'shouldProjectBeIncluded' handler.

	theFolder: a folder
	accum: the items lacking next actions that have been found so far 
    � � � ��   
 	 R e c u r s e s   o v e r   t h e   t r e e   r o o t e d   a t   t h e   g i v e n   f o l d e r .   A c c u m u l a t e s   a   l i s t   o f   p r o j e c t s   t h a t   s a t i s f y   t h e   ' s h o u l d P r o j e c t B e I n c l u d e d '   h a n d l e r . 
 
 	 t h e F o l d e r :   a   f o l d e r 
 	 a c c u m :   t h e   i t e m s   l a c k i n g   n e x t   a c t i o n s   t h a t   h a v e   b e e n   f o u n d   s o   f a r   
 �  � � � i     � � � I      �~ ��}�~ 80 accumulateprojectsinfolder accumulateProjectsInFolder �  � � � o      �|�| 0 	thefolder 	theFolder �  ��{ � o      �z�z 	0 accum  �{  �}   � w     ) � � � k    ) � �  � � � Z    � ��y�x � l    ��w�v � F     � � � l    ��u�t � H     � � o    �s�s 60 shouldlookinhiddenfolders shouldLookInHiddenFolders�u  �t   � n     �  � 1    �r
�r 
FCHi  o    �q�q 0 	thefolder 	theFolder�w  �v   � L     o    �p�p 	0 accum  �y  �x   �  r      n     2    �o
�o 
FCSX o    �n�n 0 	thefolder 	theFolder o      �m�m 0 thechildren theChildren �l L   ! )		 n  ! (

 I   " (�k�j�k (0 accumulateprojects accumulateProjects  o   " #�i�i 0 thechildren theChildren �h o   # $�g�g 	0 accum  �h  �j    f   ! "�l   ��                                                                                  OFOC  alis    X  Mac Book Pro               �WXfH+  �lOmniFocus.app                                                  P�l�]�        ����  	                Applications    �W��      ��    �l  'Mac Book Pro:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c   B o o k   P r o  Applications/OmniFocus.app  / ��   �  l     �f�e�d�f  �e  �d   �c l     �b�a�`�b  �a  �`  �c       	�_�^�_   �]�\�[�Z�Y�X�W�] 60 shouldlookinhiddenfolders shouldLookInHiddenFolders�\ 20 shouldprojectbeincluded shouldProjectBeIncluded�[  0 handleprojects handleProjects�Z (0 accumulateprojects accumulateProjects�Y 40 accumulateprojectshelper accumulateProjectsHelper�X 80 accumulateprojectsinfolder accumulateProjectsInFolder
�W .aevtoappnull  �   � ****
�^ boovfals �V �U�T�S�V 20 shouldprojectbeincluded shouldProjectBeIncluded�U �R�R   �Q�Q 0 
theproject 
theProject�T   �P�P 0 
theproject 
theProject  "�S �ZeOP �O ?�N�M�L�O  0 handleprojects handleProjects�N �K�K   �J�J (0 thematchedprojects theMatchedProjects�M   �I�I (0 thematchedprojects theMatchedProjects  C�H
�H .corecnte****       ****�L �Z�j OP �G ��F�E !�D�G (0 accumulateprojects accumulateProjects�F �C"�C "  �B�A�B 0 thesections theSections�A 	0 accum  �E    �@�?�@ 0 thesections theSections�? 	0 accum  ! �>�=�<�;
�> 
rest
�= 
cobj�< 40 accumulateprojectshelper accumulateProjectsHelper�; (0 accumulateprojects accumulateProjects�D "�jv  �Y hO*��,*��k/�l+ l+  �: ��9�8#$�7�: 40 accumulateprojectshelper accumulateProjectsHelper�9 �6%�6 %  �5�4�5 0 theitem theItem�4 	0 accum  �8  # �3�2�3 0 theitem theItem�2 	0 accum  $  ��1�0�/�.�- �
�1 
pcls
�0 
FCpr�/ 20 shouldprojectbeincluded shouldProjectBeIncluded
�. 
FCAr�- 80 accumulateprojectsinfolder accumulateProjectsInFolder�7 9�Z��,�  )�k+  	��6FY hO�Y ��,�  )��l+ Y )j� �, ��+�*&'�)�, 80 accumulateprojectsinfolder accumulateProjectsInFolder�+ �((�( (  �'�&�' 0 	thefolder 	theFolder�& 	0 accum  �*  & �%�$�#�% 0 	thefolder 	theFolder�$ 	0 accum  �# 0 thechildren theChildren'  ��"�!� �
�" 
FCHi
�! 
bool
�  
FCSX� (0 accumulateprojects accumulateProjects�) *�Zb   	 ��,E�& �Y hO��-E�O)��l+  �)��*+�
� .aevtoappnull  �   � ****) k     $,,  Y��  �  �  *  +  u������
� 
docu
� 
FCSX� 0 thesections theSections� (0 accumulateprojects accumulateProjects� "0 matchedprojects matchedProjects�  0 handleprojects handleProjects� %� !*�k/ *�-E�O)�jvl+ E�O)�k+ UU ascr  ��ޭ