less primer.sort.fasta.fmt6 |awk '$3==100&&$5==0&&$6==0'|perl -lane 'unless(exists $h{$F[0]}){$h{$F[0]}="$F[1]\t$F[8]\t$F[9]";}END{foreach my $k(sort{$a cmp $b}keys %h){print "$k\t$h{$k}";}}' >newtmp
