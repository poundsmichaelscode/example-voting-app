# Container Security Assessment

Date: 2026-10-26

## Summary

Application dependency vulnerabilities were remediated.
Outstanding operating-system findings require further assessment.

## Vote image

### debian

- HIGH findings: 48
- CRITICAL findings: 0
- Unique CVEs: 10

| CVE | Severity | Affected packages |
|---|---|---|
| CVE-2025-69720 | HIGH | libncursesw6, libtinfo6, ncurses-base, ncurses-bin |
| CVE-2026-12064 | HIGH | curl, libcurl4t64 |
| CVE-2026-16742 | HIGH | libsystemd0, libudev1 |
| CVE-2026-54369 | HIGH | libacl1 |
| CVE-2026-76642 | HIGH | bsdutils, libblkid1, liblastlog2-2, libmount1, libsmartcols1, libuuid1, login, mount, util-linux |
| CVE-2026-78408 | HIGH | bsdutils, libblkid1, liblastlog2-2, libmount1, libsmartcols1, libuuid1, login, mount, util-linux |
| CVE-2026-78409 | HIGH | bsdutils, libblkid1, liblastlog2-2, libmount1, libsmartcols1, libuuid1, login, mount, util-linux |
| CVE-2026-78410 | HIGH | bsdutils, libblkid1, liblastlog2-2, libmount1, libsmartcols1, libuuid1, login, mount, util-linux |
| CVE-2026-8458 | HIGH | curl, libcurl4t64 |
| CVE-2026-9538 | HIGH | perl-base |

### python-pkg

- HIGH findings: 0
- CRITICAL findings: 0
- Unique CVEs: 0

## Results image

### debian

- HIGH findings: 43
- CRITICAL findings: 0
- Unique CVEs: 8

| CVE | Severity | Affected packages |
|---|---|---|
| CVE-2025-69720 | HIGH | libtinfo6, ncurses-base, ncurses-bin |
| CVE-2026-16742 | HIGH | libsystemd0, libudev1 |
| CVE-2026-54369 | HIGH | libacl1 |
| CVE-2026-76642 | HIGH | bsdutils, libblkid1, liblastlog2-2, libmount1, libsmartcols1, libuuid1, login, mount, util-linux |
| CVE-2026-78408 | HIGH | bsdutils, libblkid1, liblastlog2-2, libmount1, libsmartcols1, libuuid1, login, mount, util-linux |
| CVE-2026-78409 | HIGH | bsdutils, libblkid1, liblastlog2-2, libmount1, libsmartcols1, libuuid1, login, mount, util-linux |
| CVE-2026-78410 | HIGH | bsdutils, libblkid1, liblastlog2-2, libmount1, libsmartcols1, libuuid1, login, mount, util-linux |
| CVE-2026-9538 | HIGH | perl-base |

### node-pkg

- HIGH findings: 0
- CRITICAL findings: 0
- Unique CVEs: 0

## Outstanding actions

- Verify exploitability and relevance of each OS CVE.
- Check Debian security advisories for vendor fixes.
- Update and rescan base images regularly.
- Record any accepted risks with justification and approval.
- Avoid exposing development containers directly to the internet.
