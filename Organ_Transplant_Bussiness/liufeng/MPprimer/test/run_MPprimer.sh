#!/bin/sh
python ../CreateMPprimerInput.py -i example_seq.txt -o example_seq.p3

echo "Change the product size range in example_seq.p3 file, see changed_example_seq.p3 for example."

python ../MPprimer.py -i changed_example_seq.p3 -o example_seq.mp
