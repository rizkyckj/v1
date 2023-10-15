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
BZh91AY&SY͞Y)  ���y }���oޮ����B  P�)��k�&! ���T~��S���446�=5 �=4!�9�ё����42h��ɐ �h��# �Fj24�  6���M#C!�� �� ��I!���I�	���i�Q��� OPh  �.˦�2��ԎG����f,�șc�GJ�%0 :�Ս*r�̵]QU��B���/w/}?,��I&��!�\H2�a`�D`�ay�h~�&ts�kй�#e(]<�R�'a����'s}���J�7��y���+L͛oc��[����z�e�[6�ǢYdYs�ø��!̮�A�!�����"P�6�m��l�]:��y�܉���Vp�A##@�k�9̲6e��1��ᘊ���~L!����d)9�/R`:%��`C�k`V�r�ȣ�rP��6F�-ҥ�_M��t�>N[���O�T���Ͻ�v�?X8�;�EC�OЙg�|Ӡ���S��#C�3L�y/���P[�N�9���ʋ�������F�w���l�����G8p��s��(��H������=��MvV&_���5u48#H���VdD\��ˊ�W�9Kx�|p޵A�lH(��j�u�h �?8$��}�M���Ӳ��b�3����İcjN2�r̆s��� ��0	рd��`�b���!����3ع�<������iܝ/ k!�f�c�S9�sP&UM��>�CT�Hc�f����F��=}fh���#/���� �R|wX!s�G$�������	��lf����^��5kMQ�m
I�#"��/T���Dth9  �朵�S����J�A�+'����r���1:{��j[C���;�c���bH��mR�5nOF��p�N��Ka�D#eee��$\W@��k̯t�UYU��x"b2UpY{Ď�S�zI�Ŭ �Ĥ7����Nf2�Blh�%u��/���!��ܬ5�㦢�i|A-�i�2��95Yyߋ|�(QI@��8ډBNLa���P�D�*��Q��)��x��A!�!zP!b���H�
��% 