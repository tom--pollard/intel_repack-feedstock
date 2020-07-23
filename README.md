About intel_repack
==================

Home: https://software.intel.com/en-us/daal

Package license: LicenseRef-ProprietaryIntel

Feedstock license: BSD-3-Clause

Summary: DAAL runtime libraries

This package is a repackaged set of binaries obtained directly from Intel\'s website.

Current build status
====================


<table><tr>
    <td>Travis</td>
    <td>
      <a href="https://travis-ci.com/tom--pollard/intel_repack-feedstock">
        <img alt="macOS" src="https://img.shields.io/travis/com/tom--pollard/intel_repack-feedstock/master.svg?label=macOS">
      </a>
    </td>
  </tr>
  <tr>
    <td>Linux_ppc64le</td>
    <td>
      <img src="https://img.shields.io/badge/ppc64le-disabled-lightgrey.svg" alt="ppc64le disabled">
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-daal-green.svg)](https://anaconda.org/anaconda_channel_name/daal) | [![Conda Downloads](https://img.shields.io/conda/dn/anaconda_channel_name/daal.svg)](https://anaconda.org/anaconda_channel_name/daal) | [![Conda Version](https://img.shields.io/conda/vn/anaconda_channel_name/daal.svg)](https://anaconda.org/anaconda_channel_name/daal) | [![Conda Platforms](https://img.shields.io/conda/pn/anaconda_channel_name/daal.svg)](https://anaconda.org/anaconda_channel_name/daal) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-daal--devel-green.svg)](https://anaconda.org/anaconda_channel_name/daal-devel) | [![Conda Downloads](https://img.shields.io/conda/dn/anaconda_channel_name/daal-devel.svg)](https://anaconda.org/anaconda_channel_name/daal-devel) | [![Conda Version](https://img.shields.io/conda/vn/anaconda_channel_name/daal-devel.svg)](https://anaconda.org/anaconda_channel_name/daal-devel) | [![Conda Platforms](https://img.shields.io/conda/pn/anaconda_channel_name/daal-devel.svg)](https://anaconda.org/anaconda_channel_name/daal-devel) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-daal--include-green.svg)](https://anaconda.org/anaconda_channel_name/daal-include) | [![Conda Downloads](https://img.shields.io/conda/dn/anaconda_channel_name/daal-include.svg)](https://anaconda.org/anaconda_channel_name/daal-include) | [![Conda Version](https://img.shields.io/conda/vn/anaconda_channel_name/daal-include.svg)](https://anaconda.org/anaconda_channel_name/daal-include) | [![Conda Platforms](https://img.shields.io/conda/pn/anaconda_channel_name/daal-include.svg)](https://anaconda.org/anaconda_channel_name/daal-include) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-daal--static-green.svg)](https://anaconda.org/anaconda_channel_name/daal-static) | [![Conda Downloads](https://img.shields.io/conda/dn/anaconda_channel_name/daal-static.svg)](https://anaconda.org/anaconda_channel_name/daal-static) | [![Conda Version](https://img.shields.io/conda/vn/anaconda_channel_name/daal-static.svg)](https://anaconda.org/anaconda_channel_name/daal-static) | [![Conda Platforms](https://img.shields.io/conda/pn/anaconda_channel_name/daal-static.svg)](https://anaconda.org/anaconda_channel_name/daal-static) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-mkl-green.svg)](https://anaconda.org/anaconda_channel_name/mkl) | [![Conda Downloads](https://img.shields.io/conda/dn/anaconda_channel_name/mkl.svg)](https://anaconda.org/anaconda_channel_name/mkl) | [![Conda Version](https://img.shields.io/conda/vn/anaconda_channel_name/mkl.svg)](https://anaconda.org/anaconda_channel_name/mkl) | [![Conda Platforms](https://img.shields.io/conda/pn/anaconda_channel_name/mkl.svg)](https://anaconda.org/anaconda_channel_name/mkl) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-mkl--devel-green.svg)](https://anaconda.org/anaconda_channel_name/mkl-devel) | [![Conda Downloads](https://img.shields.io/conda/dn/anaconda_channel_name/mkl-devel.svg)](https://anaconda.org/anaconda_channel_name/mkl-devel) | [![Conda Version](https://img.shields.io/conda/vn/anaconda_channel_name/mkl-devel.svg)](https://anaconda.org/anaconda_channel_name/mkl-devel) | [![Conda Platforms](https://img.shields.io/conda/pn/anaconda_channel_name/mkl-devel.svg)](https://anaconda.org/anaconda_channel_name/mkl-devel) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-mkl--include-green.svg)](https://anaconda.org/anaconda_channel_name/mkl-include) | [![Conda Downloads](https://img.shields.io/conda/dn/anaconda_channel_name/mkl-include.svg)](https://anaconda.org/anaconda_channel_name/mkl-include) | [![Conda Version](https://img.shields.io/conda/vn/anaconda_channel_name/mkl-include.svg)](https://anaconda.org/anaconda_channel_name/mkl-include) | [![Conda Platforms](https://img.shields.io/conda/pn/anaconda_channel_name/mkl-include.svg)](https://anaconda.org/anaconda_channel_name/mkl-include) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-mkl--static-green.svg)](https://anaconda.org/anaconda_channel_name/mkl-static) | [![Conda Downloads](https://img.shields.io/conda/dn/anaconda_channel_name/mkl-static.svg)](https://anaconda.org/anaconda_channel_name/mkl-static) | [![Conda Version](https://img.shields.io/conda/vn/anaconda_channel_name/mkl-static.svg)](https://anaconda.org/anaconda_channel_name/mkl-static) | [![Conda Platforms](https://img.shields.io/conda/pn/anaconda_channel_name/mkl-static.svg)](https://anaconda.org/anaconda_channel_name/mkl-static) |

Installing intel_repack
=======================

Installing `intel_repack` from the `anaconda_channel_name` channel can be achieved by adding `anaconda_channel_name` to your channels with:

```
conda config --add channels anaconda_channel_name
```

Once the `anaconda_channel_name` channel has been enabled, `daal, daal-devel, daal-include, daal-static, mkl, mkl-devel, mkl-include, mkl-static` can be installed with:

```
conda install daal daal-devel daal-include daal-static mkl mkl-devel mkl-include mkl-static
```

It is possible to list all of the versions of `daal` available on your platform with:

```
conda search daal --channel anaconda_channel_name
```




Updating intel_repack-feedstock
===============================

If you would like to improve the intel_repack recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`anaconda_channel_name` channel, whereupon the built conda packages will be available for
everybody to install and use from the `anaconda_channel_name` channel.
Note that all branches in the tom--pollard/intel_repack-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://conda.io/docs/user-guide/tasks/build-packages/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://conda.io/docs/user-guide/tasks/build-packages/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@beckermr](https://github.com/beckermr/)
* [@isuruf](https://github.com/isuruf/)
* [@nowster](https://github.com/nowster/)

