FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	Post Sticky Reminder

	This script pops up a sticky Growl reminder of the current task.
	
	by Curt Clifton
	
	Copyright � 2007, Curtis Clifton
	
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
	
	Version History:
	
		0.1, initial release, 9/22/07

     � 	 	| 
 	 P o s t   S t i c k y   R e m i n d e r 
 
 	 T h i s   s c r i p t   p o p s   u p   a   s t i c k y   G r o w l   r e m i n d e r   o f   t h e   c u r r e n t   t a s k . 
 	 
 	 b y   C u r t   C l i f t o n 
 	 
 	 C o p y r i g h t   �   2 0 0 7 ,   C u r t i s   C l i f t o n 
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
 	 
 	 	 0 . 1 ,   i n i t i a l   r e l e a s e ,   9 / 2 2 / 0 7 
 
   
  
 l     ��������  ��  ��        l      ��  ��    M G
	The following properties are used for script notification via Growl.
     �   � 
 	 T h e   f o l l o w i n g   p r o p e r t i e s   a r e   u s e d   f o r   s c r i p t   n o t i f i c a t i o n   v i a   G r o w l . 
      j     �� �� 0 growlappname growlAppName  m        �    C u r t ' s   S c r i p t s      j    �� �� 20 scriptstartnotification scriptStartNotification  m       �    S c r i p t   B e g a n      j    �� �� 40 scriptfinishnotification scriptFinishNotification  m       �     S c r i p t   C o m p l e t e d     !   j   	 �� "�� 40 scriptstickynotification scriptStickyNotification " m   	 
 # # � $ $ ( S t i c k y   N o t i f i c a t i o n s !  % & % j    �� '�� ,0 defaultnotifications defaultNotifications ' J     ( (  )�� ) o    ���� 40 scriptfinishnotification scriptFinishNotification��   &  * + * j    �� ,�� $0 allnotifications allNotifications , b     - . - o    ���� ,0 defaultnotifications defaultNotifications . J     / /  0 1 0 o    ���� 20 scriptstartnotification scriptStartNotification 1  2�� 2 o    ���� 40 scriptstickynotification scriptStickyNotification��   +  3 4 3 j    �� 5�� 00 iconloaningapplication iconLoaningApplication 5 m     6 6 � 7 7  O m n i F o c u s . a p p 4  8 9 8 l     ��������  ��  ��   9  : ; : l    � <���� < O     � = > = O    � ? @ ? k    � A A  B C B O    0 D E D l   / F G H F k    / I I  J K J r     L M L n     N O N 2   ��
�� 
OTst O 1    ��
�� 
FCcn M o      ���� $0 theselecteditems theSelectedItems K  P�� P Z    / Q R���� Q l   ! S���� S >    ! T U T l    V���� V I   �� W��
�� .corecnte****       **** W o    ���� $0 theselecteditems theSelectedItems��  ��  ��   U m     ���� ��  ��   R k   $ + X X  Y Z Y l  $ $�� [ \��   [   try sidebar selection    \ � ] ] ,   t r y   s i d e b a r   s e l e c t i o n Z  ^�� ^ r   $ + _ ` _ n   $ ) a b a 2  ' )��
�� 
OTst b 1   $ '��
�� 
FCSt ` o      ���� $0 theselecteditems theSelectedItems��  ��  ��  ��   G . ((first document window whose index is 1)    H � c c P ( f i r s t   d o c u m e n t   w i n d o w   w h o s e   i n d e x   i s   1 ) E 4    �� d
�� 
FCdw d m    ����  C  e f e Z   1 K g h���� g l  1 8 i���� i A   1 8 j k j l  1 6 l���� l I  1 6�� m��
�� .corecnte****       **** m o   1 2���� $0 theselecteditems theSelectedItems��  ��  ��   k m   6 7���� ��  ��   h k   ; G n n  o p o I  ; D�� q r
�� .sysodisAaleR        TEXT q m   ; < s s � t t T Y o u   m u s t   f i r s t   s e l e c t   a   p r o j e c t   o r   a c t i o n . r �� u v
�� 
mesS u m   = > w w � x x P S e l e c t   a   p r o j e c t   o r   a c t i o n   t o   h i g h l i g h t . v �� y��
�� 
as A y m   ? @��
�� EAlTwarN��   p  z�� z L   E G����  ��  ��  ��   f  { | { Z   L h } ~���� } l  L S ����  ?   L S � � � l  L Q ����� � I  L Q�� ���
�� .corecnte****       **** � o   L M���� $0 theselecteditems theSelectedItems��  ��  ��   � m   Q R���� ��  ��   ~ k   V d � �  � � � I  V a�� � �
�� .sysodisAaleR        TEXT � m   V W � � � � � V Y o u   m u s t   s e l e c t   j u s t   o n e   p r o j e c t   o r   a c t i o n . � �� � �
�� 
mesS � m   X [ � � � � � ^ S e l e c t   a   s i n g l e   p r o j e c t   o r   a c t i o n   t o   h i g h l i g h t . � �� ���
�� 
as A � m   \ ]��
�� EAlTwarN��   �  ��� � L   b d����  ��  ��  ��   |  � � � l  i i��������  ��  ��   �  � � � r   i w � � � n   i s � � � 1   o s��
�� 
valL � n   i o � � � 4   j o�� �
�� 
cobj � m   m n����  � o   i j���� $0 theselecteditems theSelectedItems � o      ���� 0 selecteditem selectedItem �  � � � r   x � � � � n   x  � � � 1   { ��
�� 
pnam � o   x {���� 0 selecteditem selectedItem � o      ���� 0 thename theName �  ��� � n  � � � � � I   � ��� ����� 
0 notify   �  � � � m   � � � � � � �   W h a t   a m   I   d o i n g ? �  � � � o   � ����� 0 thename theName �  ��� � o   � ����� 40 scriptstickynotification scriptStickyNotification��  ��   �  f   � ���   @ 4   �� �
�� 
docu � m    ����  > m      � ��                                                                                  OFOC   alis    X  Mac Book Pro               �W.6H+     �OmniFocus.app                                                   ��yĦ�k        ����  	                Applications    �W��      ħ(�       �  'Mac Book Pro:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c   B o o k   P r o  Applications/OmniFocus.app  / ��  ��  ��   ;  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �
	Uses Growl to display a notification message.
	theTitle � a string giving the notification title
	theDescription � a string describing the notification event
	theNotificationKind � a string giving the notification kind (must be an element of allNotifications)
    � � � � 
 	 U s e s   G r o w l   t o   d i s p l a y   a   n o t i f i c a t i o n   m e s s a g e . 
 	 t h e T i t l e      a   s t r i n g   g i v i n g   t h e   n o t i f i c a t i o n   t i t l e 
 	 t h e D e s c r i p t i o n      a   s t r i n g   d e s c r i b i n g   t h e   n o t i f i c a t i o n   e v e n t 
 	 t h e N o t i f i c a t i o n K i n d      a   s t r i n g   g i v i n g   t h e   n o t i f i c a t i o n   k i n d   ( m u s t   b e   a n   e l e m e n t   o f   a l l N o t i f i c a t i o n s ) 
 �  ��� � i     � � � I      �� ����� 
0 notify   �  � � � o      ���� 0 thetitle theTitle �  � � � o      ����  0 thedescription theDescription �  ��� � o      ���� *0 thenotificationkind theNotificationKind��  ��   � O     4 � � � k    3 � �  � � � I   !���� �
�� .registernull��� ��� null��   � �� � �
�� 
appl � o    ���� 0 growlappname growlAppName � �� � �
�� 
anot � o    ���� $0 allnotifications allNotifications � �� � �
�� 
dnot � o    ���� ,0 defaultnotifications defaultNotifications � �� ���
�� 
iapp � o    ���� 00 iconloaningapplication iconLoaningApplication��   �  ��� � I  " 3���� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � o   $ %���� *0 thenotificationkind theNotificationKind � �� � �
�� 
titl � o   & '���� 0 thetitle theTitle � �� � �
�� 
appl � o   ( -�� 0 growlappname growlAppName � �~ ��}
�~ 
desc � o   . /�|�|  0 thedescription theDescription�}  ��   � m      � �2                                                                                  GRRR   alis    �  Mac Book Pro               �W.6H+   8 �GrowlHelperApp.app                                              8 ��n�u        ����  	                	Resources     �W��      �o�     8 � 8 � 8 �  �     YMac Book Pro:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    M a c   B o o k   P r o  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  ��       �{ �    # � � 6 � � � � ��z�y�x�w�v�u�{   � �t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�t 0 growlappname growlAppName�s 20 scriptstartnotification scriptStartNotification�r 40 scriptfinishnotification scriptFinishNotification�q 40 scriptstickynotification scriptStickyNotification�p ,0 defaultnotifications defaultNotifications�o $0 allnotifications allNotifications�n 00 iconloaningapplication iconLoaningApplication�m 
0 notify  
�l .aevtoappnull  �   � ****�k $0 theselecteditems theSelectedItems�j 0 selecteditem selectedItem�i 0 thename theName�h  �g  �f  �e  �d  �c   � �b ��b  �    � �a ��a  �     # � �` ��_�^ � ��]�` 
0 notify  �_ �\ ��\  �  �[�Z�Y�[ 0 thetitle theTitle�Z  0 thedescription theDescription�Y *0 thenotificationkind theNotificationKind�^   � �X�W�V�X 0 thetitle theTitle�W  0 thedescription theDescription�V *0 thenotificationkind theNotificationKind �  ��U�T�S�R�Q�P�O�N�M�L
�U 
appl
�T 
anot
�S 
dnot
�R 
iapp�Q 
�P .registernull��� ��� null
�O 
name
�N 
titl
�M 
desc
�L .notifygrnull��� ��� null�] 5� 1*�b   �b  �b  �b  � O*���b   �� 
U � �K ��J�I � ��H
�K .aevtoappnull  �   � **** � k     � � �  :�G�G  �J  �I   �   �  ��F�E�D�C�B�A�@ s�? w�>�=�<�; � ��:�9�8�7�6 ��5
�F 
docu
�E 
FCdw
�D 
FCcn
�C 
OTst�B $0 theselecteditems theSelectedItems
�A .corecnte****       ****
�@ 
FCSt
�? 
mesS
�> 
as A
�= EAlTwarN�< 
�; .sysodisAaleR        TEXT
�: 
cobj
�9 
valL�8 0 selecteditem selectedItem
�7 
pnam�6 0 thename theName�5 
0 notify  �H �� �*�k/ �*�k/ *�,�-E�O�j k *�,�-E�Y hUO�j k ������ OhY hO�j k ��a ��� OhY hO�a k/a ,E` O_ a ,E` O)a _ b  m+ UU � �4 ��4  �   � �  � �  ��3�2 �  ��1�0 �  ��/ �  ��.�-�, �  ��+ ��*
�+ 
docu � � � �  d z L r 5 B x k A T d
�* kfrmID  
�. 
FCdw�-   ��
�, kfrmID  
�/ 
FCcn
�1 
OTtr�0 
�3 
OTtr�2  �  � �  ��) ��( �  ��' ��&
�' 
docu � � � �  d z L r 5 B x k A T d
�& kfrmID  
�) 
FCac � � � �  g y 2 g q r p t G B m
�( kfrmID   � � � � 6 R e t u r n   e x t r a   s t u f f   t o   L o w e s�z  �y  �x  �w  �v  �u  ascr  ��ޭ