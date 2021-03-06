Results
=======

For my final test I ran 3 populations in parallel, if I had known before-hand
how many computers I would be able to get working for me I probably would have
used a few more populations to provide a more reliable set of results.

These populations were left to run for around 62 hours, unfortunately the first
population encountered an error after about 10 hours and stopped creating new
generations.

There are a few statistics that can be gathered from the resulting populations.
The first is the average and best score from each generation, see `Figure 2`__.

FULLWIDTH

__
.. figure:: images/score-vs-gen
  :width: 90%

  Average and best scores against the generations.
  
Other statistics that could be interesting is the size of the best algorithm in
each generation, see `Figure 3`__.  This shows that the algorithms are getting
bigger and bigger.  One major upgrade would be allowing simplification to chose
between true and false branches when the conditional is a constant.

FULLWIDTH

__
.. figure:: images/size-vs-gen
  :width: 90%

  Algorithm size against the generation.

The final result from the populations were overall classification accuracies on
the full test set of around 30%.
