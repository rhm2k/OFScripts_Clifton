FasdUAS 1.101.10   ��   ��    k             l      ��  ��    
	Populate Template Placeholders

	This script populates a copy of a template by replacing placeholders with text.
	
	by Curt Clifton
	
	Copyright � 2007�2014, Curtis Clifton
	
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
	
	Version History:

		0.8.1, updated instructions with new screen shot and additional details on dates
		0.8, updated for OmniFocus 2 and to use Notification Center
		0.7.2b, turns off autosave during execution of duplication and change to reduce number of transactions created. Fixed bug in handling of projects without placeholders. Thanks to Tommy Bollman for the fix. Removes Growl support.
		0.7.1, gracefully handles more unexpected user actions	
		0.7, populates projects with dates but no other placeholders, cleans up after itself on Cancel
		0.6.2, detects if user is attempting to Populate something other than a Project
		0.6.1, optimized placeholder replacement: fixes bug with apostrophes in replacements and is also faster 
		0.6, looks for paragraph beginning "Due Date is" in the note of the template project and uses that as a prompt in the due date dialog box.  Fixed bug where due times were munged if project start or due date wasn't set to 12am.
		0.5.1 updated for OmniFocus AppleScript dictionary change
		0.5, added Growl notifications, better error checking, bug fix in date handling, work around for OF multiple-window bug, and replacement of placeholders in notes
		0.4, automatically duplicates the project, works with content pane or sidebar selection
		0.3, now works for subprojects
		0.2, clears placeholders from note of project
		0.1, initial release, 6/13/07

     � 	 	4 
 	 P o p u l a t e   T e m p l a t e   P l a c e h o l d e r s 
 
 	 T h i s   s c r i p t   p o p u l a t e s   a   c o p y   o f   a   t e m p l a t e   b y   r e p l a c i n g   p l a c e h o l d e r s   w i t h   t e x t . 
 	 
 	 b y   C u r t   C l i f t o n 
 	 
 	 C o p y r i g h t   �   2 0 0 7  2 0 1 4 ,   C u r t i s   C l i f t o n 
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
 	 	 0 . 8 . 1 ,   u p d a t e d   i n s t r u c t i o n s   w i t h   n e w   s c r e e n   s h o t   a n d   a d d i t i o n a l   d e t a i l s   o n   d a t e s 
 	 	 0 . 8 ,   u p d a t e d   f o r   O m n i F o c u s   2   a n d   t o   u s e   N o t i f i c a t i o n   C e n t e r 
 	 	 0 . 7 . 2 b ,   t u r n s   o f f   a u t o s a v e   d u r i n g   e x e c u t i o n   o f   d u p l i c a t i o n   a n d   c h a n g e   t o   r e d u c e   n u m b e r   o f   t r a n s a c t i o n s   c r e a t e d .   F i x e d   b u g   i n   h a n d l i n g   o f   p r o j e c t s   w i t h o u t   p l a c e h o l d e r s .   T h a n k s   t o   T o m m y   B o l l m a n   f o r   t h e   f i x .   R e m o v e s   G r o w l   s u p p o r t . 
 	 	 0 . 7 . 1 ,   g r a c e f u l l y   h a n d l e s   m o r e   u n e x p e c t e d   u s e r   a c t i o n s 	 
 	 	 0 . 7 ,   p o p u l a t e s   p r o j e c t s   w i t h   d a t e s   b u t   n o   o t h e r   p l a c e h o l d e r s ,   c l e a n s   u p   a f t e r   i t s e l f   o n   C a n c e l 
 	 	 0 . 6 . 2 ,   d e t e c t s   i f   u s e r   i s   a t t e m p t i n g   t o   P o p u l a t e   s o m e t h i n g   o t h e r   t h a n   a   P r o j e c t 
 	 	 0 . 6 . 1 ,   o p t i m i z e d   p l a c e h o l d e r   r e p l a c e m e n t :   f i x e s   b u g   w i t h   a p o s t r o p h e s   i n   r e p l a c e m e n t s   a n d   i s   a l s o   f a s t e r   
 	 	 0 . 6 ,   l o o k s   f o r   p a r a g r a p h   b e g i n n i n g   " D u e   D a t e   i s "   i n   t h e   n o t e   o f   t h e   t e m p l a t e   p r o j e c t   a n d   u s e s   t h a t   a s   a   p r o m p t   i n   t h e   d u e   d a t e   d i a l o g   b o x .     F i x e d   b u g   w h e r e   d u e   t i m e s   w e r e   m u n g e d   i f   p r o j e c t   s t a r t   o r   d u e   d a t e   w a s n ' t   s e t   t o   1 2 a m . 
 	 	 0 . 5 . 1   u p d a t e d   f o r   O m n i F o c u s   A p p l e S c r i p t   d i c t i o n a r y   c h a n g e 
 	 	 0 . 5 ,   a d d e d   G r o w l   n o t i f i c a t i o n s ,   b e t t e r   e r r o r   c h e c k i n g ,   b u g   f i x   i n   d a t e   h a n d l i n g ,   w o r k   a r o u n d   f o r   O F   m u l t i p l e - w i n d o w   b u g ,   a n d   r e p l a c e m e n t   o f   p l a c e h o l d e r s   i n   n o t e s 
 	 	 0 . 4 ,   a u t o m a t i c a l l y   d u p l i c a t e s   t h e   p r o j e c t ,   w o r k s   w i t h   c o n t e n t   p a n e   o r   s i d e b a r   s e l e c t i o n 
 	 	 0 . 3 ,   n o w   w o r k s   f o r   s u b p r o j e c t s 
 	 	 0 . 2 ,   c l e a r s   p l a c e h o l d e r s   f r o m   n o t e   o f   p r o j e c t 
 	 	 0 . 1 ,   i n i t i a l   r e l e a s e ,   6 / 1 3 / 0 7 
 
   
  
 l     ��������  ��  ��        j     �� �� &0 placeholderopener placeholderOpener  m        �    �      j    �� �� &0 placeholdercloser placeholderCloser  m       �    �      l     ��������  ��  ��        l      ��  ��    D >
	The following properties are used for script notifications.
     �   | 
 	 T h e   f o l l o w i n g   p r o p e r t i e s   a r e   u s e d   f o r   s c r i p t   n o t i f i c a t i o n s . 
      j    �� �� "0 scriptsuitename scriptSuiteName  m         � ! !  C u r t  s   S c r i p t s   " # " l     ��������  ��  ��   #  $ % $ l      �� & '��   & s m
	The following properties are used for debugging.  You probably don�t want to mess with them.  Just sayin�.
    ' � ( ( � 
 	 T h e   f o l l o w i n g   p r o p e r t i e s   a r e   u s e d   f o r   d e b u g g i n g .     Y o u   p r o b a b l y   d o n  t   w a n t   t o   m e s s   w i t h   t h e m .     J u s t   s a y i n  . 
 %  ) * ) j   	 �� +�� .0 abortafterinputchecks abortAfterInputChecks + m   	 
��
�� boovfals *  , - , j    �� .�� 0 indebugmode inDebugMode . m    ��
�� boovfals -  / 0 / l     ��������  ��  ��   0  1 2 1 l    3���� 3 O     4 5 4 k    6 6  7 8 7 O    9 : 9 k    ; ;  < = < O    0 > ? > l   / @ A B @ k    / C C  D E D r     F G F n     H I H 2   ��
�� 
OTst I 1    ��
�� 
FCcn G o      ���� $0 theselecteditems theSelectedItems E  J�� J Z    / K L���� K l   ! M���� M >    ! N O N l    P���� P I   �� Q��
�� .corecnte****       **** Q o    ���� $0 theselecteditems theSelectedItems��  ��  ��   O m     ���� ��  ��   L k   $ + R R  S T S l  $ $�� U V��   U   try sidebar selection    V � W W ,   t r y   s i d e b a r   s e l e c t i o n T  X�� X r   $ + Y Z Y n   $ ) [ \ [ 2  ' )��
�� 
OTst \ 1   $ '��
�� 
FCSt Z o      ���� $0 theselecteditems theSelectedItems��  ��  ��  ��   A / ) (first document window whose index is 1)    B � ] ] R   ( f i r s t   d o c u m e n t   w i n d o w   w h o s e   i n d e x   i s   1 ) ? 4    �� ^
�� 
FCdw ^ m    ����  =  _ ` _ Z   1 K a b���� a l  1 8 c���� c A   1 8 d e d l  1 6 f���� f I  1 6�� g��
�� .corecnte****       **** g o   1 2���� $0 theselecteditems theSelectedItems��  ��  ��   e m   6 7���� ��  ��   b k   ; G h h  i j i I  ; D�� k l
�� .sysodisAaleR        TEXT k m   ; < m m � n n \ Y o u   m u s t   f i r s t   s e l e c t   t h e   p r o j e c t   t o   p o p u l a t e . l �� o p
�� 
mesS o m   = > q q � r r x S e l e c t   a   s i n g l e   p r o j e c t   t h a t   i n c l u d e s   t e m p l a t e   p l a c e h o l d e r s . p �� s��
�� 
as A s m   ? @��
�� EAlTwarN��   j  t�� t L   E G����  ��  ��  ��   `  u v u Z   L h w x���� w l  L S y���� y ?   L S z { z l  L Q |���� | I  L Q�� }��
�� .corecnte****       **** } o   L M���� $0 theselecteditems theSelectedItems��  ��  ��   { m   Q R���� ��  ��   x k   V d ~ ~   �  I  V a�� � �
�� .sysodisAaleR        TEXT � m   V W � � � � � B Y o u   m u s t   s e l e c t   j u s t   o n e   p r o j e c t . � �� � �
�� 
mesS � m   X [ � � � � � � S e l e c t   a   s i n g l e   p r o j e c t   t h a t   i n c l u d e s   t e m p l a t e   p l a c e h o l d e r s ,   b u t   d o n  t   s e l e c t   t h e   a c t i o n s   a n d   s u b p r o j e c t s   u n d e r   i t . � �� ���
�� 
as A � m   \ ]��
�� EAlTwarN��   �  ��� � L   b d����  ��  ��  ��   v  � � � l  i i��������  ��  ��   �  � � � r   i w � � � n   i s � � � 1   o s��
�� 
valL � n   i o � � � 4   j o�� �
�� 
cobj � m   m n����  � o   i j���� $0 theselecteditems theSelectedItems � o      ���� 0 selecteditem selectedItem �  � � � r   x � � � � n   x � � � � 1   ~ ���
�� 
pnam � n   x ~ � � � 4   y ~�� �
�� 
cobj � m   | }����  � o   x y���� $0 theselecteditems theSelectedItems � o      ����  0 theprojectname theProjectName �  � � � Z   � � � ����� � l  � � ����� � >  � � � � � n   � � � � � m   � ���
�� 
pcls � o   � ����� 0 selecteditem selectedItem � m   � ���
�� 
FCpr��  ��   � k   � � � �  � � � I  � ��� � �
�� .sysodisAaleR        TEXT � b   � � � � � b   � � � � � m   � � � � � � � ( T h e   s e l e c t e d   i t e m ,    � o   � �����  0 theprojectname theProjectName � m   � � � � � � � &    i s   n o t   a   p r o j e c t . � �� � �
�� 
mesS � m   � � � � � � � � T h e   s c r i p t   o n l y   w o r k s   w i t h   p r o j e c t s ,   n o t   a c t i o n s   o r   f o l d e r s .     P l e a s e   s e l e c t   a   p r o j e c t   t o   u s e   t h e   s c r i p t . � �� � �
�� 
as A � m   � ���
�� EAlTwarN � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��   � �� ���
�� 
dflt � m   � ����� ��   �  ��� � L   � �����  ��  ��  ��   �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
FCno � o   � ����� 0 selecteditem selectedItem � o      ���� 0 thenote theNote �  � � � r   � � � � � J   � �����   � o      ���� "0 theplaceholders thePlaceholders �  � � � Q   � � � ��� � k   � � � �  � � � r   � � � � � n   � � � � � 4  � ��� �
�� 
cpar � m   � ������� � o   � ����� 0 thenote theNote � o      ���� ,0 theplaceholderstring thePlaceholderString �  ��� � r   � � � � � n  � � � � � I   � ��� ����� 00 parseplaceholderstring parsePlaceholderString �  ��� � o   � ����� ,0 theplaceholderstring thePlaceholderString��  ��   �  f   � � � o      ���� "0 theplaceholders thePlaceholders��   � R      ��~�}
� .ascrerr ****      � ****�~  �}  ��   �  � � � r   � � � � n   �  � � � 1   � �|
�| 
FCDs � o   � ��{�{ 0 selecteditem selectedItem � o      �z�z 0 thestartdate theStartDate �  � � � r   � � � n   � � � 1  �y
�y 
FCDd � o  �x�x 0 selecteditem selectedItem � o      �w�w 0 
theduedate 
theDueDate �  � � � Z  � � ��v�u � l 6 ��t�s � F  6 � � � F  & � � � =  � � � o  �r�r 0 thestartdate theStartDate � m  �q
�q 
msng � = " � � � o  �p�p 0 
theduedate 
theDueDate � m  !�o
�o 
msng � = )2 � � � l )0 ��n�m � I )0�l ��k
�l .corecnte****       **** � o  ),�j�j "0 theplaceholders thePlaceholders�k  �n  �m   � m  01�i�i  �t  �s   � k  9� � �  � � � I 9��h 
�h .sysodisAaleR        TEXT  b  9D b  9@ m  9< �  T h i s   p r o j e c t ,    o  <?�g�g  0 theprojectname theProjectName m  @C �		 `  ,   d o e s   n o t   c o n t a i n   a n y   i n f o r m a t i o n   t o   p o p u l a t e . �f

�f 
mesS
 b  Ep b  El b  Ef b  Eb b  E\ b  EX b  ER b  EN m  EH � � T h e   n o t e   o f   a   p r o j e c t   s h o u l d   e n d   w i t h   a   l i s t   o f   p r o j e c t   p l a c e h o l d e r s ,   l i k e    o  HM�e�e &0 placeholderopener placeholderOpener m  NQ �  R o o m N a m e o  RW�d�d &0 placeholdercloser placeholderCloser m  X[   �!!    o  \a�c�c &0 placeholderopener placeholderOpener m  be"" �##  C l i e n t N a m e o  fk�b�b &0 placeholdercloser placeholderCloser m  lo$$ �%% �  ,   o r   t h e   p r o j e c t   s h o u l d   h a v e   a   s t a r t   o r   d u e   d a t e   t h a t   w i l l   b e   u s e d   t o   a d j u s t   t h e   d a t e s   o f   i t e m s   w i t h i n   t h e   p r o j e c t . �a&'
�a 
as A& m  qr�`
�` EAlTwarN' �_()
�_ 
btns( J  uz** +�^+ m  ux,, �--  O K�^  ) �].�\
�] 
dflt. m  }~�[�[ �\   � /�Z/ L  ���Y�Y  �Z  �v  �u   � 010 l ���X�W�V�X  �W  �V  1 232 r  ��454 n ��676 I  ���U8�T�U "0 getreplacements getReplacements8 9:9 o  ���S�S "0 theplaceholders thePlaceholders: ;�R; J  ���Q�Q  �R  �T  7  f  ��5 o      �P�P "0 thereplacements theReplacements3 <=< l ��>?@> Z ��AB�O�NA l ��C�M�LC = ��DED o  ���K�K "0 thereplacements theReplacementsE m  ���J
�J 
msng�M  �L  B L  ���I�I  �O  �N  ?  
 cancelled   @ �FF    c a n c e l l e d= GHG l ���H�G�F�H  �G  �F  H IJI Z  � KLMNK l ��O�E�DO > ��PQP o  ���C�C 0 
theduedate 
theDueDateQ m  ���B
�B 
msng�E  �D  L k  ��RR STS r  ��UVU n ��WXW I  ���AY�@�A ,0 extractduedateprompt extractDueDatePromptY Z�?Z o  ���>�> 0 thenote theNote�?  �@  X  f  ��V o      �=�= 0 duedateprompt dueDatePromptT [\[ r  ��]^] n ��_`_ I  ���<a�;�< *0 getdatedifferential getDateDifferentiala bcb m  ��dd �ee  d u ec fgf o  ���:�: 0 
theduedate 
theDueDateg h�9h o  ���8�8 0 duedateprompt dueDatePrompt�9  �;  `  f  ��^ o      �7�7 $0 datedifferential dateDifferential\ i�6i l ��jklj Z ��mn�5�4m l ��o�3�2o = ��pqp o  ���1�1 $0 datedifferential dateDifferentialq m  ���0
�0 
msng�3  �2  n L  ���/�/  �5  �4  k  
 cancelled   l �rr    c a n c e l l e d�6  M sts l ��u�.�-u > ��vwv o  ���,�, 0 thestartdate theStartDatew m  ���+
�+ 
msng�.  �-  t x�*x k  �yy z{z r  �|}| n �~~ I  ��)��(�) *0 getdatedifferential getDateDifferential� ��� m  ���� ��� 
 s t a r t� ��� o  ���'�' 0 thestartdate theStartDate� ��&� m  ���%
�% 
msng�&  �(    f  ��} o      �$�$ $0 datedifferential dateDifferential{ ��#� l ���� Z ���"�!� l �� �� = ��� o  	�� $0 datedifferential dateDifferential� m  	�
� 
msng�   �  � L  ��  �"  �!  �  
 cancelled   � ���    c a n c e l l e d�#  �*  N r   ��� m  �
� 
msng� o      �� $0 datedifferential dateDifferentialJ ��� l !!����  �  �  � ��� l !!����  � d ^ When debugging, it's handy to abort the script before any changes are made to the OF database   � ��� �   W h e n   d e b u g g i n g ,   i t ' s   h a n d y   t o   a b o r t   t h e   s c r i p t   b e f o r e   a n y   c h a n g e s   a r e   m a d e   t o   t h e   O F   d a t a b a s e� ��� Z  !/����� o  !&�� .0 abortafterinputchecks abortAfterInputChecks� L  )+��  �  �  � ��� l 00����  �  �  � ��� I 0D���
� .coreclon****      � ****� l 03���� o  03�� 0 selecteditem selectedItem�  �  � �
��	
�
 
insh� n  6@��� 9  <@�
� 
insl� 4 6<��
� 
FCSX� m  :;�����	  � ��� r  EO��� 4 EK��
� 
FCSX� m  IJ����� o      ��  0 duplicateditem duplicatedItem� ��� l PP��� �  �  �   � ��� Q  P����� r  Sa��� J  S]�� ���� l S[������ e  S[�� n  S[��� 1  VZ��
�� 
FCrt� o  SV����  0 duplicateditem duplicatedItem��  ��  ��  � o      ���� 0 thetask theTask� R      ����
�� .ascrerr ****      � ****� o      ���� 0 msg  � �����
�� 
errn� o      ���� 0 num  ��  � Z  i������� = in��� o  ij���� 0 num  � m  jm�����\� r  qz��� J  qv�� ���� o  qt����  0 duplicateditem duplicatedItem��  � o      ���� 0 thetask theTask��  � k  }��� ��� I }�������
�� .sysobeepnull��� ��� long��  ��  � ���� R  ������
�� .ascrerr ****      � ****� o  ������ 0 msg  � �����
�� 
errn� o  ������ 0 num  ��  ��  � ��� Q  ����� k  ���� ��� r  ����� m  ����
�� boovfals� 1  ����
�� 
FCwa� ��� n ����� I  ��������� *0 replaceplaceholders replacePlaceholders� ��� o  ������ 0 thetask theTask� ��� o  ������ "0 theplaceholders thePlaceholders� ��� o  ������ "0 thereplacements theReplacements� ���� o  ������ $0 datedifferential dateDifferential��  ��  �  f  ��� ��� r  ����� l �������� I �������� &0 stripplaceholders stripPlaceholders�  f  ��� �����
�� 
from� o  ������ 0 thenote theNote��  ��  ��  � o      ���� 0 thenote theNote� ��� r  ����� l �������� n ����� I  ��������� 0 replacetext replaceText� ��� o  ������ 0 thenote theNote� ��� o  ������ "0 theplaceholders thePlaceholders� ���� o  ������ "0 thereplacements theReplacements��  ��  �  f  ����  ��  � o      ���� 0 thenote theNote� ��� r  ����� o  ������ 0 thenote theNote� n         1  ����
�� 
FCno o  ������  0 duplicateditem duplicatedItem� �� r  �� l ������ I ��������
�� .misccurdldt    ��� null��  ��  ��  ��   n       1  ����
�� 
FCDR o  ������  0 duplicateditem duplicatedItem��  � R      ��	
�� .ascrerr ****      � **** o      ���� 0 msg  	 ��
��
�� 
errn
 o      ���� 0 num  ��  � k  �  l ������   / ) make sure the autosave is turned back on    � R   m a k e   s u r e   t h e   a u t o s a v e   i s   t u r n e d   b a c k   o n  r  �� m  ����
�� boovtrue 1  ����
�� 
FCwa  I ��������
�� .sysobeepnull��� ��� long��  ��   �� R  ���
�� .ascrerr ****      � **** o  ���� 0 msg   ����
�� 
errn o  � ���� 0 num  ��  ��  � �� r   m  ��
�� boovtrue 1  
��
�� 
FCwa��   : 4   ��
�� 
docu m    ����  8   n !"! I  ��#���� 
0 notify  # $%$ m  && �'' $ T e m p l a t e   P o p u l a t e d% (��( m  )) �** � T h e   p r o j e c t   t e m p l a t e   h a s   b e e n   p o p u l a t e d .     Y o u  l l   f i n d   i t   a t   t h e   e n d   o f   t h e   p r o j e c t   l i s t i n g .��  ��  "  f    +��+ l ��������  ��  ��  ��   5 m     ,,�                                                                                  OFOC  alis    X  Macintosh HD               �Ȗ�H+   �OmniFocus.app                                                  �ܭ�Y��        ����  	                Applications    ���*      �Z?4     �  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��   2 -.- l     ��������  ��  ��  . /0/ i    121 I      ��3���� 00 parseplaceholderstring parsePlaceholderString3 4��4 o      ���� 0 	thestring 	theString��  ��  2 k     555 676 r     898 n    :;: 1    ��
�� 
txdl; 1     ��
�� 
ascr9 o      ���� 0 olddelim oldDelim7 <=< r    >?> o    ���� &0 placeholderopener placeholderOpener? n     @A@ 1    ��
�� 
txdlA 1    ��
�� 
ascr= BCB r    DED n    FGF 1    ��
�� 
restG n    HIH 2   ��
�� 
citmI o    ���� 0 	thestring 	theStringE o      ���� 0 
firstparse 
firstParseC JKJ r    !LML o    ���� &0 placeholdercloser placeholderCloserM n     NON 1     ��
�� 
txdlO 1    ��
�� 
ascrK PQP r   " ,RSR I   " *��T���� &0 cleanplaceholders cleanPlaceholdersT UVU o   # $���� 0 
firstparse 
firstParseV W��W J   $ &����  ��  ��  S o      ���� 0 	theresult 	theResultQ XYX r   - 2Z[Z o   - .���� 0 olddelim oldDelim[ n     \]\ 1   / 1��
�� 
txdl] 1   . /��
�� 
ascrY ^��^ L   3 5__ o   3 4���� 0 	theresult 	theResult��  0 `a` l     ��������  ��  ��  a bcb l      ��de��  d S M assumes that AppleScript's text item delimiters is set to placeholderCloser    e �ff �   a s s u m e s   t h a t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   i s   s e t   t o   p l a c e h o l d e r C l o s e r  c ghg i    iji I      ��k���� &0 cleanplaceholders cleanPlaceholdersk lml o      �� 0 thelist theListm n�~n o      �}�} 	0 accum  �~  ��  j k     ;oo pqp Z    rs�|�{r l    t�z�yt =    uvu o     �x�x 0 thelist theListv J    �w�w  �z  �y  s L    	ww o    �v�v 	0 accum  �|  �{  q xyx r    z{z n    |}| 4    �u~
�u 
cobj~ m    �t�t } o    �s�s 0 thelist theList{ o      �r�r 0 	firstitem 	firstItemy � r    ��� n    ��� 4    �q�
�q 
citm� m    �p�p � o    �o�o 0 	firstitem 	firstItem� o      �n�n 0 	firstitem 	firstItem� ��� Z    0���m�l� l   %��k�j� >   %��� l   #��i�h� I   #�g��f
�g .corecnte****       ****� n    ��� 2   �e
�e 
cha � o    �d�d 0 	firstitem 	firstItem�f  �i  �h  � m   # $�c�c  �k  �j  � r   ( ,��� o   ( )�b�b 0 	firstitem 	firstItem� n      ���  ;   * +� o   ) *�a�a 	0 accum  �m  �l  � ��`� L   1 ;�� I   1 :�_��^�_ &0 cleanplaceholders cleanPlaceholders� ��� n   2 5��� 1   3 5�]
�] 
rest� o   2 3�\�\ 0 thelist theList� ��[� o   5 6�Z�Z 	0 accum  �[  �^  �`  h ��� l     �Y�X�W�Y  �X  �W  � ��� l      �V���V  � I C prompts user for a replacement string for each placeholder string    � ��� �   p r o m p t s   u s e r   f o r   a   r e p l a c e m e n t   s t r i n g   f o r   e a c h   p l a c e h o l d e r   s t r i n g  � ��� i    ��� I      �U��T�U "0 getreplacements getReplacements� ��� o      �S�S "0 theplaceholders thePlaceholders� ��R� o      �Q�Q 	0 accum  �R  �T  � k     F�� ��� Z    ���P�O� l    ��N�M� =    ��� o     �L�L "0 theplaceholders thePlaceholders� J    �K�K  �N  �M  � L    	�� o    �J�J 	0 accum  �P  �O  � ��� r    ��� n    ��� 4    �I�
�I 
cobj� m    �H�H � o    �G�G "0 theplaceholders thePlaceholders� o      �F�F  0 theplaceholder thePlaceholder� ��� Q    4���� O    *��� r    )��� I   '�E��
�E .sysodlogaskr        TEXT� b    ��� o    �D�D  0 theplaceholder thePlaceholder� m    �� ���  :� �C��
�C 
dtxt� m     !�� ���  � �B��A
�B 
appr� m   " #�� ��� B E n t e r   r e p l a c e m e n t   f o r   p l a c e h o l d e r�A  � o      �@�@ 	0 reply  � m    ���                                                                                  OFOC  alis    X  Macintosh HD               �Ȗ�H+   �OmniFocus.app                                                  �ܭ�Y��        ����  	                Applications    ���*      �Z?4     �  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � R      �?�>�=
�? .ascrerr ****      � ****�>  �=  � L   2 4�� m   2 3�<
�< 
msng� ��� r   5 ;��� l  5 8��;�:� n   5 8��� 1   6 8�9
�9 
ttxt� o   5 6�8�8 	0 reply  �;  �:  � n      ���  ;   9 :� o   8 9�7�7 	0 accum  � ��6� L   < F�� I   < E�5��4�5 "0 getreplacements getReplacements� ��� n   = @��� 1   > @�3
�3 
rest� o   = >�2�2 "0 theplaceholders thePlaceholders� ��1� o   @ A�0�0 	0 accum  �1  �4  �6  � ��� l     �/�.�-�/  �.  �-  � ��� i    ��� I      �,��+�, *0 getdatedifferential getDateDifferential� ��� o      �*�* 0 datekind dateKind� ��� o      �)�) 0 originaldate originalDate� ��(� o      �'�' 0 extraprompt extraPrompt�(  �+  � k     ��� ��� Z     ���&�� =    ��� o     �%�% 0 extraprompt extraPrompt� m    �$
�$ 
msng� r    	��� m    �� ���  � o      �#�# 0 extraprompt extraPrompt�&  � r    ��� b    � � o    �"
�" 
ret   o    �!�! 0 extraprompt extraPrompt� o      � �  0 extraprompt extraPrompt�  r     m    �
� boovfals o      �� 0 
validinput 
validInput  r     m    		 �

   o      �� 0 	theanswer 	theAnswer  W    � k     {  O     6 r   $ 5 I  $ 3�
� .sysodlogaskr        TEXT l  $ +�� b   $ + b   $ ) b   $ ' m   $ % �    E n t e r   o   % &�� 0 datekind dateKind m   ' (!! �"" "   d a t e   f o r   p r o j e c t o   ) *�� 0 extraprompt extraPrompt�  �   �#$
� 
dtxt# o   , -�� 0 	theanswer 	theAnswer$ �%�
� 
appr% m   . /&& �''  E n t e r   D a t e�   o      �� 0 thereply theReply m     !((�                                                                                  OFOC  alis    X  Macintosh HD               �Ȗ�H+   �OmniFocus.app                                                  �ܭ�Y��        ����  	                Applications    ���*      �Z?4     �  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   )*) Q   7 I+,-+ r   : ?./. n   : =010 1   ; =�
� 
ttxt1 o   : ;�� 0 thereply theReply/ o      �� 0 	theanswer 	theAnswer, R      ���
� .ascrerr ****      � ****�  �  - k   G I22 343 l  G G�56�  5   user cancelled   6 �77    u s e r   c a n c e l l e d4 8�8 L   G I99 m   G H�

�
 
msng�  * :;: Q   J l<=>< k   M c?? @A@ r   M SBCB 4   M Q�	D
�	 
ldt D o   O P�� 0 	theanswer 	theAnswerC o      �� 0 newdate newDateA EFE r   T _GHG n   T YIJI 1   U Y�
� 
timeJ o   T U�� 0 originaldate originalDateH n      KLK 1   Z ^�
� 
timeL o   Y Z�� 0 newdate newDateF M�M r   ` cNON m   ` a�
� boovtrueO o      � �  0 
validinput 
validInput�  = R      ������
�� .ascrerr ****      � ****��  ��  > l  k k��PQ��  P "  probably a conversion error   Q �RR 8   p r o b a b l y   a   c o n v e r s i o n   e r r o r; S��S Z  m {TU����T l  m oV����V H   m oWW o   m n���� 0 
validinput 
validInput��  ��  U I  r w������
�� .sysobeepnull��� ��� long��  ��  ��  ��  ��   o    ���� 0 
validinput 
validInput X��X L   � �YY l  � �Z����Z \   � �[\[ o   � ����� 0 newdate newDate\ o   � ����� 0 originaldate originalDate��  ��  ��  � ]^] l     ��������  ��  ��  ^ _`_ i    "aba I      ��c���� *0 replaceplaceholders replacePlaceholdersc ded o      ���� 0 thetasks theTaskse fgf o      ���� "0 theplaceholders thePlaceholdersg hih o      ���� "0 thereplacements theReplacementsi j��j o      ���� $0 datedifferential dateDifferential��  ��  b k     &kk lml Z    no����n l    p����p =    qrq o     ���� 0 thetasks theTasksr J    ����  ��  ��  o L    	����  ��  ��  m sts I    ��u���� >0 replaceplaceholdersinchildren replacePlaceholdersInChildrenu vwv n    xyx 4    ��z
�� 
cobjz m    ���� y o    ���� 0 thetasks theTasksw {|{ o    ���� "0 theplaceholders thePlaceholders| }~} o    ���� "0 thereplacements theReplacements~ �� o    ���� $0 datedifferential dateDifferential��  ��  t ���� I    &������� *0 replaceplaceholders replacePlaceholders� ��� n    ��� 1    ��
�� 
rest� o    ���� 0 thetasks theTasks� ��� o     ���� "0 theplaceholders thePlaceholders� ��� o     !���� "0 thereplacements theReplacements� ���� o   ! "���� $0 datedifferential dateDifferential��  ��  ��  ` ��� l     ��������  ��  ��  � ��� i   # &��� I      ������� >0 replaceplaceholdersinchildren replacePlaceholdersInChildren� ��� o      ���� 0 thetask theTask� ��� o      ���� "0 theplaceholders thePlaceholders� ��� o      ���� "0 thereplacements theReplacements� ���� o      ���� $0 datedifferential dateDifferential��  ��  � w     u��� k    u�� ��� r    	��� c    ��� n    ��� 1    ��
�� 
pnam� o    ���� 0 thetask theTask� m    ��
�� 
TEXT� o      ���� 0 oldname oldName� ��� Z   
 $������� E   
 ��� o   
 ���� 0 oldname oldName� o    ���� &0 placeholderopener placeholderOpener� r     ��� l   ������ n   ��� I    ������� 0 replacetext replaceText� ��� o    ���� 0 oldname oldName� ��� o    ���� "0 theplaceholders thePlaceholders� ���� o    ���� "0 thereplacements theReplacements��  ��  �  f    ��  ��  � n      ��� 1    ��
�� 
pnam� o    ���� 0 thetask theTask��  ��  � ��� r   % 2��� l  % .������ n  % .��� I   & .������� 0 
updatedate 
updateDate� ��� n   & )��� 1   ' )��
�� 
FCDd� o   & '���� 0 thetask theTask� ���� o   ) *���� $0 datedifferential dateDifferential��  ��  �  f   % &��  ��  � n      ��� 1   / 1��
�� 
FCDd� o   . /���� 0 thetask theTask� ��� r   3 @��� l  3 <������ n  3 <��� I   4 <������� 0 
updatedate 
updateDate� ��� n   4 7��� 1   5 7��
�� 
FCDs� o   4 5���� 0 thetask theTask� ���� o   7 8���� $0 datedifferential dateDifferential��  ��  �  f   3 4��  ��  � n      ��� 1   = ?��
�� 
FCDs� o   < =���� 0 thetask theTask� ��� r   A F��� n   A D��� 1   B D��
�� 
FCno� o   A B���� 0 thetask theTask� o      ���� 0 oldnote oldNote� ��� Z   G i������� l  G V������ F   G V��� >  G J��� o   G H���� 0 oldnote oldNote� m   H I��
�� 
msng� E   M T��� o   M N���� 0 oldnote oldNote� o   N S���� &0 placeholderopener placeholderOpener��  ��  � r   Y e��� l  Y a������ n  Y a��� I   Z a������� 0 replacetext replaceText� ��� o   Z [���� 0 oldnote oldNote� ��� o   [ \���� "0 theplaceholders thePlaceholders� ���� o   \ ]���� "0 thereplacements theReplacements��  ��  �  f   Y Z��  ��  � n      ��� 1   b d��
�� 
FCno� o   a b���� 0 thetask theTask��  ��  � ���� n  j u��� I   k u������� *0 replaceplaceholders replacePlaceholders� ��� n   k n��� 2  l n��
�� 
FCac� o   k l���� 0 thetask theTask� ��� o   n o�� "0 theplaceholders thePlaceholders� ��� o   o p�~�~ "0 thereplacements theReplacements� ��}� o   p q�|�| $0 datedifferential dateDifferential�}  ��  �  f   j k��  ��                                                                                  OFOC  alis    X  Macintosh HD               �Ȗ�H+   �OmniFocus.app                                                  �ܭ�Y��        ����  	                Applications    ���*      �Z?4     �  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �    l     �{�z�y�{  �z  �y    i   ' * I      �x�w�x 0 replacetext replaceText  o      �v�v 0 thetext theText 	
	 o      �u�u "0 theplaceholders thePlaceholders
 �t o      �s�s "0 thereplacements theReplacements�t  �w   k     U  Z     �r�q l    �p�o =     o     �n�n "0 theplaceholders thePlaceholders J    �m�m  �p  �o   L    	 o    �l�l 0 thetext theText�r  �q    r     n    1    �k
�k 
txdl 1    �j
�j 
ascr o      �i�i 0 oldtid oldTID  r    & b    $  b    !"! o    �h�h &0 placeholderopener placeholderOpener" l   #�g�f# n    $%$ 4    �e&
�e 
cobj& m    �d�d % o    �c�c "0 theplaceholders thePlaceholders�g  �f    o    #�b�b &0 placeholdercloser placeholderCloser o      �a�a (0 wrappedplaceholder wrappedPlaceholder '(' r   ' ,)*) o   ' (�`�` (0 wrappedplaceholder wrappedPlaceholder* n     +,+ 1   ) +�_
�_ 
txdl, 1   ( )�^
�^ 
ascr( -.- r   - 2/0/ n   - 0121 2   . 0�]
�] 
citm2 o   - .�\�\ 0 thetext theText0 o      �[�[ 0 itemlist itemList. 343 r   3 ;565 n   3 7787 4   4 7�Z9
�Z 
cobj9 m   5 6�Y�Y 8 o   3 4�X�X "0 thereplacements theReplacements6 n     :;: 1   8 :�W
�W 
txdl; 1   7 8�V
�V 
ascr4 <=< r   < A>?> c   < ?@A@ o   < =�U�U 0 itemlist itemListA m   = >�T
�T 
TEXT? o      �S�S 0 
resulttext 
resultText= BCB r   B GDED o   B C�R�R 0 oldtid oldTIDE n     FGF 1   D F�Q
�Q 
txdlG 1   C D�P
�P 
ascrC H�OH L   H UII n  H TJKJ I   I T�NL�M�N 0 replacetext replaceTextL MNM o   I J�L�L 0 
resulttext 
resultTextN OPO n   J MQRQ 1   K M�K
�K 
restR o   J K�J�J "0 theplaceholders thePlaceholdersP S�IS n   M PTUT 1   N P�H
�H 
restU o   M N�G�G "0 thereplacements theReplacements�I  �M  K  f   H I�O   VWV l     �F�E�D�F  �E  �D  W XYX i   + .Z[Z I      �C\�B�C 0 
updatedate 
updateDate\ ]^] o      �A�A 0 originaldate originalDate^ _�@_ o      �?�? $0 datedifferential dateDifferential�@  �B  [ k     `` aba Z    cd�>�=c l    e�<�;e G     fgf =    hih o     �:�: 0 originaldate originalDatei m    �9
�9 
msngg =   	jkj o    �8�8 $0 datedifferential dateDifferentialk m    �7
�7 
msng�<  �;  d L    ll m    �6
�6 
msng�>  �=  b mnm r    opo [    qrq o    �5�5 0 originaldate originalDater o    �4�4 $0 datedifferential dateDifferentialp o      �3�3 0 newdate newDaten s�2s L    tt o    �1�1 0 newdate newDate�2  Y uvu l     �0�/�.�0  �/  �.  v wxw i   / 2yzy I      �-�,{�- &0 stripplaceholders stripPlaceholders�,  { �+|�*
�+ 
from| o      �)�) 0 thenote theNote�*  z k     %}} ~~ Z    ���(�'� l    	��&�%� B     	��� l    ��$�#� I    �"��!
�" .corecnte****       ****� n     ��� 2   � 
�  
cpar� o     �� 0 thenote theNote�!  �$  �#  � m    �� �&  �%  � L    �� m    �� ���  �(  �'   ��� r    "��� n     ��� 7     ���
� 
ctxt� 4    ��
� 
cpar� m    �� � 4    ��
� 
cpar� m    ����� o    �� 0 thenote theNote� o      �� 0 	noteparts 	noteParts� ��� L   # %�� o   # $�� 0 	noteparts 	noteParts�  x ��� l     ����  �  �  � ��� i   3 6��� I      ���� ,0 extractduedateprompt extractDueDatePrompt� ��� o      �� 0 thenote theNote�  �  � k     *�� ��� r     ��� n     ��� 2    �
� 
cpar� o     �� 0 thenote theNote� o      �� 0 thepars thePars� ��� X    '��
�� Z    "���	�� C    ��� o    �� 0 apar aPar� m    �� ���  D u e   D a t e� L    �� o    �� 0 apar aPar�	  �  �
 0 apar aPar� o   	 
�� 0 thepars thePars� ��� L   ( *�� m   ( )�
� 
msng�  � ��� l     ��� �  �  �   � ��� l      ������  � � �
	Uses Notification Center to display a notification message.
	theTitle � a string giving the notification title
	theDescription � a string describing the notification event
   � ���\ 
 	 U s e s   N o t i f i c a t i o n   C e n t e r   t o   d i s p l a y   a   n o t i f i c a t i o n   m e s s a g e . 
 	 t h e T i t l e      a   s t r i n g   g i v i n g   t h e   n o t i f i c a t i o n   t i t l e 
 	 t h e D e s c r i p t i o n      a   s t r i n g   d e s c r i b i n g   t h e   n o t i f i c a t i o n   e v e n t 
� ��� i   7 :��� I      ������� 
0 notify  � ��� o      ���� 0 thetitle theTitle� ���� o      ����  0 thedescription theDescription��  ��  � I    ����
�� .sysonotfnull��� ��� TEXT� o     ����  0 thedescription theDescription� ����
�� 
appr� o    ���� "0 scriptsuitename scriptSuiteName� �����
�� 
subt� o    	���� 0 thetitle theTitle��  � ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ���    ������������������  � ������������������������������������ &0 placeholderopener placeholderOpener�� &0 placeholdercloser placeholderCloser�� "0 scriptsuitename scriptSuiteName�� .0 abortafterinputchecks abortAfterInputChecks�� 0 indebugmode inDebugMode�� 00 parseplaceholderstring parsePlaceholderString�� &0 cleanplaceholders cleanPlaceholders�� "0 getreplacements getReplacements�� *0 getdatedifferential getDateDifferential�� *0 replaceplaceholders replacePlaceholders�� >0 replaceplaceholdersinchildren replacePlaceholdersInChildren�� 0 replacetext replaceText�� 0 
updatedate 
updateDate�� &0 stripplaceholders stripPlaceholders�� ,0 extractduedateprompt extractDueDatePrompt�� 
0 notify  
�� .aevtoappnull  �   � ****
�� boovfals
�� boovfals� ��2���������� 00 parseplaceholderstring parsePlaceholderString�� ����� �  ���� 0 	thestring 	theString��  � ���������� 0 	thestring 	theString�� 0 olddelim oldDelim�� 0 
firstparse 
firstParse�� 0 	theresult 	theResult� ����������
�� 
ascr
�� 
txdl
�� 
citm
�� 
rest�� &0 cleanplaceholders cleanPlaceholders�� 6��,E�Ob   ��,FO��-�,E�Ob  ��,FO*�jvl+ E�O���,FO�� ��j���������� &0 cleanplaceholders cleanPlaceholders�� ����� �  ������ 0 thelist theList�� 	0 accum  ��  � �������� 0 thelist theList�� 	0 accum  �� 0 	firstitem 	firstItem� ������������
�� 
cobj
�� 
citm
�� 
cha 
�� .corecnte****       ****
�� 
rest�� &0 cleanplaceholders cleanPlaceholders�� <�jv  �Y hO��k/E�O��k/E�O��-j j 	��6FY hO*��,�l+ � ������������� "0 getreplacements getReplacements�� ����� �  ������ "0 theplaceholders thePlaceholders�� 	0 accum  ��  � ���������� "0 theplaceholders thePlaceholders�� 	0 accum  ��  0 theplaceholder thePlaceholder�� 	0 reply  � ��������������������������
�� 
cobj
�� 
dtxt
�� 
appr�� 
�� .sysodlogaskr        TEXT��  ��  
�� 
msng
�� 
ttxt
�� 
rest�� "0 getreplacements getReplacements�� G�jv  �Y hO��k/E�O � ��%����� E�UW 	X 	 
�O��,�6FO*��,�l+ � ������������� *0 getdatedifferential getDateDifferential�� ����� �  �������� 0 datekind dateKind�� 0 originaldate originalDate�� 0 extraprompt extraPrompt��  � ���������������� 0 datekind dateKind�� 0 originaldate originalDate�� 0 extraprompt extraPrompt�� 0 
validinput 
validInput�� 0 	theanswer 	theAnswer�� 0 thereply theReply�� 0 newdate newDate� �����	(!����&����������������
�� 
msng
�� 
ret 
�� 
dtxt
�� 
appr�� 
�� .sysodlogaskr        TEXT
�� 
ttxt��  ��  
�� 
ldt 
�� 
time
�� .sysobeepnull��� ��� long�� ���  �E�Y ¢%E�OfE�O�E�O eh�� �%�%�%���� E�UO 
��,E�W 	X  �O *�/E�O�a ,�a ,FOeE�W X  hO� 
*j Y h[OY��O��� ��b���������� *0 replaceplaceholders replacePlaceholders�� ����� �  ��������� 0 thetasks theTasks�� "0 theplaceholders thePlaceholders�� "0 thereplacements theReplacements� $0 datedifferential dateDifferential��  � �~�}�|�{�~ 0 thetasks theTasks�} "0 theplaceholders thePlaceholders�| "0 thereplacements theReplacements�{ $0 datedifferential dateDifferential� �z�y�x�w�v
�z 
cobj�y �x >0 replaceplaceholdersinchildren replacePlaceholdersInChildren
�w 
rest�v *0 replaceplaceholders replacePlaceholders�� '�jv  hY hO*��k/����+ O*��,����+ � �u��t�s���r�u >0 replaceplaceholdersinchildren replacePlaceholdersInChildren�t �q��q �  �p�o�n�m�p 0 thetask theTask�o "0 theplaceholders thePlaceholders�n "0 thereplacements theReplacements�m $0 datedifferential dateDifferential�s  � �l�k�j�i�h�g�l 0 thetask theTask�k "0 theplaceholders thePlaceholders�j "0 thereplacements theReplacements�i $0 datedifferential dateDifferential�h 0 oldname oldName�g 0 oldnote oldNote� ��f�e�d�c�b�a�`�_�^�]�\�[
�f 
pnam
�e 
TEXT�d 0 replacetext replaceText
�c 
FCDd�b 0 
updatedate 
updateDate
�a 
FCDs
�` 
FCno
�_ 
msng
�^ 
bool
�] 
FCac�\ �[ *0 replaceplaceholders replacePlaceholders�r v�Z��,�&E�O�b    )���m+ ��,FY hO)��,�l+ ��,FO)��,�l+ ��,FO��,E�O��	 �b   �& )���m+ ��,FY hO)��-����+ � �Z�Y�X���W�Z 0 replacetext replaceText�Y �V��V �  �U�T�S�U 0 thetext theText�T "0 theplaceholders thePlaceholders�S "0 thereplacements theReplacements�X  � �R�Q�P�O�N�M�L�R 0 thetext theText�Q "0 theplaceholders thePlaceholders�P "0 thereplacements theReplacements�O 0 oldtid oldTID�N (0 wrappedplaceholder wrappedPlaceholder�M 0 itemlist itemList�L 0 
resulttext 
resultText� �K�J�I�H�G�F�E
�K 
ascr
�J 
txdl
�I 
cobj
�H 
citm
�G 
TEXT
�F 
rest�E 0 replacetext replaceText�W V�jv  �Y hO��,E�Ob   ��k/%b  %E�O���,FO��-E�O��k/��,FO��&E�O���,FO)���,��,m+ � �D[�C�B���A�D 0 
updatedate 
updateDate�C �@��@ �  �?�>�? 0 originaldate originalDate�> $0 datedifferential dateDifferential�B  � �=�<�;�= 0 originaldate originalDate�< $0 datedifferential dateDifferential�; 0 newdate newDate� �:�9
�: 
msng
�9 
bool�A �� 
 �� �& �Y hO��E�O�� �8z�7�6���5�8 &0 stripplaceholders stripPlaceholders�7  �6 �4�3�2
�4 
from�3 0 thenote theNote�2  � �1�0�1 0 thenote theNote�0 0 	noteparts 	noteParts� �/�.��-�,
�/ 
cpar
�. .corecnte****       ****
�- 
ctxt�,���5 &��-j k �Y hO�[�\[�k/\��/2E�O�� �+��*�)���(�+ ,0 extractduedateprompt extractDueDatePrompt�* �'��' �  �&�& 0 thenote theNote�)  � �%�$�#�% 0 thenote theNote�$ 0 thepars thePars�# 0 apar aPar� �"�!� ���
�" 
cpar
�! 
kocl
�  
cobj
� .corecnte****       ****
� 
msng�( +��-E�O  �[��l kh �� �Y h[OY��O�� �������� 
0 notify  � ��� �  ��� 0 thetitle theTitle�  0 thedescription theDescription�  � ��� 0 thetitle theTitle�  0 thedescription theDescription� ����
� 
appr
� 
subt� 
� .sysonotfnull��� ��� TEXT� ��b  �� � �������
� .aevtoappnull  �   � ****� k    ��  1��  �  �  � ��
� 0 msg  �
 0 num  � S,�	������ m� q�� ���� � ��������������� � � ��� ��������������������������������� "$,��������d������������������������������������������&)��
�	 
docu
� 
FCdw
� 
FCcn
� 
OTst� $0 theselecteditems theSelectedItems
� .corecnte****       ****
� 
FCSt
� 
mesS
� 
as A
�  EAlTwarN�� 
�� .sysodisAaleR        TEXT
�� 
cobj
�� 
valL�� 0 selecteditem selectedItem
�� 
pnam��  0 theprojectname theProjectName
�� 
pcls
�� 
FCpr
�� 
btns
�� 
dflt�� 
�� 
FCno�� 0 thenote theNote�� "0 theplaceholders thePlaceholders
�� 
cpar�� ,0 theplaceholderstring thePlaceholderString�� 00 parseplaceholderstring parsePlaceholderString��  ��  
�� 
FCDs�� 0 thestartdate theStartDate
�� 
FCDd�� 0 
theduedate 
theDueDate
�� 
msng
�� 
bool�� "0 getreplacements getReplacements�� "0 thereplacements theReplacements�� ,0 extractduedateprompt extractDueDatePrompt�� 0 duedateprompt dueDatePrompt�� *0 getdatedifferential getDateDifferential�� $0 datedifferential dateDifferential
�� 
insh
�� 
FCSX
�� 
insl
�� .coreclon****      � ****��  0 duplicateditem duplicatedItem
�� 
FCrt�� 0 thetask theTask�� 0 msg  � ������
�� 
errn�� 0 num  ��  ���\
�� .sysobeepnull��� ��� long
�� 
errn
�� 
FCwa�� *0 replaceplaceholders replacePlaceholders
�� 
from�� &0 stripplaceholders stripPlaceholders�� 0 replacetext replaceText
�� .misccurdldt    ��� null
�� 
FCDR�� 
0 notify  ��*�k/*�k/ *�,�-E�O�j k *�,�-E�Y hUO�j k ������ OhY hO�j k ��a ��� OhY hO�a k/a ,E` O�a k/a ,E` O_ a ,a  +a _ %a %�a ��a a kva ka  OhY hO_ a ,E`  OjvE` !O _  a "i/E` #O)_ #k+ $E` !W X % &hO_ a ',E` (O_ a ),E` *O_ (a + 	 _ *a + a ,&	 _ !j j a ,& Sa -_ %a .%�a /b   %a 0%b  %a 1%b   %a 2%b  %a 3%��a a 4kva ka  OhY hO)_ !jvl+ 5E` 6O_ 6a +  hY hO_ *a + 5)_  k+ 7E` 8O)a 9_ *_ 8m+ :E` ;O_ ;a +  hY hY 9_ (a + ()a <_ (a +m+ :E` ;O_ ;a +  hY hY 	a +E` ;Ob   hY hO_ a =*a >i/a ?4l @O*a >i/E` AO _ Aa B,EkvE` CW )X D E�a F  _ AkvE` CY *j GO)a H�l�O [f*a I,FO)_ C_ !_ 6_ ;�+ JO)a K_  l LE`  O)_  _ !_ 6m+ ME`  O_  _ Aa ,FO*j N_ Aa O,FW X D Ee*a I,FO*j GO)a H�l�Oe*a I,FUO)a Pa Ql+ ROPUascr  ��ޭ