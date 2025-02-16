FasdUAS 1.101.10   ��   ��    k             l      ��  ��   HB
	This script updates the next review date for pending projects.  Pending projects are those with start dates in the future.  For each such project, the script sets its next review date to its start date.
	
	Future enhancements:
		- add flag to allow not making review dates earlier than already scheduled
		- add code to move the review date for on-hold projects forward to the next weekly review day
			
	version 1.0.1, by Curt Clifton
	
	Copyright � 2010, 2014, 2018 Curtis Clifton
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
	
	version 1.0: initial public release
	version 0.2: updated for OmniFocus 2 for Mac
	version 0.1: prototype, not yet released
     � 	 	� 
 	 T h i s   s c r i p t   u p d a t e s   t h e   n e x t   r e v i e w   d a t e   f o r   p e n d i n g   p r o j e c t s .     P e n d i n g   p r o j e c t s   a r e   t h o s e   w i t h   s t a r t   d a t e s   i n   t h e   f u t u r e .     F o r   e a c h   s u c h   p r o j e c t ,   t h e   s c r i p t   s e t s   i t s   n e x t   r e v i e w   d a t e   t o   i t s   s t a r t   d a t e . 
 	 
 	 F u t u r e   e n h a n c e m e n t s : 
 	 	 -   a d d   f l a g   t o   a l l o w   n o t   m a k i n g   r e v i e w   d a t e s   e a r l i e r   t h a n   a l r e a d y   s c h e d u l e d 
 	 	 -   a d d   c o d e   t o   m o v e   t h e   r e v i e w   d a t e   f o r   o n - h o l d   p r o j e c t s   f o r w a r d   t o   t h e   n e x t   w e e k l y   r e v i e w   d a y 
 	 	 	 
 	 v e r s i o n   1 . 0 . 1 ,   b y   C u r t   C l i f t o n 
 	 
 	 C o p y r i g h t   �   2 0 1 0 ,   2 0 1 4 ,   2 0 1 8   C u r t i s   C l i f t o n 
 	 
 	 R e d i s t r i b u t i o n   a n d   u s e   i n   s o u r c e   a n d   b i n a r y   f o r m s ,   w i t h   o r   w i t h o u t   m o d i f i c a t i o n ,   a r e   p e r m i t t e d   p r o v i d e d   t h a t   t h e   f o l l o w i n g   c o n d i t i o n s   a r e   m e t : 
 	 
 	 	 "   R e d i s t r i b u t i o n s   o f   s o u r c e   c o d e   m u s t   r e t a i n   t h e   a b o v e   c o p y r i g h t   n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r . 
 	 	 
 	 	 "   R e d i s t r i b u t i o n s   i n   b i n a r y   f o r m   m u s t   r e p r o d u c e   t h e   a b o v e   c o p y r i g h t   n o t i c e ,   t h i s   l i s t   o f   c o n d i t i o n s   a n d   t h e   f o l l o w i n g   d i s c l a i m e r   i n   t h e   d o c u m e n t a t i o n   a n d / o r   o t h e r   m a t e r i a l s   p r o v i d e d   w i t h   t h e   d i s t r i b u t i o n . 
 	 	 
 	 T H I S   S O F T W A R E   I S   P R O V I D E D   B Y   T H E   C O P Y R I G H T   H O L D E R S   A N D   C O N T R I B U T O R S   " A S   I S "   A N D   A N Y   E X P R E S S   O R   I M P L I E D   W A R R A N T I E S ,   I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   T H E   I M P L I E D   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y   A N D   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A R E   D I S C L A I M E D .   I N   N O   E V E N T   S H A L L   T H E   C O P Y R I G H T   O W N E R   O R   C O N T R I B U T O R S   B E   L I A B L E   F O R   A N Y   D I R E C T ,   I N D I R E C T ,   I N C I D E N T A L ,   S P E C I A L ,   E X E M P L A R Y ,   O R   C O N S E Q U E N T I A L   D A M A G E S   ( I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   P R O C U R E M E N T   O F   S U B S T I T U T E   G O O D S   O R   S E R V I C E S ;   L O S S   O F   U S E ,   D A T A ,   O R   P R O F I T S ;   O R   B U S I N E S S   I N T E R R U P T I O N )   H O W E V E R   C A U S E D   A N D   O N   A N Y   T H E O R Y   O F   L I A B I L I T Y ,   W H E T H E R   I N   C O N T R A C T ,   S T R I C T   L I A B I L I T Y ,   O R   T O R T   ( I N C L U D I N G   N E G L I G E N C E   O R   O T H E R W I S E )   A R I S I N G   I N   A N Y   W A Y   O U T   O F   T H E   U S E   O F   T H I S   S O F T W A R E ,   E V E N   I F   A D V I S E D   O F   T H E   P O S S I B I L I T Y   O F   S U C H   D A M A G E . 
 	 
 	 v e r s i o n   1 . 0 :   i n i t i a l   p u b l i c   r e l e a s e 
 	 v e r s i o n   0 . 2 :   u p d a t e d   f o r   O m n i F o c u s   2   f o r   M a c 
 	 v e r s i o n   0 . 1 :   p r o t o t y p e ,   n o t   y e t   r e l e a s e d 
   
  
 l     ��������  ��  ��        l      ��  ��    D >
	The following properties are used for script notifications.
     �   | 
 	 T h e   f o l l o w i n g   p r o p e r t i e s   a r e   u s e d   f o r   s c r i p t   n o t i f i c a t i o n s . 
      j     �� �� "0 scriptsuitename scriptSuiteName  m        �    C u r t  s   S c r i p t s      l     ��������  ��  ��        l    Y ����  O     Y    O    X    k    W      !   l    �� " #��   " N H Moves next review date of any pending project to match its start date.     # � $ $ �   M o v e s   n e x t   r e v i e w   d a t e   o f   a n y   p e n d i n g   p r o j e c t   t o   m a t c h   i t s   s t a r t   d a t e .   !  % & % r    4 ' ( ' l   2 )���� ) 6   2 * + * 2    ��
�� 
FCfx + F    1 , - , l   $ .���� . G    $ / 0 / =    1 2 1 1    ��
�� 
FCPs 2 m    ��
�� FCPsFCPa 0 =   # 3 4 3 1    ��
�� 
FCPs 4 m     "��
�� FCPsFCPh��  ��   - ? % 0 5 6 5 1   & (��
�� 
FCDs 6 l  ) / 7���� 7 I  ) /������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   ( o      ���� "0 pendingprojects pendingProjects &  8�� 8 Y   5 W 9�� : ;�� 9 O   C R < = < r   J Q > ? > 1   J M��
�� 
FCDs ? 1   M P��
�� 
FCDR = n   C G @ A @ 4   D G�� B
�� 
cobj B o   E F���� 0 i   A o   C D���� "0 pendingprojects pendingProjects�� 0 i   : m   8 9����  ; I  9 >�� C��
�� .corecnte****       **** C o   9 :���� "0 pendingprojects pendingProjects��  ��  ��    1    ��
�� 
FCDo  5     �� D��
�� 
capp D m     E E � F F 0 c o m . o m n i g r o u p . O m n i f o c u s 3
�� kfrmID  ��  ��     G H G l     ��������  ��  ��   H  I J I l  Z c K���� K n  Z c L M L I   [ c�� N���� 
0 notify   N  O P O m   [ \ Q Q � R R ( R e v i e w   D a t e s   U p d a t e d P  S�� S m   \ _ T T � U U \ R e v i e w   d a t e s   u p d a t e d   f o r   a l l   p e n d i n g   p r o j e c t s .��  ��   M  f   Z [��  ��   J  V W V l     ��������  ��  ��   W  X Y X l      �� Z [��   Z � �
	Uses Notification Center to display a notification message.
	theTitle � a string giving the notification title
	theDescription � a string describing the notification event
    [ � \ \\ 
 	 U s e s   N o t i f i c a t i o n   C e n t e r   t o   d i s p l a y   a   n o t i f i c a t i o n   m e s s a g e . 
 	 t h e T i t l e      a   s t r i n g   g i v i n g   t h e   n o t i f i c a t i o n   t i t l e 
 	 t h e D e s c r i p t i o n      a   s t r i n g   d e s c r i b i n g   t h e   n o t i f i c a t i o n   e v e n t 
 Y  ] ^ ] i     _ ` _ I      �� a���� 
0 notify   a  b c b o      ���� 0 thetitle theTitle c  d�� d o      ����  0 thedescription theDescription��  ��   ` I    �� e f
�� .sysonotfnull��� ��� TEXT e o     ����  0 thedescription theDescription f �� g h
�� 
appr g o    ���� "0 scriptsuitename scriptSuiteName h �� i��
�� 
subt i o    	���� 0 thetitle theTitle��   ^  j k j l     ��������  ��  ��   k  l�� l l     ��������  ��  ��  ��       �� m  n o��   m �������� "0 scriptsuitename scriptSuiteName�� 
0 notify  
�� .aevtoappnull  �   � **** n �� `���� p q���� 
0 notify  �� �� r��  r  ������ 0 thetitle theTitle��  0 thedescription theDescription��   p ������ 0 thetitle theTitle��  0 thedescription theDescription q ��������
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT�� ��b   ��  o �� s���� t u��
�� .aevtoappnull  �   � **** s k     c v v   w w  I����  ��  ��   t ���� 0 i   u �� E������ x������������������ Q T��
�� 
capp
�� kfrmID  
�� 
FCDo
�� 
FCfx x  
�� 
FCPs
�� FCPsFCPa
�� FCPsFCPh
�� 
FCDs
�� .misccurdldt    ��� null�� "0 pendingprojects pendingProjects
�� .corecnte****       ****
�� 
cobj
�� 
FCDR�� 
0 notify  �� d)���0 R*�, K*�-�[[[�,\Z�8\[�,\Z�8B\[�,\Z*j 
:A1E�O !k�j kh  ���/ 	*�,*�,FU[OY��UUO)�a l+  ascr  ��ޭ