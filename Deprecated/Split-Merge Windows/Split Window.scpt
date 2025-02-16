FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��
	Split Window

	This script splits the front most window into two windows.  I use it for inbox processing.
	
	by Curt Clifton
	
	Copyright � 2007, Curtis Clifton
	
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
	
	Version History:
	
		0.1, initial release, 7/16/07

       	  l     ������  ��   	  
  
 l    � ��  O     �    O    �    k    �       Z    '  ����  l    ��  A        l    ��  I   �� ��
�� .corecnte****       ****  2   ��
�� 
FCdw��  ��    m    ���� ��    k    #       I    ��  
�� .sysodisAaleR        TEXT  m           Sorry, cannot split window     �� ! "
�� 
mesS ! m     # # ! No window is open to split.    " �� $��
�� 
as A $ m    ��
�� EAlTcriT��     %�� % L   ! #����  ��  ��  ��     & ' & r   ( . ( ) ( 4   ( ,�� *
�� 
FCdw * m   * +����  ) o      ����  0 originalwindow originalWindow '  + , + r   / 9 - . - n  / 7 / 0 / I   0 7�� 1���� 0 labelbounds labelBounds 1  2�� 2 n   0 3 3 4 3 1   1 3��
�� 
pbnd 4 o   0 1����  0 originalwindow originalWindow��  ��   0  f   / 0 . o      ���� 0 labeledbounds labeledBounds ,  5 6 5 r   : I 7 8 7 ^   : E 9 : 9 l  : C ;�� ; [   : C < = < l  : = >�� > n   : = ? @ ? o   ; =���� 0 topedge topEdge @ o   : ;���� 0 labeledbounds labeledBounds��   = l  = B A�� A n   = B B C B o   > B���� 0 
bottomedge 
bottomEdge C o   = >���� 0 labeledbounds labeledBounds��  ��   : m   C D����  8 o      ����  0 verticalcenter verticalCenter 6  D E D l  J J�� F��   F &   Hack to get deep copy of record    E  G H G r   J Y I J I n  J U K L K I   K U�� M���� 0 labelbounds labelBounds M  N�� N n  K Q O P O I   L Q�� Q���� 0 unlabelbounds unlabelBounds Q  R�� R o   L M���� 0 labeledbounds labeledBounds��  ��   P  f   K L��  ��   L  f   J K J o      ���� (0 secondwindowbounds secondWindowBounds H  S T S r   Z e U V U \   Z _ W X W o   Z ]����  0 verticalcenter verticalCenter X m   ] ^����  V n       Y Z Y o   ` d���� 0 
bottomedge 
bottomEdge Z o   _ `���� 0 labeledbounds labeledBounds T  [ \ [ r   f q ] ^ ] [   f k _ ` _ o   f i����  0 verticalcenter verticalCenter ` m   i j����  ^ n       a b a o   n p���� 0 topedge topEdge b o   k n���� (0 secondwindowbounds secondWindowBounds \  c d c r   r | e f e n  r x g h g I   s x�� i���� 0 unlabelbounds unlabelBounds i  j�� j o   s t���� 0 labeledbounds labeledBounds��  ��   h  f   r s f n       k l k 1   y {��
�� 
pbnd l o   x y����  0 originalwindow originalWindow d  m�� m I  } ����� n
�� .corecrel****      � null��   n �� o p
�� 
kocl o m   � ���
�� 
FCdw p �� q r
�� 
insh q n   � � s t s 8   � ���
�� 
insl t 4  � ��� u
�� 
FCdw u m   � �����  r �� v��
�� 
prdt v K   � � w w �� x��
�� 
pbnd x l  � � y�� y n  � � z { z I   � ��� |���� 0 unlabelbounds unlabelBounds |  }�� } o   � ����� (0 secondwindowbounds secondWindowBounds��  ��   {  f   � ���  ��  ��  ��    4   �� ~
�� 
docu ~ m    ����   m       �null     ߀��   OmniFocus.app9 �������������\9 �����တ  ��\9 
    ���        OFOC  alis    X  Mac Book Pro               �|�YH+     OmniFocus.app                                                   ��q+3        ����  	                Applications    �|�9      �q         'Mac Book Pro:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c   B o o k   P r o  Applications/OmniFocus.app  / ��  ��     � � � l     ������  ��   �  � � � i      � � � I      �� ����� 0 labelbounds labelBounds �  ��� � o      ���� 0 windowbounds windowBounds��  ��   � L      � � K      � � �� � ��� 0 leftedge leftEdge � n     � � � 4    �� �
�� 
cobj � m    ����  � o    ���� 0 windowbounds windowBounds � �� � ��� 0 topedge topEdge � n     � � � 4    �� �
�� 
cobj � m   	 
����  � o    ���� 0 windowbounds windowBounds � �� � ��� 0 	rightedge 	rightEdge � n     � � � 4    �� �
�� 
cobj � m    ����  � o    ���� 0 windowbounds windowBounds � �� ����� 0 
bottomedge 
bottomEdge � n     � � � 4    �� �
�� 
cobj � m    ����  � o    ���� 0 windowbounds windowBounds��   �  � � � l     ������  ��   �  ��� � i     � � � I      �� ����� 0 unlabelbounds unlabelBounds �  ��� � o      ���� 0 labeledbounds labeledBounds��  ��   � L      � � J      � �  � � � n      � � � o    ���� 0 leftedge leftEdge � o     ���� 0 labeledbounds labeledBounds �  � � � n     � � � o    ���� 0 topedge topEdge � o    ���� 0 labeledbounds labeledBounds �  � � � n     � � � o   	 ���� 0 	rightedge 	rightEdge � o    	���� 0 labeledbounds labeledBounds �  ��� � n     � � � o    ���� 0 
bottomedge 
bottomEdge � o    ���� 0 labeledbounds labeledBounds��  ��       �� � � � � � � � �������������   � ������~�}�|�{�z�y�x�w�v�� 0 labelbounds labelBounds�� 0 unlabelbounds unlabelBounds
� .aevtoappnull  �   � ****�~  0 originalwindow originalWindow�} 0 labeledbounds labeledBounds�|  0 verticalcenter verticalCenter�{ (0 secondwindowbounds secondWindowBounds�z  �y  �x  �w  �v   � �u ��t�s � ��r�u 0 labelbounds labelBounds�t �q ��q  �  �p�p 0 windowbounds windowBounds�s   � �o�o 0 windowbounds windowBounds � �n�m�l�k�j�i�h�n 0 leftedge leftEdge
�m 
cobj�l 0 topedge topEdge�k 0 	rightedge 	rightEdge�j 0 
bottomedge 
bottomEdge�i �h �r ��k/E��l/E��m/E���/E� � �g ��f�e � ��d�g 0 unlabelbounds unlabelBounds�f �c ��c  �  �b�b 0 labeledbounds labeledBounds�e   � �a�a 0 labeledbounds labeledBounds � �`�_�^�]�\�` 0 leftedge leftEdge�_ 0 topedge topEdge�^ 0 	rightedge 	rightEdge�] 0 
bottomedge 
bottomEdge�\ �d ��,E��,E��,E��,E�v � �[ ��Z�Y � ��X
�[ .aevtoappnull  �   � **** � k     � � �  
�W�W  �Z  �Y   �   �  �V�U�T  �S #�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@
�V 
docu
�U 
FCdw
�T .corecnte****       ****
�S 
mesS
�R 
as A
�Q EAlTcriT�P 
�O .sysodisAaleR        TEXT�N  0 originalwindow originalWindow
�M 
pbnd�L 0 labelbounds labelBounds�K 0 labeledbounds labeledBounds�J 0 topedge topEdge�I 0 
bottomedge 
bottomEdge�H  0 verticalcenter verticalCenter�G 0 unlabelbounds unlabelBounds�F (0 secondwindowbounds secondWindowBounds
�E 
kocl
�D 
insh
�C 
insl
�B 
prdt�A 
�@ .corecrel****      � null�X �� �*�k/ �*�-j k ������ 
OhY hO*�k/E�O)��,k+ E�O��,�a ,l!E` O))�k+ k+ E` O_ k�a ,FO_ k_ �,FO)�k+ ��,FO*a �a *�k/a 3a �)_ k+ la  UU �  � �  ��?�>�= �  �< ��;
�< 
docu � � � �  a p B d 5 Q 1 L A d C
�; kfrmID  
�? 
FCdw�>�
�= kfrmID   � �:�9 ��: 0 leftedge leftEdge�9  � �8�7 ��8 0 topedge topEdge�7  � �6�5 ��6 0 	rightedge 	rightEdge�5� � �4 ��3�4 0 
bottomedge 
bottomEdge � @|�     �3   � @|�      � �2�1 ��2 0 leftedge leftEdge�1  � �0 � ��0 0 topedge topEdge � @|�      � �/�. ��/ 0 	rightedge 	rightEdge�.� � �-�,�+�- 0 
bottomedge 
bottomEdge�,��+  ��  ��  ��  ��  ��   ascr  ��ޭ