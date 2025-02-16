FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��
	This script generates an OmniOutliner outline from the all of the folders and projects in OmniFocus.
	
	version 0.1.1, by Curt Clifton
	
	Copyright � 2007, Curtis Clifton
	
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
       	  l     ������  ��   	  
  
 l    
 ��  O    
    I   	������
�� .miscactvnull���    obj ��  ��    m       �null     ߀��   OmniFocus.app�= '�/�����#  ��� �; ������+��/�$ x�����+��OFOC  alis    X  Mac Book Pro               �|��H+     OmniFocus.app                                                   "�5��        ����  	                Applications    �|�9      �5��         'Mac Book Pro:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c   B o o k   P r o  Applications/OmniFocus.app  / ��  ��        l     ������  ��        l   B ��  O    B    k    A       r    $    I   "��  
�� .sysodisAaleR        TEXT  m        Ready to generate outline     ��   
�� 
mesS  m     ! ! { uThis process could take several minutes, during which OmniFocus and OmniOutliner will be unavailable for other tasks.      �� " #
�� 
as A " m    ��
�� EAlTwarN # �� $ %
�� 
btns $ J     & &  ' ( ' m     ) )  OK    (  *�� * m     + +  Cancel   ��   % �� ,��
�� 
dflt , m     - -  Cancel   ��    o      ���� 0 
alertreply 
alertReply   . / . Z  % 7 0 1���� 0 l  % . 2�� 2 =  % . 3 4 3 n   % * 5 6 5 1   & *��
�� 
bhit 6 o   % &���� 0 
alertreply 
alertReply 4 m   * - 7 7  Cancel   ��   1 L   1 3����  ��  ��   /  8�� 8 r   8 A 9 : 9 2   8 =��
�� 
FCSX : o      ���� 80 toplevelprojectsandfolders topLevelProjectsAndFolders��    n     ; < ; 4   �� =
�� 
docu = m    ����  < m     ��     > ? > l     ������  ��   ?  @ A @ l  C e B�� B O   C e C D C k   I d E E  F G F I  I N������
�� .miscactvnull���    obj ��  ��   G  H�� H I  O d���� I
�� .corecrel****      � null��   I �� J K
�� 
kocl J m   S T��
�� 
docu K �� L��
�� 
insh L n   W ^ M N M 8   Z ^��
�� 
insl N 2  W Z��
�� 
docu��  ��   D m   C F O O�null     ߀��   OmniOutliner Professional.app�%���������+��/� X�����+��OOut   alis    �  Mac Book Pro               �|��H+     OmniOutliner Professional.app                                   
b0����        ����  	                Applications    �|�9      ����         7Mac Book Pro:Applications:OmniOutliner Professional.app   <  O m n i O u t l i n e r   P r o f e s s i o n a l . a p p    M a c   B o o k   P r o  *Applications/OmniOutliner Professional.app  / ��  ��   A  P Q P l     ������  ��   Q  R S R l  f n T�� T I   f n�� U���� 0 
createrows 
createRows U  V�� V o   g j���� 80 toplevelprojectsandfolders topLevelProjectsAndFolders��  ��  ��   S  W X W l     ������  ��   X  Y Z Y l  o � [�� [ O   o � \ ] \ I  u ��� ^ _
�� .sysodisAaleR        TEXT ^ m   u x ` `  Outline generated    _ �� a��
�� 
mesS a m   y | b b e _The generated outline should include all of your folders, projects, and actions from OmniFocus.   ��   ] m   o r O��   Z  c d c l  � � e�� e L   � �����  ��   d  f g f l     ������  ��   g  h i h l     �� j��   j ; 5 theItems is a list of top-level projects and folders    i  k l k i      m n m I      �� o���� 0 
createrows 
createRows o  p�� p o      ���� 0 theitems theItems��  ��   n k       q q  r s r Z     t u���� t l     v�� v =     w x w o     ���� 0 theitems theItems x J    ����  ��   u L    	����  ��  ��   s  y z y I    �� {���� 0 	createrow 	createRow {  |�� | n     } ~ } 4    �� 
�� 
cobj  m    ����  ~ o    ���� 0 theitems theItems��  ��   z  ��� � I     �� ����� 0 
createrows 
createRows �  ��� � n     � � � 1    ��
�� 
rest � o    ���� 0 theitems theItems��  ��  ��   l  � � � l     ������  ��   �  � � � l     �� ���   � $  anItem is a project or folder    �  � � � i     � � � I      �� ����� 0 	createrow 	createRow �  ��� � o      ���� 0 anitem anItem��  ��   � k     3 � �  � � � r     	 � � � I    ���� ��� 0 
getrowdata 
getRowData��   � �� ���
�� 
from � o    ���� 0 anitem anItem��   � o      ���� 0 rowdata rowData �  � � � O   
 + � � � r    * � � � I   (���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m    ��
�� 
OOrw � �� � �
�� 
insh � n     � � �  ;     � 2   ��
�� 
OOsu � �� ���
�� 
prdt � K    $ � � �� � �
�� 
OOtp � l    ��� � n     � � � o    ���� 0 rowtopic rowTopic � o    ���� 0 rowdata rowData��   � �� ���
�� 
OOnt � l   " ��� � n    " � � � o     "���� 0 rownote rowNote � o     ���� 0 rowdata rowData��  ��  ��   � o      ���� 0 arow aRow � n   
  � � � 4   �� �
�� 
docu � m    ����  � m   
  O �  ��� � I   , 3�� �����  0 createchildren createChildren �  � � � o   - .���� 0 anitem anItem �  ��� � o   . /���� 0 arow aRow��  ��  ��   �  � � � l     ������  ��   �  � � � i     � � � I      ��� ��� 0 
getrowdata 
getRowData�   � �~ ��}
�~ 
from � o      �|�| 0 anitem anItem�}   � k      � �  � � � w      �  � k     � �  � � � r     � � � n     � � � 1    �{
�{ 
pnam � o    �z�z 0 anitem anItem � o      �y�y 0 thetopic theTopic �  ��x � r     � � � l    ��w � n     � � � 1   	 �v
�v 
FCno � o    	�u�u 0 anitem anItem�w   � o      �t�t 0 thenote theNote�x   �  ��s � L     � � K     � � �r � ��r 0 rowtopic rowTopic � o    �q�q 0 thetopic theTopic � �p ��o�p 0 rownote rowNote � o    �n�n 0 thenote theNote�o  �s   �  � � � l     �m�l�m  �l   �  � � � l     �k ��k   � 1 + anItem is an OF folder, project, or action    �  � � � l     �j ��j   � "  aRow is an OmniOutliner row    �  � � � i     � � � I      �i ��h�i  0 createchildren createChildren �  � � � o      �g�g 0 anitem anItem �  ��f � o      �e�e 0 arow aRow�f  �h   � k     1 � �  � � � w     ) �  � Q    ) � � � � k    
 � �  � � � l   �d ��d   � &   First see if anItem is a folder    �  ��c � r    
 � � � n     � � � 2    �b
�b 
FCSX � o    �a�a 0 anitem anItem � o      �`�` 0 itemchildren itemChildren�c   � R      �_�^�]
�_ .ascrerr ****      � ****�^  �]   � k    ) � �  � � � l   �\ ��\   � B < Error says anItem isn't a folder, so see if it is a project    �  � � � Q    # � � � � r     �  � n     1    �[
�[ 
FCrt o    �Z�Z 0 anitem anItem  o      �Y�Y 0 anitem anItem � R      �X�W�V
�X .ascrerr ****      � ****�W  �V   � l  " "�U�U   > 8 Error says anItem isn't a project, so it must be a task    � �T r   $ ) n   $ ' 2   % '�S
�S 
FCac o   $ %�R�R 0 anitem anItem o      �Q�Q 0 itemchildren itemChildren�T   � 	�P	 I   * 1�O
�N�O ,0 createchildrenhelper createChildrenHelper
  o   + ,�M�M 0 itemchildren itemChildren �L o   , -�K�K 0 arow aRow�L  �N  �P   �  l     �J�I�J  �I    l     �H�H   B < itemChildren is a list of OF folders, projects, and actions     l     �G�G   "  aRow is an OmniOutliner row    �F i     I      �E�D�E ,0 createchildrenhelper createChildrenHelper  o      �C�C 0 itemchildren itemChildren �B o      �A�A 0 arow aRow�B  �D   k     X  Z     !�@�?  l    "�>" =    #$# o     �=�= 0 itemchildren itemChildren$ J    �<�<  �>  ! L    	�;�;  �@  �?   %&% r    '(' n    )*) 4    �:+
�: 
cobj+ m    �9�9 * o    �8�8 0 itemchildren itemChildren( o      �7�7 0 	childitem 	childItem& ,-, r    ./. I   �6�50�6 0 
getrowdata 
getRowData�5  0 �41�3
�4 
from1 o    �2�2 0 	childitem 	childItem�3  / o      �1�1 0 	childdata 	childData- 232 O    D454 r   & C676 I  & A�0�/8
�0 .corecrel****      � null�/  8 �.9:
�. 
kocl9 m   ( )�-
�- 
OOrw: �,;<
�, 
prdt; K   * 4== �+>?
�+ 
OOtp> l  + .@�*@ n   + .ABA o   , .�)�) 0 rowtopic rowTopicB o   + ,�(�( 0 	childdata 	childData�*  ? �'C�&
�' 
OOntC l  / 2D�%D n   / 2EFE o   0 2�$�$ 0 rownote rowNoteF o   / 0�#�# 0 	childdata 	childData�%  �&  < �"G�!
�" 
inshG n   5 ;HIH 9   9 ;� 
�  
inslI n   5 9JKJ 4  6 9�L
� 
OOsuL m   7 8����K o   5 6�� 0 arow aRow�!  7 o      �� 0 childrow childRow5 n    #MNM 4    #�O
� 
docuO m   ! "�� N m      O3 PQP I   E L�R��  0 createchildren createChildrenR STS o   F G�� 0 	childitem 	childItemT U�U o   G H�� 0 childrow childRow�  �  Q V�V I   M X�W�� ,0 createchildrenhelper createChildrenHelperW XYX n   N SZ[Z 1   O S�
� 
rest[ o   N O�� 0 itemchildren itemChildrenY \�\ o   S T�� 0 arow aRow�  �  �  �F       �]^_`abc�  ] ���
�	��� 0 
createrows 
createRows� 0 	createrow 	createRow�
 0 
getrowdata 
getRowData�	  0 createchildren createChildren� ,0 createchildrenhelper createChildrenHelper
� .aevtoappnull  �   � ****^ � n��de�� 0 
createrows 
createRows� �f� f  �� 0 theitems theItems�  d � �  0 theitems theItemse ��������
�� 
cobj�� 0 	createrow 	createRow
�� 
rest�� 0 
createrows 
createRows� !�jv  hY hO*��k/k+ O*��,k+ _ �� �����gh���� 0 	createrow 	createRow�� ��i�� i  ���� 0 anitem anItem��  g �������� 0 anitem anItem�� 0 rowdata rowData�� 0 arow aRowh ���� O����������������������������
�� 
from�� 0 
getrowdata 
getRowData
�� 
docu
�� 
kocl
�� 
OOrw
�� 
insh
�� 
OOsu
�� 
prdt
�� 
OOtp�� 0 rowtopic rowTopic
�� 
OOnt�� 0 rownote rowNote�� �� 
�� .corecrel****      � null��  0 createchildren createChildren�� 4*�l E�O��k/ *���*�-6���,��,�� E�UO*��l+ ` �� �����jk���� 0 
getrowdata 
getRowData��  �� ������
�� 
from�� 0 anitem anItem��  j �������� 0 anitem anItem�� 0 thetopic theTopic�� 0 thenote theNotek  ����������
�� 
pnam
�� 
FCno�� 0 rowtopic rowTopic�� 0 rownote rowNote�� �� �Z��,E�O��,E�O���a �� �����lm����  0 createchildren createChildren�� ��n�� n  ������ 0 anitem anItem�� 0 arow aRow��  l �������� 0 anitem anItem�� 0 arow aRow�� 0 itemchildren itemChildrenm  ������������
�� 
FCSX��  ��  
�� 
FCrt
�� 
FCac�� ,0 createchildrenhelper createChildrenHelper�� 2�Z 
��-E�W X   
��,E�W X  hO��-E�O*��l+ b ������op���� ,0 createchildrenhelper createChildrenHelper�� ��q�� q  ������ 0 itemchildren itemChildren�� 0 arow aRow��  o ������������ 0 itemchildren itemChildren�� 0 arow aRow�� 0 	childitem 	childItem�� 0 	childdata 	childData�� 0 childrow childRowp ������ O����������������������������������
�� 
cobj
�� 
from�� 0 
getrowdata 
getRowData
�� 
docu
�� 
kocl
�� 
OOrw
�� 
prdt
�� 
OOtp�� 0 rowtopic rowTopic
�� 
OOnt�� 0 rownote rowNote�� 
�� 
insh
�� 
OOsu
�� 
insl�� 
�� .corecrel****      � null��  0 createchildren createChildren
�� 
rest�� ,0 createchildrenhelper createChildrenHelper�� Y�jv  hY hO��k/E�O*�l E�O��k/ *�����,��,����i/�4a  E�UO*��l+ O*�a ,�l+ c ��r����st��
�� .aevtoappnull  �   � ****r k     �uu  
vv  ww  @xx  Ryy  Yzz  c����  ��  ��  s  t  ���� �� !������ ) +�� -�������� 7���� O������������ ` b
�� .miscactvnull���    obj 
�� 
docu
�� 
mesS
�� 
as A
�� EAlTwarN
�� 
btns
�� 
dflt�� 
�� .sysodisAaleR        TEXT�� 0 
alertreply 
alertReply
�� 
bhit
�� 
FCSX�� 80 toplevelprojectsandfolders topLevelProjectsAndFolders
�� 
kocl
�� 
insh
�� 
insl�� 
�� .corecrel****      � null�� 0 
createrows 
createRows�� �� *j UO��k/ 1��������lv��� E�O�a ,a   hY hO*a -E` UOa  *j O*a �a *�-a 3a  UO*_ k+ Oa  a �a l UOh ascr  ��ޭ