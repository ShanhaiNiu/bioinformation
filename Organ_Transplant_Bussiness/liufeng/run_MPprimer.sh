#!/bin/sh
#python ./CreateMPprimerInput.py -i demo.fas -o demo_seq.p3

echo "Change the product size range in example_seq.p3 file, see changed_example_seq.p3 for example."

python ./MPprimer/MPprimer.py -i demo2_seq.p3 -o demo_seq.mp
