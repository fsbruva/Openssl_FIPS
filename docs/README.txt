========================================================================
OpenSSL FIPS Documentation
========================================================================

This directory contains technical documentation and build provenance
for this OpenSSL FIPS installation.

FILES
=====

source-verification.txt
  Detailed source code verification logs with SHA256 hashes

BUILD_PROVENANCE.txt
  Complete SLSA build provenance (human-readable)

BUILD_PROVENANCE.json
  Complete SLSA build provenance (machine-readable)

CRYPTOGRAPHIC_ATTESTATION.txt
  FIPS 140-3 compliance attestation statement

OPENSSL_LICENSE.txt
  Full Apache 2.0 license text for OpenSSL

VERIFICATION
============

To verify this build's authenticity:

  gh attestation verify <msi-file> -R fsbruva/openssl-fips-windows-installer

For more information:
  https://github.com/fsbruva/openssl-fips-windows-installer

========================================================================