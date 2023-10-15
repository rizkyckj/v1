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
BZh91AY&SY�Q_�  ���ER���/oޮ����    @��%��L���!���i4�46�CF�M���ODD�i�觔�H6�L�4  � @hM
� �       	"�54�4)�lS�I�?Tښz�D4z���i�m@4 :I�a˱�U�Ünت��Օ��J^�.����#i[��s�4$�sEk�-�])�^~�ܬ����� H��7=!:׬�Ko0�B��B(�)X8=���h���Ԑ���3ӹ��M��Mk"Ҩ\����WRTx­�q�fp1�I�CI�}�\)���\�S-�^NH���=�����
��ї7���9G4kĴ�{�莅V��~�C�%�f�Ҷ�E0����_\,lpb0"$0��%E���z����E�-�Ş!*�����um	�c��bF��:A���.�}z��'�B���)���;�b_d�q�����E���.E�SO�#HJc�3��V�
�A`�aH�sјqb�j�ܞ��4��}��r��w|����CI���@̃����fc�& ����O�b3��x�9����K֊�	�HL��n��AJ� i�?��|X���x���,͚�]D��k�����)H��9�@Jj�D� O�-���#�+7ѭb�ʇ$S�`j�:]
��.�&�4����2pW�I9>rS�@��R���Y��f�˅WZN�J��c�;05��/��R��4ە�~(�i�I"��L���+g
	p0��T�@UD2�g[��όa`e]��&YO1��I��[W��]��BB�E�