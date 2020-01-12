# conda-beagle

[![Docker Repository on Quay](https://quay.io/repository/matsengrp/conda-beagle/status "Docker Repository on Quay")](https://quay.io/repository/matsengrp/conda-beagle)

Dockerfile for a Docker image containing conda and the BEAGLE phylogenetic likelihood library.

**Note that this is not meant to be a general-purpose image for BEAGLE.**
It will always have the version suitable for the master branch of <https://github.com/phylovi/libsbn>, which may or may not be suitable for your work.

If you use BEAGLE, please cite:

* Ji, X., Zhang, Z., Holbrook, A., Nishimura, A., Baele, G., Rambaut, A., … Suchard, M. A. (2019). Gradients do grow on trees: a linear-time O(N)-dimensional gradient for statistical phylogenetics. Retrieved from http://arxiv.org/abs/1905.12146
* Ayres, D. L., Cummings, M. P., Baele, G., Darling, A. E., Lewis, P. O., Swofford, D. L., … Suchard, M. A. (2019). BEAGLE 3: Improved Performance, Scaling, and Usability for a High-Performance Computing Library for Statistical Phylogenetics. Systematic Biology. https://doi.org/10.1093/sysbio/syz020
* Ayres, D. L., Darling, A., Zwickl, D. J., Beerli, P., Holder, M. T., Lewis, P. O., … Suchard, M. A. (2012). BEAGLE: an application programming interface and high-performance computing library for statistical phylogenetics. Systematic Biology, 61(1), 170–173. https://doi.org/10.1093/sysbio/syr100
