MPprimer-1.4

Welcome to use MPprimer for mulplex PCR primer design.
Any question or comments are welcome and please forward
to Chenggang Zhang <zhangcg@bmi.ac.cn> or Wubin Qu
<quwubin@gmail.com>.

1. What is the MPprimer?

  Please visit our web site "http://biocompute.bmi.ac.cn/MPprimer"
for details.

2. Why command line version of MPprimer?

  Yes, you can use MPprimer from our web service, but also
can use MPprimer with the command line version. Commpare to
the web serverce, the command line version of MPprimer is more
flexiable with the custom-build database (for specificity checking),
batch multiplex PCR primer design (no limitation on the number
of the template sequence) and more flexiable parameters can be
used, such as -l (for showing the number of PSC), etc.

3. What license the MPprimer used?
  
  The command line version of MPprimer is under the protection 
of GPL v3 license. You will find an copy of the license in the 
package.

4. How to install the command line version of MPprimer?

  Currently, command line version of MPprimer has been tested on the 
Ubuntu 8.10 system (Linux), but it also should run in any *Unix
systems.
  
  System requirement:
      Python: >= 2.5
      Perl: >= 5.0.0

  1) First, download the right command line version (32- or 64-computer) 
from our web site (See question 1).

  2) Second, untar the package to the current (or any other directory)
with the following command:

    $: tar -jxvf MPprimer-1.0-*.tar.bz2
    
  3) Move into the "test" directory included in the MPprimer direcotry:

    $: bash run_MPprimer.sh

  If there is no any error message print out, CONGRATULATIONS, it means 
that MPprimer has been installed successfully on your compuer and you can 
see the file "example_seq.mp" with vi or less (Unix command). Otherwise, 
please contact Wubin Qu <quwubin@gmail.com> for help.


**************************************************************************

  Wubin Qu <quwubin@gmail.com>
  Zhiyong Shen <szypanther@gmail.com>
  Chenggang Zhang <zhangcg@bmi.ac.cn>

  Please contact us with any questions, commens or suggestions.

  2009-10-23
