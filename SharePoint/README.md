# SharePoint
## Product
- SharePoint is a web-based collaborative platform that integrates natively with Microsoft Office.
- Official Website: https://www.microsoft.com/en-us/microsoft-365/sharepoint/collaboration

## CVE
## CVE-2021-28474
- CVE: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-28474
- NVD: https://nvd.nist.gov/vuln/detail/CVE-2021-28474
- Microsoft SharePoint Server Remote Code Execution Vulnerability
- CVSS
    - 2.0: 6.5 MEDIUM
        - Vector: (AV:N/AC:L/Au:S/C:P/I:P/A:P)
    - 3.x: 8.8 HIGH
        - Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H
- 
    
### CVE-2022-22005
- CVE: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-22005
- NVD: https://nvd.nist.gov/vuln/detail/CVE-2022-22005
- ATTACKERKB: https://attackerkb.com/topics/pXtPuAGjCO/cve-2022-22005/vuln-details
- Microsoft SharePoint Server Remote Code Execution Vulnerability
- CVSS
    - 2.0: 6.5 MEDIUM
        - Vector: (AV:N/AC:L/Au:S/C:P/I:P/A:P)
    - 3.x: 8.8 HIGH
        - Vector: 3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H
- Artical
    - [CVE-2022-22005 Microsoft SharePoint RCE](https://hnd3884.github.io/posts/cve-2022-22005-microsoft-sharepoint-RCE/)
        - Essential
            - Programming Language: C#
            - HTTP Header

### CVE-2022-29108
- CVE: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-29108
- NVD: https://nvd.nist.gov/vuln/detail/CVE-2022-29108
- Microsoft SharePoint Server Remote Code Execution Vulnerability
- CVSS
    - 2.0: 6.5 MEDIUM
        - Vector: (AV:N/AC:L/Au:S/C:P/I:P/A:P)
    - 3.x: 8.8 HIGH
        - Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H

## Common Ground
- OS: Windows
- Target: SharePoint
- Access: Remote Code Execution (RCE)
- CVSS: Same score on 2.0 and 3.x .
- Hard to obtain prove of concepts.
    - The CVEs are indeed about a specific product which the company might not want to share too much vulnerbilities information with others. Pretty reasonable actually. 
    - There's also a possbility that SharePoint might not be the main concern of others. So no concen no interest, no interest no PoCs.
- Yay or Nay
    - pros
        - Not much PoCs so participants will have to do more research and try to produce one on their own.
        - edicational purpose
        - RCE
    - cons
        - Too focus on a product that others might not interest in.
        - Not enough PoCs will be a problem for participants.
        - The breach code seems to vary in CVEs.
            - Also a problem for participants.
