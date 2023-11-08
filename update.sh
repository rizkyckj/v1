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
BZh91AY&SY���\  ���DX���/nޮ����    @��m۝�)��z��Lz��#�4`�i�M�P�4`  &������4��  4�hOD�S�F�i�i��CA��ڙ4�h6��H�M&"O�M�$z�jd�A�4��!�zjh1�c��&S��{+ۏ��bv�0�ng#J�~,�s<ѠP���;(a���.k��}ҵ@���.L�.׍=@��2D��u�>��"
���:�ktH�0-�`k�m��H ���������v�-?Qh&�㱪��j�I7�de�6y�\P�����>2k�8w�@�5s\���2�9#á�#Yh2 J`�� 6�Ƿ���+U�
�"��T�2�|��mGh��D�gj�fܰ�4hB��nx���ĢHHa($�� mT6�e��j)0�x��� �uf�f�٨'>��aF�sA������a��-�i���<��W�V2C8�¹���Ǟ�1�����ʧM*�^�N1�]$<1H�ٌW�|ه���Qk�����GG�O)��=��,�Ri8��U������B�SS��*�H��p�Q�c-���^��$RB9B�}w��E0"@i�7d�9_��d���P�)�Y4Ԑ�VI�lxp���*NM�!"A���Z�*�A(�bf���S`A,9jb�eQ��*0�ow~:k6���m�e��z��$ �XQ%a�ә�`4Y��#�apfHb���X�1��8�[V�'��� ��"�qyOD��pp� ���WC��&�RT+���F[db�s��K�$��HI^_�w$S�		^�5�