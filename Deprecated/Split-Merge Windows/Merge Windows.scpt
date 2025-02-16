FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��
	Merge Windows

	This script merges the front two windows into one window.
	
	by Curt Clifton
	
	Copyright � 2007, Curtis Clifton
	
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
	
	Version History:
	
		0.1, initial release, 7/16/07

       	  l    � 
�� 
 O     �    O    �    k    �       Z    '  ����  l    ��  A        l    ��  I   �� ��
�� .corecnte****       ****  2   ��
�� 
FCdw��  ��    m    ���� ��    k    #       I    ��  
�� .sysodisAaleR        TEXT  m       ! Sorry, cannot merge windows     ��   
�� 
mesS  m     ! ! , &Two windows must be open to be joined.      �� "��
�� 
as A " m    ��
�� EAlTcriT��     #�� # L   ! #����  ��  ��  ��     $ % $ r   ( . & ' & 4   ( ,�� (
�� 
FCdw ( m   * +����  ' o      ����  0 originalwindow originalWindow %  ) * ) r   / 5 + , + 4   / 3�� -
�� 
FCdw - m   1 2����  , o      ���� 0 secondwindow secondWindow *  . / . r   6 @ 0 1 0 n  6 > 2 3 2 I   7 >�� 4���� 0 labelbounds labelBounds 4  5�� 5 n   7 : 6 7 6 1   8 :��
�� 
pbnd 7 o   7 8����  0 originalwindow originalWindow��  ��   3  f   6 7 1 o      ���� 0 owbounds owBounds /  8 9 8 r   A M : ; : n  A I < = < I   B I�� >���� 0 labelbounds labelBounds >  ?�� ? n   B E @ A @ 1   C E��
�� 
pbnd A o   B C���� 0 secondwindow secondWindow��  ��   =  f   A B ; o      ���� 0 swbounds swBounds 9  B C B Z   N � D E���� D l  N [ F�� F ?   N [ G H G n   N S I J I o   O S���� 0 topedge topEdge J o   N O���� 0 owbounds owBounds H n   S Z K L K o   V Z���� 0 topedge topEdge L o   S V���� 0 swbounds swBounds��   E k   ^ � M M  N O N l  ^ ^�� P��   P 5 / swap vars so highest window remains at the end    O  Q R Q r   ^ c S T S o   ^ _����  0 originalwindow originalWindow T o      ���� 0 temp   R  U V U r   d g W X W o   d e���� 0 secondwindow secondWindow X o      ����  0 originalwindow originalWindow V  Y Z Y r   h m [ \ [ o   h k���� 0 temp   \ o      ���� 0 secondwindow secondWindow Z  ] ^ ] r   n s _ ` _ o   n o���� 0 owbounds owBounds ` o      ���� 0 temp   ^  a b a r   t y c d c o   t w���� 0 swbounds swBounds d o      ���� 0 owbounds owBounds b  e�� e r   z � f g f o   z }���� 0 temp   g o      ���� 0 swbounds swBounds��  ��  ��   C  h i h r   � � j k j n   � � l m l o   � ����� 0 
bottomedge 
bottomEdge m o   � ����� 0 swbounds swBounds k n       n o n o   � ����� 0 
bottomedge 
bottomEdge o o   � ����� 0 owbounds owBounds i  p q p r   � � r s r n  � � t u t I   � ��� v���� 0 unlabelbounds unlabelBounds v  w�� w o   � ����� 0 owbounds owBounds��  ��   u  f   � � s n       x y x 1   � ���
�� 
pbnd y o   � �����  0 originalwindow originalWindow q  z�� z I  � ��� {��
�� .coreclosnull���    obj  { o   � ����� 0 secondwindow secondWindow��  ��    4   �� |
�� 
docu | m    ����   m      } }�null     ߀��   OmniFocus.app���`��- ���0���     |�   )       �*(��Y����P }OFOC  alis    X  Macintosh HD               �t�=H+     OmniFocus.app                                                   n,��Y�        ����  	                Applications    �u#�      ��4         'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��   	  ~  ~ l     ������  ��     � � � i      � � � I      �� ����� 0 labelbounds labelBounds �  ��� � o      ���� 0 windowbounds windowBounds��  ��   � L      � � K      � � �� � ��� 0 leftedge leftEdge � n     � � � 4    �� �
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
bottomEdge � o    ���� 0 labeledbounds labeledBounds��  ��       �� � � � ���   � �������� 0 labelbounds labelBounds�� 0 unlabelbounds unlabelBounds
�� .aevtoappnull  �   � **** � �� ����� � ����� 0 labelbounds labelBounds�� �� ���  �  ���� 0 windowbounds windowBounds��   � ���� 0 windowbounds windowBounds � ������������~�� 0 leftedge leftEdge
�� 
cobj�� 0 topedge topEdge�� 0 	rightedge 	rightEdge�� 0 
bottomedge 
bottomEdge� �~ �� ��k/E��l/E��m/E���/E� � �} ��|�{ � ��z�} 0 unlabelbounds unlabelBounds�| �y ��y  �  �x�x 0 labeledbounds labeledBounds�{   � �w�w 0 labeledbounds labeledBounds � �v�u�t�s�r�v 0 leftedge leftEdge�u 0 topedge topEdge�t 0 	rightedge 	rightEdge�s 0 
bottomedge 
bottomEdge�r �z ��,E��,E��,E��,E�v � �q ��p�o � ��n
�q .aevtoappnull  �   � **** � k     � � �  �m�m  �p  �o   �   �  }�l�k�j �i !�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z
�l 
docu
�k 
FCdw
�j .corecnte****       ****
�i 
mesS
�h 
as A
�g EAlTcriT�f 
�e .sysodisAaleR        TEXT�d  0 originalwindow originalWindow�c 0 secondwindow secondWindow
�b 
pbnd�a 0 labelbounds labelBounds�` 0 owbounds owBounds�_ 0 swbounds swBounds�^ 0 topedge topEdge�] 0 temp  �\ 0 
bottomedge 
bottomEdge�[ 0 unlabelbounds unlabelBounds
�Z .coreclosnull���    obj �n �� �*�k/ �*�-j l ������ 
OhY hO*�k/E�O*�l/E�O)��,k+ E�O)��,k+ E` O�a ,_ a , (�E` O�E�O_ E�O�E` O_ E�O_ E` Y hO_ a ,�a ,FO)�k+ ��,FO�j UU ascr  ��ޭ