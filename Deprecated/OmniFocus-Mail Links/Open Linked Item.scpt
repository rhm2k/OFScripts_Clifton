FasdUAS 1.101.10   ��   ��    k             l      �� ��   �� 

	Opens the item linked from the selected OmniFocus task, assuming the first line of the note field contains the link.

	by Curt Clifton

	Copyright � 2007, Curtis Clifton
	
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

       	  l     ������  ��   	  
  
 l    � ��  O     �    O    �    O    �    l   �    k    �       r        n        2   ��
�� 
OTst  1    ��
�� 
FCcn  o      ���� $0 theselecteditems theSelectedItems      Z    4  ����  l   !  ��   A    ! ! " ! l    #�� # I   �� $��
�� .corecnte****       **** $ o    ���� $0 theselecteditems theSelectedItems��  ��   " m     ���� ��    k   $ 0 % %  & ' & I  $ -�� ( )
�� .sysodisAaleR        TEXT ( m   $ % * * 0 *You must first select a project or action.    ) �� + ,
�� 
mesS + m   & ' - - H BSelect a project or action with a link before running this script.    , �� .��
�� 
as A . m   ( )��
�� EAlTwarN��   '  /�� / L   . 0����  ��  ��  ��     0 1 0 Z   5 O 2 3���� 2 l  5 < 4�� 4 ?   5 < 5 6 5 l  5 : 7�� 7 I  5 :�� 8��
�� .corecnte****       **** 8 o   5 6���� $0 theselecteditems theSelectedItems��  ��   6 m   : ;���� ��   3 k   ? K 9 9  : ; : I  ? H�� < =
�� .sysodisAaleR        TEXT < m   ? @ > > 1 +You must select just one project or action.    = �� ? @
�� 
mesS ? m   A B A A O ISelect a single project or action with a link before running this script.    @ �� B��
�� 
as A B m   C D��
�� EAlTwarN��   ;  C�� C L   I K����  ��  ��  ��   1  D E D r   P ^ F G F n   P Z H I H 1   V Z��
�� 
valL I n   P V J K J 4   Q V�� L
�� 
cobj L m   T U����  K o   P Q���� $0 theselecteditems theSelectedItems G o      ���� 0 selecteditem selectedItem E  M N M r   _ j O P O n   _ f Q R Q 1   b f��
�� 
FCno R o   _ b���� 0 selecteditem selectedItem P o      ���� 0 thenote theNote N  S�� S Z   k � T U���� T l  k � V�� V G   k � W X W =  k r Y Z Y o   k n���� 0 thenote theNote Z m   n q��
�� 
msng X H   u � [ [ l  u � \�� \ E   u � ] ^ ] n   u } _ ` _ 4  x }�� a
�� 
cpar a m   { |����  ` o   u x���� 0 thenote theNote ^ m   } � b b 	 ://   ��  ��   U k   � � c c  d e d I  � ��� f g
�� .sysodisAaleR        TEXT f m   � � h h C =This item does not appear to contain information for linking.    g �� i j
�� 
mesS i m   � � k k W QThe note of a linked item should begin with a URL (like http://� or message://�).    j �� l m
�� 
as A l m   � ���
�� EAlTwarN m �� n o
�� 
btns n J   � � p p  q�� q m   � � r r 
 Darn   ��   o �� s��
�� 
dflt s m   � ����� ��   e  t�� t L   � �����  ��  ��  ��  ��    / ) (first document window whose index is 1)     4    �� u
�� 
FCdw u m    ����   4   �� v
�� 
docu v m    ����   m      w w�null     ߀��   OmniFocus.appP�< 'g+������  D�r0�: �����D'�g+��~ X����R'��OFOC  alis    X  Mac Book Pro               �|��H+     OmniFocus.app                                                   *��j4^        ����  	                Applications    �|�9      �jz�         'Mac Book Pro:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c   B o o k   P r o  Applications/OmniFocus.app  / ��  ��     x y x l     ������  ��   y  z { z l  � � |�� | r   � � } ~ } n   � �  �  4  � ��� �
�� 
cpar � m   � �����  � o   � ����� 0 thenote theNote ~ o      ���� 0 
messageurl 
messageURL��   {  � � � l  � � ��� � O  � � � � � I  � ��� ���
�� .GURLGURLnull��� ��� TEXT � o   � ����� 0 
messageurl 
messageURL��   � m   � � � ��null     ߧ��  x
Finder.appU  0�0'g+������	  ��%Е0�����D'�g+��~ X����R'��MACS   alis    r  Mac Book Pro               �|��H+    x
Finder.app                                                       E����        ����  	                CoreServices    �|�9      ��'b      x  T  S  3Mac Book Pro:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c   B o o k   P r o  &System/Library/CoreServices/Finder.app  / ��  ��   �  ��� � l     ������  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  
 � �  z � �  �����  ��  ��   �   � " w������������ *�� -�������� > A�������������� b�� h k�� r������ ���
�� 
docu
�� 
FCdw
�� 
FCcn
�� 
OTst�� $0 theselecteditems theSelectedItems
�� .corecnte****       ****
�� 
mesS
�� 
as A
�� EAlTwarN�� 
�� .sysodisAaleR        TEXT
�� 
cobj
�� 
valL�� 0 selecteditem selectedItem
�� 
FCno�� 0 thenote theNote
�� 
msng
�� 
cpar
�� 
bool
�� 
btns
�� 
dflt�� �� 0 
messageurl 
messageURL
�� .GURLGURLnull��� ��� TEXT�� �� �*�k/ �*�k/ �*�,�-E�O�j k ������ OhY hO�j k ������ OhY hO�a k/a ,E` O_ a ,E` O_ a  
 _ a k/a a & #a �a ��a a kva ka  OhY hUUUO_ a k/E` Oa   	_ j !Uascr  ��ޭ