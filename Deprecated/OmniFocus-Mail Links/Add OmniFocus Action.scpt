FasdUAS 1.101.10   ��   ��    k             l      �� ��   rl 
	Creates a new action in the OmniFocus inbox corresponding to the selected message in Mail.  The action includes information necessary for linking back to the message from within OmniFocus. 

	by Curt Clifton
	
	Inspired by an initial script posted by zooids to the OmniFocus forums [http://forums.omnigroup.com/showthread.php?t=3783].

	Copyright � 2007, Curtis Clifton
	
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

       	  l     ������  ��   	  
  
 l     ������  ��        l     �� ��    W Q If true, then the sender of the message is included in the action's description.         j     �� �� 0 includesender includeSender  m     ��
�� boovtrue      l     ������  ��        l     �� ��    W Q This string is used at the beginning of the description of each generated action         j    �� �� 0 actionprefix actionPrefix  m        Respond to          l     ������  ��        l     �� ��    ^ X This is the default context for newly created actions.  Set to "" to not set a context.        !   j    �� "��  0 defaultcontext defaultContext " m     # #  Email    !  $ % $ l     ������  ��   %  & ' & l     �� (��   ( p j If true, then rather than sending the new action directly to OF, the QuickEntry window is opened instead.    '  ) * ) j   	 �� +�� &0 displayquickentry displayQuickEntry + m   	 
��
�� boovtrue *  , - , l     ������  ��   -  . / . l     �� 0��   0 ; 5 These four values are constants.  Don't change them!    /  1 2 1 l      3 4 3 j    �� 5�� 0 fullcontent fullContent 5 m    ����   4 &   Include full content of message    2  6 7 6 l      8 9 8 j    �� :�� $0 summarizecontent summarizeContent : m    ����  9 2 , Include a 3 sentence summary of the message    7  ; < ; l      = > = j    �� ?�� 20 firstparagraphofcontent firstParagraphOfContent ? m    ����  > 1 + Include the first paragraph of the message    <  @ A @ l      B C B j    �� D�� (0 nocontentinclusion noContentInclusion D m    ����  C 6 0 Don't include any of the content of the message    A  E F E l     ������  ��   F  G H G l     �� I��   I	 The value of contentInclusionType is used to control what, if any, of the message content is included in the OmniFocus note field.  Replace the text to the right of the colon with one of the four terms above to change the message content that is sent to OmniFocus.    H  J K J j    �� L�� ,0 contentinclusiontype contentInclusionType L o    ���� 0 fullcontent fullContent K  M N M l     ������  ��   N  O P O l     �� Q��   Q � z These two properties refer to the Edit menu and the Copy command.  They should be consistent across internationalization.    P  R S R j    �� T��  0 editmenunumber editMenuNumber T m    ����  S  U V U j     �� W�� (0 copymenuitemnumber copyMenuItemNumber W m    ����  V  X Y X l     ������  ��   Y  Z [ Z l      �� \��   \ ; 5 Handler called when running script from script menu     [  ] ^ ] i   ! $ _ ` _ I     ������
�� .aevtoappnull  �   � ****��  ��   ` k     8 a a  b c b O     + d e d k    * f f  g h g r    	 i j i 1    ��
�� 
slct j o      ���� *0 theselectedmessages theSelectedMessages h  k�� k Z   
 * l m���� l l  
  n�� n >   
  o p o l  
  q�� q I  
 �� r��
�� .corecnte****       **** r o   
 ���� *0 theselectedmessages theSelectedMessages��  ��   p m    ���� ��   m k    & s s  t u t I   #�� v w
�� .sysodisAaleR        TEXT v m     x x < 6Please select a message to be linked to the new action    w �� y z
�� 
mesS y m     { { W QThis script creates a new OmniFocus action that links back to a selected message.    z �� | }
�� 
btns | J     ~ ~  ��  m     � �  OK   ��   } �� � �
�� 
dflt � m     � �  OK    � �� ���
�� 
givu � m    ���� ��   u  ��� � L   $ &����  ��  ��  ��  ��   e m      � ��null     ߀��   Mail.app��U  �= '�/�����  ��� �; ������+��/�$ x�����+��emal  alis    D  Mac Book Pro               �|��H+     Mail.app                                                         ���L�        ����  	                Applications    �|�9      �M*`         "Mac Book Pro:Applications:Mail.app    M a i l . a p p    M a c   B o o k   P r o  Applications/Mail.app   / ��   c  ��� � n  , 8 � � � I   - 8�� ����� $0 createlinkedtask createLinkedTask �  � � � n   - 1 � � � 4   . 1�� �
�� 
cobj � m   / 0����  � l  - . ��� � o   - .���� *0 theselectedmessages theSelectedMessages��   �  ��� � m   1 4��
�� 
msng��  ��   �  f   , -��   ^  � � � l     ������  ��   �  � � � l     ������  ��   �  � � � l      �� ���   � 4 . Handler called when running as a rule script     �  � � � w       � � � i   % ( � � � I     �� � �
�� .emalcpmanull���   @ mssg � o      ���� 0 themessages theMessages � �� ���
�� 
pmar � o      ���� 0 therule theRule��   � O       � � � X     ��� � � n    � � � I    �� ����� $0 createlinkedtask createLinkedTask �  ��� � o    ���� 0 amess aMess��  ��   �  f    �� 0 amess aMess � o    ���� 0 themessages theMessages � m      � �  � � � l     ������  ��   �  � � � l      �� ���   � E ? 
	Creates task and link in OmniFocus for the given message.  
    �  � � � i   ) , � � � I      �� ����� $0 createlinkedtask createLinkedTask �  ��� � o      ���� 0 selected_message  ��  ��   � k     � �  � � � O     o � � � k    n � �  � � � r    	 � � � l    ��� � n     � � � 1    ��
�� 
meid � l    ��� � o    ���� 0 selected_message  ��  ��   � o      ���� 0 
message_id   �  � � � r   
  � � � l  
  ��� � n   
  � � � 1    ��
�� 
subj � o   
 ���� 0 selected_message  ��   � o      ���� 0 message_subj   �  � � � r     � � � l    ��� � I   �� ���
�� .emaleafnTEXT        TEXT � n     � � � 1    ��
�� 
sndr � o    ���� 0 selected_message  ��  ��   � o      ���� 0 message_sender   �  ��� � Z    n � � � � � l   % ��� � =   % � � � o    ���� ,0 contentinclusiontype contentInclusionType � o    $���� (0 nocontentinclusion noContentInclusion��   � r   ( + � � � m   ( ) � �       � o      ���� 0 message_content   �  � � � l  . 9 ��� � =  . 9 � � � o   . 3���� ,0 contentinclusiontype contentInclusionType � o   3 8���� $0 summarizecontent summarizeContent��   �  � � � r   < I � � � I  < G�� � �
�� .fbcssummTEXT        **** � l  < A �� � c   < A � � � n   < ? � � � 1   = ?�~
�~ 
ctnt � o   < =�}�} 0 selected_message   � m   ? @�|
�| 
TEXT�   � �{ ��z
�{ 
in   � m   B C�y�y �z   � o      �x�x 0 message_content   �  � � � l  L W ��w � =  L W � � � o   L Q�v�v ,0 contentinclusiontype contentInclusionType � o   Q V�u�u 20 firstparagraphofcontent firstParagraphOfContent�w   �  ��t � r   Z d � � � l  Z b ��s � c   Z b � � � n   Z ` � � � 4  ] `�r �
�r 
cpar � m   ^ _�q�q  � n   Z ] � � � 1   [ ]�p
�p 
ctnt � o   Z [�o�o 0 selected_message   � m   ` a�n
�n 
TEXT�s   � o      �m�m 0 message_content  �t   � r   g n � � � l  g l ��l � c   g l   n   g j 1   h j�k
�k 
ctnt o   g h�j�j 0 selected_message   m   j k�i
�i 
TEXT�l   � o      �h�h 0 message_content  ��   � m      � �  l  p p�g�f�g  �f   �e O   p k   t		 

 r   t } b   t { o   t y�d�d 0 actionprefix actionPrefix o   y z�c�c 0 message_subj   o      �b�b 0 my_task My_Task  Z   ~ ��a�` l  ~ ��_ o   ~ ��^�^ 0 includesender includeSender�_   r   � � b   � � b   � � o   � ��]�] 0 my_task My_Task m   � �  �    o   � ��\�\ 0 message_sender   o      �[�[ 0 my_task My_Task�a  �`    r   � � 4  � ��Z 
�Z 
docu  m   � ��Y�Y  o      �X�X 0 mydoc MyDoc !"! O   � �#$# k   � �%% &'& r   � �()( m   � �**      ) o      �W�W 0 
thecontext 
theContext' +�V+ r   � �,-, K   � �.. �U/�T
�U 
pnam/ o   � ��S�S 0 my_task My_Task�T  - o      �R�R 0 
proprecord 
propRecord�V  $ o   � ��Q�Q 0 mydoc MyDoc" 010 Z   ��23�P42 o   � ��O�O &0 displayquickentry displayQuickEntry3 O   �-565 k   �,77 898 I  � ��N�M�L
�N .miscactvnull���    obj �M  �L  9 :;: r   � �<=< I  � ��K�J>
�K .corecrel****      � null�J  > �I?@
�I 
kocl? m   � ��H
�H 
FCit@ �GA�F
�G 
prdtA o   � ��E�E 0 
proprecord 
propRecord�F  = o      �D�D 0 thetask theTask; BCB Z   �DE�C�BD l  � �F�AF >  � �GHG o   � ��@�@  0 defaultcontext defaultContextH m   � �II      �A  E k   �JJ KLK r   � �MNM I  � ��?OP
�? .OFOCFCCmFCCM  @    TEXTO o   � ��>�>  0 defaultcontext defaultContextP �=QR
�= 
koclQ m   � ��<
�< 
FCctR �;S�:
�; 
FCmmS m   � ��9�9 �:  N o      �8�8 0 contextlist contextListL T�7T Z   �UV�6�5U l  � �W�4W >  � �XYX o   � ��3�3 0 contextlist contextListY J   � ��2�2  �4  V r   �Z[Z 5   ��1\�0
�1 
FCct\ l ]�/] n  ^_^ 1  �.
�. 
ID  _ n  `a` 4  �-b
�- 
cobjb m  �,�, a o  �+�+ 0 contextlist contextList�/  
�0 kfrmID  [ n      cdc m  �*
�* 
FCctd o  �)�) 0 thetask theTask�6  �5  �7  �C  �B  C e�(e I  ,�'f�&
�' .OTREisalnull���    cct4f J   (gg h�%h 4   &�$i
�$ 
FCiti m  $%�#�# �%  �&  �(  6 1   � ��"
�" 
FCQE�P  4 k  0�jj klk Z  0Fmn�!� m l 05o�o > 05pqp o  01�� 0 
thecontext 
theContextq m  14rr      �  n r  8Bsts b  8@uvu o  89�� 0 
proprecord 
propRecordv K  9?ww �x�
� 
FCctx o  <=�� 0 
thecontext 
theContext�  t o      �� 0 
proprecord 
propRecord�!  �   l y�y O  G�z{z k  K�|| }~} r  K^� I K\���
� .corecrel****      � null�  � ���
� 
kocl� m  OR�
� 
FCit� ���
� 
prdt� o  UV�� 0 
proprecord 
propRecord�  � o      �� 0 thetask theTask~ ��� Z  _������ l _h��� > _h��� o  _d��  0 defaultcontext defaultContext� m  dg��      �  � k  k��� ��� r  k���� I k��
��
�
 .OFOCFCCmFCCM  @    TEXT� o  kp�	�	  0 defaultcontext defaultContext� ���
� 
kocl� m  sv�
� 
FCct� ���
� 
FCmm� m  yz�� �  � o      �� 0 contextlist contextList� ��� Z  ������ � l ������ > ����� o  ������ 0 contextlist contextList� J  ������  ��  � r  ����� 5  �������
�� 
FCct� l ������ n  ����� 1  ����
�� 
ID  � n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 contextlist contextList��  
�� kfrmID  � n      ��� m  ����
�� 
FCct� o  ������ 0 thetask theTask�  �   �  �  �  �  { o  GH���� 0 mydoc MyDoc�  1 ���� O  ���� k  ��� ��� r  ����� b  ����� o  ����
�� 
ret � o  ����
�� 
ret � 1  ����
�� 
FCno� ���� O  ���� k  ��� ��� r  ����� b  ����� b  ����� m  ����  message://<   � o  ������ 0 
message_id  � m  ����  >   � o      ���� 0 theurl theURL� ��� r  ����� o  ������ 0 theurl theURL� o      ���� 0 linktext linkText� ��� I ������
�� .TEXTOSinnull���    TEXT� o  ������ 0 linktext linkText� �����
�� 
insh� n  ����� 8  ����
�� 
insl� 4 �����
�� 
cha � m  ������ ��  � ��� r  ����� o  ������ 0 theurl theURL� n      ��� 1  ����
�� 
valL� n  ����� 4  �����
�� 
OSsa� m  ���� 
 link   � n  ����� m  ����
�� 
OSst� 4  �����
�� 
cpar� m  ������ � ���� I  ����
�� .TEXTOSinnull���    TEXT� o   ���� 0 message_content  � �����
�� 
insh� n  ��� 8  
��
�� 
insl� 4 
���
�� 
cha � m  	��������  ��  � 1  ����
�� 
FCno��  � o  ������ 0 thetask theTask��   m   p q���null     ߀��   OmniFocus.app�= '�/�����#  ��� �; ������+��/�$ x�����+��OFOC  alis    X  Mac Book Pro               �|��H+     OmniFocus.app                                                   "�5��        ����  	                Applications    �|�9      �5��         'Mac Book Pro:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c   B o o k   P r o  Applications/OmniFocus.app  / ��  �e   � ���� l     ������  ��  ��       �����  #���������������������  � ������������������������������ 0 includesender includeSender�� 0 actionprefix actionPrefix��  0 defaultcontext defaultContext�� &0 displayquickentry displayQuickEntry�� 0 fullcontent fullContent�� $0 summarizecontent summarizeContent�� 20 firstparagraphofcontent firstParagraphOfContent�� (0 nocontentinclusion noContentInclusion�� ,0 contentinclusiontype contentInclusionType��  0 editmenunumber editMenuNumber�� (0 copymenuitemnumber copyMenuItemNumber
�� .aevtoappnull  �   � ****
�� .emalcpmanull���   @ mssg�� $0 createlinkedtask createLinkedTask
�� boovtrue
�� boovtrue��  �� �� �� ��  �� �� � �� `��������
�� .aevtoappnull  �   � ****��  ��  �  �  ������� x�� {�� ��� ���������������
�� 
slct�� *0 theselectedmessages theSelectedMessages
�� .corecnte****       ****
�� 
mesS
�� 
btns
�� 
dflt
�� 
givu�� �� 
�� .sysodisAaleR        TEXT
�� 
cobj
�� 
msng�� $0 createlinkedtask createLinkedTask�� 9� (*�,E�O�j k �����kv����� OhY hUO)��k/a l+ � �� ���������
�� .emalcpmanull���   @ mssg�� 0 themessages theMessages�� ������
�� 
pmar�� 0 therule theRule��  � �������� 0 themessages theMessages�� 0 therule theRule�� 0 amess aMess�  ���������
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� $0 createlinkedtask createLinkedTask�� !�  �[��l kh )�k+ [OY��U� �� ����������� $0 createlinkedtask createLinkedTask�� ����� �  ���� 0 selected_message  ��  � ���������������������������� 0 selected_message  �� 0 
message_id  �� 0 message_subj  �� 0 message_sender  �� 0 message_content  �� 0 my_task My_Task�� 0 mydoc MyDoc�� 0 
thecontext 
theContext�� 0 
proprecord 
propRecord�� 0 thetask theTask�� 0 contextlist contextList�� 0 theurl theURL�� 0 linktext linkText� - ��������� �������~�}��|*�{�z�y�x�w�v�u�tI�s�r�q�p�o�n�mr��l�k���j�i�h�g�f�e��d
�� 
meid
�� 
subj
�� 
sndr
�� .emaleafnTEXT        TEXT
�� 
ctnt
�� 
TEXT
� 
in  
�~ .fbcssummTEXT        ****
�} 
cpar
�| 
docu
�{ 
pnam
�z 
FCQE
�y .miscactvnull���    obj 
�x 
kocl
�w 
FCit
�v 
prdt�u 
�t .corecrel****      � null
�s 
FCct
�r 
FCmm
�q .OFOCFCCmFCCM  @    TEXT
�p 
cobj
�o 
ID  
�n kfrmID  
�m .OTREisalnull���    cct4
�l 
ret 
�k 
FCno
�j 
insh
�i 
cha 
�h 
insl
�g .TEXTOSinnull���    TEXT
�f 
OSst
�e 
OSsa
�d 
valL��� l��,E�O��,E�O��,j E�Ob  b    �E�Y Bb  b    ��,�&�ml 	E�Y $b  b    ��,�k/�&E�Y 	��,�&E�UO��b  �%E�Ob    ��%�%E�Y hO*�k/E�O� �E�O�lE�UOb   �*a , u*j O*a a a �a  E�Ob  a  Ab  a a a ka  E�O�jv *a �a k/a ,Ea 0�a ,FY hY hO*a k/kvj UY ~�a  �a �l%E�Y hO� b*a a a �a  E�Ob  a   Ab  a a a ka  E�O�jv *a �a k/a ,Ea 0�a ,FY hY hUO� d_ !_ !%*a ",FO*a ", Ma #�%a $%E�O�E�O�a %*a &k/a '3l (O�*�k/a ),a *a +/a ,,FO�a %*a &i/a '3l (UUUascr  ��ޭ