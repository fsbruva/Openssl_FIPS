@echo off
REM Copyright (c) 2026 Matthew Kempe (@fsbruva)
REM SPDX-License-Identifier: Apache-2.0
REM Repository: https://github.com/fsbruva/Openssl_FIPS
echo:
echo *******************************************************************
echo ****                                                           ****
echo ****     Verifying OpenSSL and FIPS module configuration       ****
echo ****                                                           ****
echo *******************************************************************
echo:
call "%~dp0openssl.exe" version
echo:
call "%~dp0openssl.exe" list -providers
echo:
call "%~dp0openssl.exe" fipsinstall -in "fipsmodule.cnf" -module "lib\ossl-modules\fips.dll" -verify -self_test_onload
echo:

IF %ERRORLEVEL% EQU 0 (
echo **** You may now use the OpenSSL program.  ****
) ELSE (
echo !!!!   There was a problem with the configuration or program.         !!!!
echo !!!!   Please try again, or use Storefront to remove and reinstall.   !!!!
)
echo:
