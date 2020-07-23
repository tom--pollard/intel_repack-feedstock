
:: 2 cores available on Appveyor workers: https://www.appveyor.com/docs/build-environment/#build-vm-configurations
:: CPU_COUNT is passed through conda build: https://github.com/conda/conda-build/pull/1149
set CPU_COUNT=2

set PYTHONUNBUFFERED=1

conda.exe config --set show_channel_urls true
conda.exe config --set auto_update_conda false
conda.exe config --set add_pip_as_python_dependency false

call setup_x64

:: Set the conda-build working directory to a smaller path
if "%CONDA_BLD_PATH%" == "" (
    set "CONDA_BLD_PATH=C:\\bld\\"
)

call conda activate base

if "%CI%" == "" (
    echo "Not running on CI"
) else (
    echo CI:    >> .ci_support\%CONFIG%.yaml
    echo - %CI% >> .ci_support\%CONFIG%.yaml
)

:: Remove some directories from PATH
set "PATH=%PATH:C:\ProgramData\Chocolatey\bin;=%"
set "PATH=%PATH:C:\Program Files (x86)\sbt\bin;=%"
set "PATH=%PATH:C:\Rust\.cargo\bin;=%"
set "PATH=%PATH:C:\Program Files\Git\usr\bin;=%"
set "PATH=%PATH:C:\Program Files\Git\cmd;=%"
set "PATH=%PATH:C:\Program Files\Git\mingw64\bin;=%"
set "PATH=%PATH:C:\Program Files (x86)\Subversion\bin;=%"
set "PATH=%PATH:C:\Program Files\CMake\bin;=%"
set "PATH=%PATH:C:\Program Files\OpenSSL\bin;=%"
set "PATH=%PATH:C:\Strawberry\c\bin;=%"
set "PATH=%PATH:C:\Strawberry\perl\bin;=%"
set "PATH=%PATH:C:\Strawberry\perl\site\bin;=%"
set "PATH=%PATH:c:\tools\php;=%"

:: On azure, there are libcrypto*.dll & libssl*.dll under
:: C:\Windows\System32, which should not be there (no vendor dlls in windows folder).
:: They would be found before the openssl libs of the conda environment, so we delete them.
if defined CI (
    DEL C:\Windows\System32\libcrypto-1_1-x64.dll || (Echo Ignoring failure to delete C:\Windows\System32\libcrypto-1_1-x64.dll)
    DEL C:\Windows\System32\libssl-1_1-x64.dll || (Echo Ignoring failure to delete C:\Windows\System32\libssl-1_1-x64.dll)
)

:: Make paths like C:\hostedtoolcache\windows\Ruby\2.5.7\x64\bin garbage
set "PATH=%PATH:ostedtoolcache=%"

type .ci_support\%CONFIG%.yaml

mkdir "%CONDA_PREFIX%\etc\conda\activate.d"

echo set "CONDA_BLD_PATH=%CONDA_BLD_PATH%"         > "%CONDA_PREFIX%\etc\conda\activate.d\conda-forge-ci-setup-activate.bat"
echo set "CPU_COUNT=%CPU_COUNT%"                  >> "%CONDA_PREFIX%\etc\conda\activate.d\conda-forge-ci-setup-activate.bat"
echo set "PYTHONUNBUFFERED=%PYTHONUNBUFFERED%"    >> "%CONDA_PREFIX%\etc\conda\activate.d\conda-forge-ci-setup-activate.bat"
echo set "PATH=%PATH%"                            >> "%CONDA_PREFIX%\etc\conda\activate.d\conda-forge-ci-setup-activate.bat"

conda.exe info
conda.exe config --show-sources
conda.exe list --show-channel-urls

# Install quetz-client here, as the generated `build_steps.sh`
# pip installs the vendored support package, as such adding quetz-client
# as a run depends in the meta recipe isn't suitable. `conda-smithy`
# could be modified to allow the vendored support package to be
# remotely installed as a standard conda package, or other means.
conda.exe install --yes --quiet -c conda-forge quetz-client

# Export dummy API key & localhost url. These should be real
# config options/tokens/secrets.
set QUETZ_API_KEY=E_KaBFstCKI9hTdPM7DQq56GglRHf2HW7tQtq6si370
set QUETZ_URL="http://localhost:8000/api/channels/"