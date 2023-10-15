#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY&+�� P��p1 ���?%ݎ����  �  `�FMP�R
�( 5&��j���54����M�!��8ɓF�Ѧ##C��4�� a�L�4�1�Ѧ �h0�2dѠ4i����0&�1#A� "Q)�y�<I�G�&�4h hhѠ"A@jeOhL�SzI�<Pzi��z��xM��B�!`�
D�=N)P9���ql(�NoDd@Bin$����sAslD4��Q��O7��4��l�ÓT�8���.��PI՜�@�Ȅ�	}6��r���w����� 
d�B�*�!��Mk�A��t����>�?Ň�Ş�F�	pk.����H�U�i=�eʾ���~q�(��36�����'���ɗPm���ξPs��Z�&���6Y!am�O�q���	q�q�)%CZ	�"��|>�\S��c7|��晫�S�ׅ]��:!��st0#�w�� ��s�����_��/�S�"�$I�%}	�f���@����q&$#�~p���V�*��t�� `�$Z��:����0"hgiפ��{1��~���Eր�&��R�z�d&�2�6�k�HI I�i����MdxﭥVC@KHm�Lی��9�ۜ�T%�U���GpX����fL���w�)l� 1���m��/9P���;���B]�(L��{W b6K��C��I(e
���D�e�X�(?'~&H�z����bK����!F�Q��Jć�!TR��� �,U؋&���OWV��,E2����\�d��Ptil�|�[�N��&R���JBΩ���(���EH�<�o}�~S �[g]���?c�ay��~Y�.�JH��u�$�,m��̻(G�J��z&ҁ8�A��p�hױ�)h��M�D�N��� H
����5|䔟�P:	�P/�f-�E�*)�d����;��kgz�ǔ��+g)�2�ee�S�|�>�0���j���0Ѫje��ЏPр^��J�$���"r?���mG�G��!�5 ���p�=�C��)p�H����t��0u��f#=�J�nHYc*J�*��E9�-�(������4���x��2[g�	A���8r���%z�	ꨋK�H�⎕*HU��bl%&slQ!�� �QHn�
�4W�˦eb�^��8�)e���W^5�ub�M�8%����1$��$�&o_J%Ւ.H�n_�N�;��Gg$xH��o�$5p��HưZ�9"�q|D�3�$#`�b��6-���-5�N�N���腨�_�vY�U�BFϾ���'~�A��(ՈڎLmكP�QK��a��S�U����#��@k�cИk�@by�O�xBf
MQ�>�:�E�ɰ� �o=Zv�@�c��mtW�.z��_&�)z�����hw����ZH�2�m�Ěj���!��4���a�sI:,P	2���p5������H�&�ZOv��c̄H��!�9
aș��pO�`4	/��$��"�ww�<�*ͥ��uM�]C3��!��(R`w�:�m���t����70� 7��W�oW�Jr ;zj;��!G�͙S���A`�:�m�c-dFL�	V£âR|�U�({����7$�+��*ǖ%g�cc�J`0�!�@X����BB)��#=6�H���� �D�:��s��6����	M�H@�eQ`��=��^2F�{[�8��p�ʽ0Z���7�J��Dr�.�\
q���q�Xp�ׯ��xm���d�ʸy���D�:E9�<R)è�Q�kh;��X���c���J.�p� LWk