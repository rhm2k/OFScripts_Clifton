FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
�
�
	This script marks the selected actions as complete and creates new actions with a "Waiting For" tag to track replies.
	
	by Curt Clifton
	
	Copyright � 2007-2018 Curtis Clifton
	
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
	
	version 2.1, November 24, 2018 � Add setting to replace all existing tags
	version 2.0, August 11, 2018 � Updated for OmniFocus 3
	version 1.3, March 17, 2018 � Updated for OmniFocus 2.12
	version 1.2: Added feature fo make new "waiting for" tasks have a defer date relative to today's date.
	version 1.1: Added feature to make new "waiting for" tasks have a due date relative to the original tasks date, rather than relative to today's date.
	version 1.0.2: Fixed to not lose links in note of item
	version 1.0.1: Fixed to work with Mac App Store version of OmniFocus 2 Pro
	version 1.0: Lots of improvements:
		� Updated for OmniFocus 2. 
		� Uses Notification Center instead of Growl. 
		� Handles a Waiting context that is a sub-context, instead of just top-level contexts. 
		� Added a property to allow adjusting due date of created task, but made the default be no due date.
		� Adds an paragraph to the new action�s note indicating when the �waiting for� task was created.
		� If the selected task is already a �waiting for� task, the new task won�t have the �Reply on:� prefix added twice, but it will get another paragraph indicating when the follow-up was sent.
	version 0.2: Removed Growl support
	version 0.1: Original release
     � 	 	 
 	 T h i s   s c r i p t   m a r k s   t h e   s e l e c t e d   a c t i o n s   a s   c o m p l e t e   a n d   c r e a t e s   n e w   a c t i o n s   w i t h   a   " W a i t i n g   F o r "   t a g   t o   t r a c k   r e p l i e s . 
 	 
 	 b y   C u r t   C l i f t o n 
 	 
 	 C o p y r i g h t   �   2 0 0 7 - 2 0 1 8   C u r t i s   C l i f t o n 
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
 	 v e r s i o n   2 . 1 ,   N o v e m b e r   2 4 ,   2 0 1 8      A d d   s e t t i n g   t o   r e p l a c e   a l l   e x i s t i n g   t a g s 
 	 v e r s i o n   2 . 0 ,   A u g u s t   1 1 ,   2 0 1 8      U p d a t e d   f o r   O m n i F o c u s   3 
 	 v e r s i o n   1 . 3 ,   M a r c h   1 7 ,   2 0 1 8      U p d a t e d   f o r   O m n i F o c u s   2 . 1 2 
 	 v e r s i o n   1 . 2 :   A d d e d   f e a t u r e   f o   m a k e   n e w   " w a i t i n g   f o r "   t a s k s   h a v e   a   d e f e r   d a t e   r e l a t i v e   t o   t o d a y ' s   d a t e . 
 	 v e r s i o n   1 . 1 :   A d d e d   f e a t u r e   t o   m a k e   n e w   " w a i t i n g   f o r "   t a s k s   h a v e   a   d u e   d a t e   r e l a t i v e   t o   t h e   o r i g i n a l   t a s k s   d a t e ,   r a t h e r   t h a n   r e l a t i v e   t o   t o d a y ' s   d a t e . 
 	 v e r s i o n   1 . 0 . 2 :   F i x e d   t o   n o t   l o s e   l i n k s   i n   n o t e   o f   i t e m 
 	 v e r s i o n   1 . 0 . 1 :   F i x e d   t o   w o r k   w i t h   M a c   A p p   S t o r e   v e r s i o n   o f   O m n i F o c u s   2   P r o 
 	 v e r s i o n   1 . 0 :   L o t s   o f   i m p r o v e m e n t s : 
 	 	 "   U p d a t e d   f o r   O m n i F o c u s   2 .   
 	 	 "   U s e s   N o t i f i c a t i o n   C e n t e r   i n s t e a d   o f   G r o w l .   
 	 	 "   H a n d l e s   a   W a i t i n g   c o n t e x t   t h a t   i s   a   s u b - c o n t e x t ,   i n s t e a d   o f   j u s t   t o p - l e v e l   c o n t e x t s .   
 	 	 "   A d d e d   a   p r o p e r t y   t o   a l l o w   a d j u s t i n g   d u e   d a t e   o f   c r e a t e d   t a s k ,   b u t   m a d e   t h e   d e f a u l t   b e   n o   d u e   d a t e . 
 	 	 "   A d d s   a n   p a r a g r a p h   t o   t h e   n e w   a c t i o n  s   n o t e   i n d i c a t i n g   w h e n   t h e    w a i t i n g   f o r    t a s k   w a s   c r e a t e d . 
 	 	 "   I f   t h e   s e l e c t e d   t a s k   i s   a l r e a d y   a    w a i t i n g   f o r    t a s k ,   t h e   n e w   t a s k   w o n  t   h a v e   t h e    R e p l y   o n :    p r e f i x   a d d e d   t w i c e ,   b u t   i t   w i l l   g e t   a n o t h e r   p a r a g r a p h   i n d i c a t i n g   w h e n   t h e   f o l l o w - u p   w a s   s e n t . 
 	 v e r s i o n   0 . 2 :   R e m o v e d   G r o w l   s u p p o r t 
 	 v e r s i o n   0 . 1 :   O r i g i n a l   r e l e a s e 
   
  
 l     ��������  ��  ��        l      ��  ��    � �
	This string is matched against your tags to find one to assign to a new "waiting-for" action.  The matching is the same as in the tags field in OmniFocus, so you don't need the entire tag name, just a unique fragment.
     �  � 
 	 T h i s   s t r i n g   i s   m a t c h e d   a g a i n s t   y o u r   t a g s   t o   f i n d   o n e   t o   a s s i g n   t o   a   n e w   " w a i t i n g - f o r "   a c t i o n .     T h e   m a t c h i n g   i s   t h e   s a m e   a s   i n   t h e   t a g s   f i e l d   i n   O m n i F o c u s ,   s o   y o u   d o n ' t   n e e d   t h e   e n t i r e   t a g   n a m e ,   j u s t   a   u n i q u e   f r a g m e n t . 
      j     �� �� 0 waitingfortag waitingForTag  m        �    w a i t      l     ��������  ��  ��        l      ��  ��    � �
	If true, then all existing tags are removed from the new "waiting-for" action, so that only the "waiting-for" tag remains. If false, then the "waiting-for" tag is added but all other tags are left unchanged.
     �  � 
 	 I f   t r u e ,   t h e n   a l l   e x i s t i n g   t a g s   a r e   r e m o v e d   f r o m   t h e   n e w   " w a i t i n g - f o r "   a c t i o n ,   s o   t h a t   o n l y   t h e   " w a i t i n g - f o r "   t a g   r e m a i n s .   I f   f a l s e ,   t h e n   t h e   " w a i t i n g - f o r "   t a g   i s   a d d e d   b u t   a l l   o t h e r   t a g s   a r e   l e f t   u n c h a n g e d . 
      j    �� �� (0 removeexistingtags removeExistingTags  m    ��
�� boovfals     !   l     ��������  ��  ��   !  " # " l      �� $ %��   $ k e
	This string is used as a prefix on the original item title when creating the "waiting-for" action.
    % � & & � 
 	 T h i s   s t r i n g   i s   u s e d   a s   a   p r e f i x   o n   t h e   o r i g i n a l   i t e m   t i t l e   w h e n   c r e a t i n g   t h e   " w a i t i n g - f o r "   a c t i o n . 
 #  ' ( ' j    �� )�� 0 waitingprefix waitingPrefix ) m     * * � + +  R e p l y   o n :   (  , - , l     ��������  ��  ��   -  . / . l      �� 0 1��   0 � �
	This string is used as a prefix for a paragraph added to the new item�s note that indicates when the original action was completed.
    1 � 2 2 
 	 T h i s   s t r i n g   i s   u s e d   a s   a   p r e f i x   f o r   a   p a r a g r a p h   a d d e d   t o   t h e   n e w   i t e m  s   n o t e   t h a t   i n d i c a t e s   w h e n   t h e   o r i g i n a l   a c t i o n   w a s   c o m p l e t e d . 
 /  3 4 3 j   	 �� 5�� 0 
noteprefix 
notePrefix 5 m   	 
 6 6 � 7 7 " R e m i n d e r   s e n t   o n   4  8 9 8 l     ��������  ��  ��   9  : ; : l      �� < =��   < � �
	The number of days from base date that the newly created "waiting-for" action will be due. Set to a negative number to put no due date on the new action.
    = � > >8 
 	 T h e   n u m b e r   o f   d a y s   f r o m   b a s e   d a t e   t h a t   t h e   n e w l y   c r e a t e d   " w a i t i n g - f o r "   a c t i o n   w i l l   b e   d u e .   S e t   t o   a   n e g a t i v e   n u m b e r   t o   p u t   n o   d u e   d a t e   o n   t h e   n e w   a c t i o n . 
 ;  ? @ ? j    �� A�� 0 daysuntildue daysUntilDue A m    ������ @  B C B l     ��������  ��  ��   C  D E D l      �� F G��   F � �
	If daysUntilDue is not negative, then this controls whether the date of the newly created "waiting-for" action is set relative to the original task's due date or relative to today's date.
    G � H H| 
 	 I f   d a y s U n t i l D u e   i s   n o t   n e g a t i v e ,   t h e n   t h i s   c o n t r o l s   w h e t h e r   t h e   d a t e   o f   t h e   n e w l y   c r e a t e d   " w a i t i n g - f o r "   a c t i o n   i s   s e t   r e l a t i v e   t o   t h e   o r i g i n a l   t a s k ' s   d u e   d a t e   o r   r e l a t i v e   t o   t o d a y ' s   d a t e . 
 E  I J I j    �� K�� .0 usetaskdateasbasedate useTaskDateAsBaseDate K m    ��
�� boovtrue J  L M L l     ��������  ��  ��   M  N O N l      �� P Q��   P � �
	The number of days from now until the newly created "waiting-for" action will be available. Set to a negative number to put no defer date on the new action. The defer time is based on the OmniFocus Date & Time preference.
    Q � R R� 
 	 T h e   n u m b e r   o f   d a y s   f r o m   n o w   u n t i l   t h e   n e w l y   c r e a t e d   " w a i t i n g - f o r "   a c t i o n   w i l l   b e   a v a i l a b l e .   S e t   t o   a   n e g a t i v e   n u m b e r   t o   p u t   n o   d e f e r   d a t e   o n   t h e   n e w   a c t i o n .   T h e   d e f e r   t i m e   i s   b a s e d   o n   t h e   O m n i F o c u s   D a t e   &   T i m e   p r e f e r e n c e . 
 O  S T S j    �� U�� 0 deferfordays deferForDays U m    ������ T  V W V l     ��������  ��  ��   W  X Y X l      �� Z [��   Z � z 
	This string is used in notifications if multiple items are processed. For single items, we use the actual item title. 
    [ � \ \ �   
 	 T h i s   s t r i n g   i s   u s e d   i n   n o t i f i c a t i o n s   i f   m u l t i p l e   i t e m s   a r e   p r o c e s s e d .   F o r   s i n g l e   i t e m s ,   w e   u s e   t h e   a c t u a l   i t e m   t i t l e .   
 Y  ] ^ ] j    �� _�� 00 multipleitemscompleted multipleItemsCompleted _ m     ` ` � a a  M u l t i p l e   I t e m s ^  b c b l     ��������  ��  ��   c  d e d l      �� f g��   f D >
	The following properties are used for script notifications.
    g � h h | 
 	 T h e   f o l l o w i n g   p r o p e r t i e s   a r e   u s e d   f o r   s c r i p t   n o t i f i c a t i o n s . 
 e  i j i j    �� k�� "0 scriptsuitename scriptSuiteName k m     l l � m m  C u r t  s   S c r i p t s j  n o n l     ��������  ��  ��   o  p q p l     r���� r r      s t s m     ��
�� 
msng t o      ���� 0 	itemtitle 	itemTitle��  ��   q  u v u l  * w���� w O   * x y x O   ) z { z k   ( | |  } ~ } l   ��  ���      Gets target context    � � � � (   G e t s   t a r g e t   c o n t e x t ~  � � � Q    N � � � � k    4 � �  � � � r    $ � � � n    " � � � 1     "��
�� 
ID   � n      � � � 4     �� �
�� 
cobj � m    ����  � l    ����� � I   �� � �
�� .OFOCFCCmnull���     ctxt � o    ���� 0 waitingfortag waitingForTag � �� ���
�� 
kocl � m    ��
�� 
FCtg��  ��  ��   � o      ���� 0 thetagid theTagID �  ��� � r   % 4 � � � 6  % 2 � � � 4  % )�� �
�� 
FCfc � m   ' (����  � =  * 1 � � � 1   + -��
�� 
ID   � o   . 0���� 0 thetagid theTagID � o      ���� $0 thewaitingfortag theWaitingForTag��   � R      ������
�� .ascrerr ****      � ****��  ��   � k   < N � �  � � � I  < K�� ���
�� .sysodisAaleR        TEXT � b   < G � � � b   < C � � � m   < = � � � � � L N o   c o n t e x t   f o u n d   w h o s e   n a m e   c o n t a i n s    � o   = B���� 0 waitingfortag waitingForTag � m   C F � � � � �  ��   �  ��� � L   L N����  ��   �  ��� � O   O( � � � k   \' � �  � � � r   \ i � � � n   \ e � � � 1   a e��
�� 
valL � 2   \ a��
�� 
OTst � o      ���� $0 theselecteditems theSelectedItems �  � � � Z   j � � ����� � l  j s ����� � A   j s � � � l  j q ����� � I  j q�� ���
�� .corecnte****       **** � o   j m���� $0 theselecteditems theSelectedItems��  ��  ��   � m   q r���� ��  ��   � k   v � � �  � � � I  v ��� � �
�� .sysodisAaleR        TEXT � m   v y � � � � � T Y o u   m u s t   f i r s t   s e l e c t   a n   i t e m   t o   c o m p l e t e . � �� ���
�� 
as A � m   | ��
�� EAlTwarN��   �  ��� � L   � �����  ��  ��  ��   �  � � � X   � ��� � � k   �
 � �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 anitem anItem � o      ���� 0 	itemtitle 	itemTitle �  � � � r   � � � � � I  � ��� � �
�� .coreclon****      � **** � o   � ����� 0 anitem anItem � �� ���
�� 
insh � n   � � � � � 9   � ���
�� 
insl � o   � ����� 0 anitem anItem��   � o      ���� 0 thedupe theDupe �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
FCDd � o   � ����� 0 anitem anItem � o      ���� "0 originalduedate originalDueDate �  � � � I  � ��� ���
�� .OFOCFCMcnull���     **** � o   � ����� 0 anitem anItem��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � #  Configure the duplicate item    � � � � :   C o n f i g u r e   t h e   d u p l i c a t e   i t e m �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ��� 0 thedupe theDupe � o      �~�~ 0 oldname oldName �  � � � Z   � � � ��}�| � l  � � ��{�z � H   � � � � C   � � � � � o   � ��y�y 0 oldname oldName � o   � ��x�x 0 waitingprefix waitingPrefix�{  �z   � r   � � � � � b   � � � � � o   � ��w�w 0 waitingprefix waitingPrefix � o   � ��v�v 0 oldname oldName � n       � � � 1   � ��u
�u 
pnam � o   � ��t�t 0 thedupe theDupe�}  �|   �  � � � r   �   b   �	 b   � o   � ��s�s 0 
noteprefix 
notePrefix l  ��r�q c   � l  � 	�p�o	 I  � �n�m�l
�n .misccurdldt    ��� null�m  �l  �p  �o   m   �k
�k 
ctxt�r  �q   o  �j
�j 
ret  o      �i�i 0 texttoinsert textToInsert � 

 I (�h
�h .TEXTOSinnull���     ctxt o  �g�g 0 texttoinsert textToInsert �f�e
�f 
insh n  $ 8   $�d
�d 
insl n    4  �c
�c 
cha  m  �b�b  n   1  �a
�a 
FCno o  �`�` 0 thedupe theDupe�e    r  )6 b  )2 J  ), �_ o  )*�^�^ $0 thewaitingfortag theWaitingForTag�_   l ,1�]�\ n  ,1  2 /1�[
�[ 
FCtg  o  ,/�Z�Z 0 thedupe theDupe�]  �\   o      �Y�Y 0 thetags theTags !"! O  7c#$# k  =b%% &'& Z  =V()�X�W( o  =B�V�V (0 removeexistingtags removeExistingTags) I ER�U*+
�U .OFssremvnull���     ***** 2  EH�T
�T 
FCtg+ �S,�R
�S 
from, 2 KN�Q
�Q 
FCtg�R  �X  �W  ' -�P- I Wb�O./
�O .OFssiaddnull���     ****. o  WX�N�N $0 thewaitingfortag theWaitingForTag/ �M0�L
�M 
to  0 2 [^�K
�K 
FCtg�L  �P  $ o  7:�J�J 0 thedupe theDupe" 121 r  dm343 m  de�I
�I 
msng4 n      565 1  hl�H
�H 
FCRp6 o  eh�G�G 0 thedupe theDupe2 787 l nn�F�E�D�F  �E  �D  8 9:9 l nn�C;<�C  ;   Set due date   < �==    S e t   d u e   d a t e: >?> Z  n�@A�BB@ l nuC�A�@C A  nuDED o  ns�?�? 0 daysuntildue daysUntilDueE m  st�>�>  �A  �@  A r  x�FGF m  xy�=
�= 
msngG n      HIH 1  |��<
�< 
FCDdI o  y|�;�; 0 thedupe theDupe�B  B k  ��JJ KLK Z  ��MN�:OM G  ��PQP l ��R�9�8R H  ��SS o  ���7�7 .0 usetaskdateasbasedate useTaskDateAsBaseDate�9  �8  Q = ��TUT o  ���6�6 "0 originalduedate originalDueDateU m  ���5
�5 
msngN r  ��VWV I ���4�3�2
�4 .misccurdldt    ��� null�3  �2  W o      �1�1 0 basedate baseDate�:  O r  ��XYX o  ���0�0 "0 originalduedate originalDueDateY o      �/�/ 0 basedate baseDateL Z�.Z r  ��[\[ [  ��]^] l ��_�-�,_ o  ���+�+ 0 basedate baseDate�-  �,  ^ ]  ��`a` o  ���*�* 0 daysuntildue daysUntilDuea 1  ���)
�) 
days\ n      bcb 1  ���(
�( 
FCDdc o  ���'�' 0 thedupe theDupe�.  ? ded l ���&�%�$�&  �%  �$  e fgf l ���#hi�#  h   Set defer date   i �jj    S e t   d e f e r   d a t eg k�"k Z  �
lm�!nl l ��o� �o A  ��pqp o  ���� 0 deferfordays deferForDaysq m  ����  �   �  m r  ��rsr m  ���
� 
msngs n      tut 1  ���
� 
FCDsu o  ���� 0 thedupe theDupe�!  n k  �
vv wxw l ���yz�  y e _ TODO: should query user's default defer time, but that's broken in the shipping version of OF2   z �{{ �   T O D O :   s h o u l d   q u e r y   u s e r ' s   d e f a u l t   d e f e r   t i m e ,   b u t   t h a t ' s   b r o k e n   i n   t h e   s h i p p i n g   v e r s i o n   o f   O F 2x |}| r  ��~~ I �����
� .misccurdldt    ��� null�  �   o      ��  0 deferuntildate deferUntilDate} ��� r  ����� m  ����  � n      ��� 1  ���
� 
time� o  ����  0 deferuntildate deferUntilDate� ��� r  ����� [  ����� l ������ o  ����  0 deferuntildate deferUntilDate�  �  � ]  ����� o  ���� 0 deferfordays deferForDays� 1  ���
� 
days� o      ��  0 deferuntildate deferUntilDate� ��� r  �
��� o  ��
�
  0 deferuntildate deferUntilDate� n      ��� 1  	�	
�	 
FCDs� o  �� 0 thedupe theDupe�  �"  �� 0 anitem anItem � o   � ��� $0 theselecteditems theSelectedItems � ��� Z  '����� ?  ��� l ���� I ��� 
� .corecnte****       ****� o  ���� $0 theselecteditems theSelectedItems�   �  �  � m  ���� � r  #��� o  !���� 00 multipleitemscompleted multipleItemsCompleted� o      ���� 0 	itemtitle 	itemTitle�  �  �   � n   O Y��� 1   U Y��
�� 
FCcn� 4   O U���
�� 
FCdw� m   S T���� ��   { 4   ���
�� 
docu� m   
 ����  y m    ���                                                                                  OFOC  alis    .  Macintosh HD                   BD ����OmniFocus.app                                                  ����            ����  
 cu             Applications  /:Applications:OmniFocus.app/     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��   v ��� l     ��������  ��  ��  � ��� l +>������ Z  +>������� > +.��� o  +,���� 0 	itemtitle 	itemTitle� m  ,-��
�� 
msng� n 1:��� I  2:������� 
0 notify  � ��� m  25�� ��� 8 C o m p l e t e d   a n d   A w a i t i n g   R e p l y� ���� o  56���� 0 	itemtitle 	itemTitle��  ��  �  f  12��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �
	Uses Notification Center to display a notification message.
	theTitle � a string giving the notification title
	theDescription � a string describing the notification event
   � ���\ 
 	 U s e s   N o t i f i c a t i o n   C e n t e r   t o   d i s p l a y   a   n o t i f i c a t i o n   m e s s a g e . 
 	 t h e T i t l e      a   s t r i n g   g i v i n g   t h e   n o t i f i c a t i o n   t i t l e 
 	 t h e D e s c r i p t i o n      a   s t r i n g   d e s c r i b i n g   t h e   n o t i f i c a t i o n   e v e n t 
� ��� i    ��� I      ������� 
0 notify  � ��� o      ���� 0 thetitle theTitle� ���� o      ����  0 thedescription theDescription��  ��  � I    ����
�� .sysonotfnull��� ��� TEXT� o     ����  0 thedescription theDescription� ����
�� 
appr� o    ���� "0 scriptsuitename scriptSuiteName� �����
�� 
subt� o    	���� 0 thetitle theTitle��  � ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ��� �� * 6������ ` l����  � ������������������������ 0 waitingfortag waitingForTag�� (0 removeexistingtags removeExistingTags�� 0 waitingprefix waitingPrefix�� 0 
noteprefix 
notePrefix�� 0 daysuntildue daysUntilDue�� .0 usetaskdateasbasedate useTaskDateAsBaseDate�� 0 deferfordays deferForDays�� 00 multipleitemscompleted multipleItemsCompleted�� "0 scriptsuitename scriptSuiteName�� 
0 notify  
�� .aevtoappnull  �   � ****
�� boovfals����
�� boovtrue����� ������������� 
0 notify  �� ����� �  ������ 0 thetitle theTitle��  0 thedescription theDescription��  � ������ 0 thetitle theTitle��  0 thedescription theDescription� ��������
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT�� ��b  �� � �����������
�� .aevtoappnull  �   � ****� k    >��  p��  u�� �����  ��  ��  � ���� 0 anitem anItem� 9���������������������������� � ��������������� �����������������������������������������������������������~��}
�� 
msng�� 0 	itemtitle 	itemTitle
�� 
docu
�� 
kocl
�� 
FCtg
�� .OFOCFCCmnull���     ctxt
�� 
cobj
�� 
ID  �� 0 thetagid theTagID
�� 
FCfc�  �� $0 thewaitingfortag theWaitingForTag��  ��  
�� .sysodisAaleR        TEXT
�� 
FCdw
�� 
FCcn
�� 
OTst
�� 
valL�� $0 theselecteditems theSelectedItems
�� .corecnte****       ****
�� 
as A
�� EAlTwarN
�� 
pnam
�� 
insh
�� 
insl
�� .coreclon****      � ****�� 0 thedupe theDupe
�� 
FCDd�� "0 originalduedate originalDueDate
�� .OFOCFCMcnull���     ****�� 0 oldname oldName
�� .misccurdldt    ��� null
�� 
ctxt
�� 
ret �� 0 texttoinsert textToInsert
�� 
FCno
�� 
cha 
�� .TEXTOSinnull���     ctxt�� 0 thetags theTags
�� 
from
�� .OFssremvnull���     ****
�� 
to  
�� .OFssiaddnull���     ****
�� 
FCRp
�� 
bool�� 0 basedate baseDate
�� 
days
�� 
FCDs�  0 deferuntildate deferUntilDate
�~ 
time�} 
0 notify  ��?�E�O�#*�k/ 'b   ��l �k/�,E�O*�k/�[�,\Z�81E�W X  �b   %a %j OhO*a k/a ,�*a -a ,E` O_ j k a a a l OhY hO�_ [��l kh  �a ,E�O�a �a 4l E` O�a  ,E` !O�j "O_ a ,E` #O_ #b   b  _ #%_ a ,FY hOb  *j $a %&%_ &%E` 'O_ 'a _ a (,a )k/a 3l *O�kv_ �-%E` +O_  'b   *�-a ,*�-l -Y hO�a .*�-l /UO�_ a 0,FOb  j �_ a  ,FY @b  
 _ !� a 1& *j $E` 2Y 	_ !E` 2O_ 2b  _ 3 _ a  ,FOb  j �_ a 4,FY 3*j $E` 5Oj_ 5a 6,FO_ 5b  _ 3 E` 5O_ 5_ a 4,F[OY��O_ j k b  E�Y hUUUO�� )a 7�l+ 8Y hascr  ��ޭ