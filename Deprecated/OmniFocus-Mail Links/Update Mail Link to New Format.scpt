FasdUAS 1.101.10   ��   ��    k             l      �� ��   xr 

	Updates Mail link back notes to use MailTags's message://� URLs. 

	by Curt Clifton

	Copyright � 2007, Curtis Clifton
	
	All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
	
		� Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
		
		� Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
		
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

       	  l     ������  ��   	  
  
 l   $ ��  O    $    O   #    O   "    k   !       r        n        2   ��
�� 
OTst  1    ��
�� 
FCcn  o      ���� $0 theselecteditems theSelectedItems      Z    4  ����  l   ! ��  A    !     l    !�� ! I   �� "��
�� .corecnte****       **** " o    ���� $0 theselecteditems theSelectedItems��  ��     m     ���� ��    k   $ 0 # #  $ % $ I  $ -�� & '
�� .sysodisAaleR        TEXT & m   $ % ( ( 0 *You must first select a project or action.    ' �� ) *
�� 
mesS ) m   & ' + + Y SSelect a project or action that links to a mail message before running this script.    * �� ,��
�� 
as A , m   ( )��
�� EAlTwarN��   %  -�� - L   . 0����  ��  ��  ��     . / . Z   5 O 0 1���� 0 l  5 < 2�� 2 ?   5 < 3 4 3 l  5 : 5�� 5 I  5 :�� 6��
�� .corecnte****       **** 6 o   5 6���� $0 theselecteditems theSelectedItems��  ��   4 m   : ;���� ��   1 k   ? K 7 7  8 9 8 I  ? H�� : ;
�� .sysodisAaleR        TEXT : m   ? @ < < 1 +You must select just one project or action.    ; �� = >
�� 
mesS = m   A B ? ? ` ZSelect a single project or action that links to a mail message before running this script.    > �� @��
�� 
as A @ m   C D��
�� EAlTwarN��   9  A�� A L   I K����  ��  ��  ��   /  B C B r   P ^ D E D n   P Z F G F 1   V Z��
�� 
valL G n   P V H I H 4   Q V�� J
�� 
cobj J m   T U����  I o   P Q���� $0 theselecteditems theSelectedItems E o      ���� 0 selecteditem selectedItem C  K L K r   _ j M N M n   _ f O P O 1   b f��
�� 
FCno P o   _ b���� 0 selecteditem selectedItem N o      ���� 0 thenote theNote L  Q R Q Z   k � S T���� S l  k x U�� U A   k x V W V l  k v X�� X I  k v�� Y��
�� .corecnte****       **** Y n   k r Z [ Z 2  n r��
�� 
cpar [ o   k n���� 0 thenote theNote��  ��   W m   v w���� ��   T k   { � \ \  ] ^ ] I  { ��� _ `
�� .sysodisAaleR        TEXT _ m   { ~ a a U OThis item does not appear to contain information for linking to a mail message.    ` �� b c
�� 
mesS b m    � d d O IThe note of a linked item should contain the mailbox name and message ID.    c �� e f
�� 
as A e m   � ���
�� EAlTwarN f �� g h
�� 
btns g J   � � i i  j�� j m   � � k k 
 Darn   ��   h �� l��
�� 
dflt l m   � ����� ��   ^  m�� m L   � �����  ��  ��  ��   R  n o n r   � � p q p n   � � r s r 4  � ��� t
�� 
cpar t m   � �����  s o   � ����� 0 thenote theNote q o      ����  0 themailboxname theMailboxName o  u v u r   � � w x w n   � � y z y 4  � ��� {
�� 
cpar { m   � �����  z o   � ����� 0 thenote theNote x o      ���� 0 themessageid theMessageID v  | } | r   � � ~  ~ n   � � � � � 7 � ��� � �
�� 
cpar � m   � �����  � m   � ������� � o   � ����� 0 thenote theNote  o      ���� *0 remainingparagraphs remainingParagraphs }  � � � l  � �������  ��   �  � � � r   � � � � � b   � � � � � m   � � � �  
message://    � o   � ����� 0 themessageid theMessageID � o      ���� 0 
messageurl 
messageURL �  � � � r   � � � � � b   � � � � � J   � � � �  ��� � o   � ����� 0 
messageurl 
messageURL��   � o   � ����� *0 remainingparagraphs remainingParagraphs � o      ���� 0 allparagraphs allParagraphs �  � � � r   � � � � � n  � � � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr � o      ���� 0 olddelim oldDelim �  � � � r   � � � � � o   � ���
�� 
ret  � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr �  � � � r   �	 � � � c   � � � � o   ����� 0 allparagraphs allParagraphs � m  ��
�� 
ctxt � o      ���� 0 newnote newNote �  � � � r  
 � � � o  
���� 0 olddelim oldDelim � n      � � � 1  ��
�� 
txdl � 1  ��
�� 
ascr �  � � � l ������  ��   �  ��� � r  ! � � � o  ���� 0 newnote newNote � n       � � � 1   ��
�� 
FCno � o  ���� 0 selecteditem selectedItem��    4    �� �
�� 
FCdw � m    ����   4   �� �
�� 
docu � m    ����   m      � ��null     ߀��   OmniFocus.app���`��- ���0���    |    )       �R(��Y����P}OFOC  alis    X  Macintosh HD               �t�=H+     OmniFocus.app                                                   m���p��        ����  	                Applications    �u#�      �q         'Macintosh HD:Applications:OmniFocus.app     O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��     � � � l     ������  ��   �  ��� � l     ������  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k    $ � �  
����  ��  ��   �   � ( ������������� (�� +��~�}�| < ?�{�z�y�x�w�v a d�u k�t�s�r�q�p ��o�n�m�l�k�j�i�h
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
� 
as A
�~ EAlTwarN�} 
�| .sysodisAaleR        TEXT
�{ 
cobj
�z 
valL�y 0 selecteditem selectedItem
�x 
FCno�w 0 thenote theNote
�v 
cpar
�u 
btns
�t 
dflt�s �r  0 themailboxname theMailboxName�q 0 themessageid theMessageID�p *0 remainingparagraphs remainingParagraphs�o 0 
messageurl 
messageURL�n 0 allparagraphs allParagraphs
�m 
ascr
�l 
txdl�k 0 olddelim oldDelim
�j 
ret 
�i 
ctxt�h 0 newnote newNote��%�!*�k/*�k/*�,�-E�O�j k ������ OhY hO�j k ������ OhY hO�a k/a ,E` O_ a ,E` O_ a -j l #a �a ��a a kva ka  OhY hO_ a k/E` O_ a l/E` O_ [a \[Zm\Zi2E` Oa _ %E`  O_  kv_ %E` !O_ "a #,E` $O_ %_ "a #,FO_ !a &&E` 'O_ $_ "a #,FO_ '_ a ,FUUU ascr  ��ޭ