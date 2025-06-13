<img src="media/image1.jpg" style="width:2.03125in;height:1.52083in"
alt="BDlogo" />

**MANAGEMENT SUMMARY**

**of**

**Combined System Development Services for**

**Self-Certification System**

**of the Buildings Department**

**Version 1.0**

**Dec 2022**

© The Government of the Hong Kong Special Administrative Region

The contents of this document remain the property of and may not be
reproduced in whole or in part without the express permission of the
HKSAR

<table>
<colgroup>
<col style="width: 22%" />
<col style="width: 77%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="2"><blockquote>
<p><strong>Distribution</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Copy No.</p>
</blockquote></td>
<td>Holder</td>
</tr>
<tr class="even">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>Buildings Department (BD)</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>Master Concept (Hong Kong) Limited</p>
</blockquote></td>
</tr>
</tbody>
</table>

|                       |                      |                                        |                           |              |                    |
|----------|------------------|-----------|--------------|-----------|----------|
| **Amendment History** |                      |                                        |                           |              |                    |
| Change Number         | Revision Description | Section Affected on Respective Version | Revision / Version Number | Date         | Approval Reference |
| 1                     | Initial version      | N/A                                    | 0.1                       | 18.11.2022   |                    |
| 2                     | First Release        | N/A                                    | 1.0                       |  21.12.12022 |                    |
|                       |                      |                                        |                           |              |                    |
|                       |                      |                                        |                           |              |                    |
|                       |                      |                                        |                           |              |                    |
|                       |                      |                                        |                           |              |                    |
|                       |                      |                                        |                           |              |                    |
|                       |                      |                                        |                           |              |                    |
|                       |                      |                                        |                           |              |                    |
|                       |                      |                                        |                           |              |                    |
|                       |                      |                                        |                           |              |                    |
|                       |                      |                                        |                           |              |                    |
|                       |                      |                                        |                           |              |                    |

**TABLE OF CONTENT**

**[1. MANAGEMENT SUMMARY](#management-summary)
[2](#management-summary)**

> **[1.1. APPROVAL SOUGHT](#approval-sought) [2](#approval-sought)**
>
> **[1.2. SYSTEM OBJECTIVES](#system-objectives)
> [2](#system-objectives)**
>
> **[1.3. BACKGROUND](#background) [4](#background)**
>
> [1.3.1 CURRENT SYSTEM DESCRIPTION](#current-system-description)
> [4](#current-system-description)
>
> **[1.4. PROPOSED SYSTEM](#proposed-system) [5](#proposed-system)**
>
> [1.4.1. SYSTEM OVERVIEW](#system-overview) [5](#system-overview)
>
> [1.4.2. SYSTEM FUNCTION](#system-function) [6](#system-function)
>
> [1.4.3. TECHNICAL SYSTEM ARCHITECTURE](#technical-system-architecture)
> [12](#technical-system-architecture)
>
> **[1.5. RESOURCE IMPLICATIONS](#resource-implications)
> [15](#resource-implications)**
>
> **[1.6. COSTS AND BENEFITS](#costs-and-benefits)
> [16](#costs-and-benefits)**
>
> [1.6.1. COSTS](#costs) [16](#costs)
>
> [1.6.2. BENEFITS](#benefits) [18](#benefits)
>
> **[1.7. IMPLEMENTATION PLAN](#implementation-plan)
> [19](#implementation-plan)**

# MANAGEMENT SUMMARY

## APPROVAL SOUGHT

The Management Summary aims to provide a summary of the System Analysis
& Design report (SA&D) for the Project of Self-Certification System
(SCS). It serves to seek approval for the acceptance of the
recommendations identified in this SA&D Report so as to proceed to the
next stage of the project, i.e. System Implementation & Integration
(SI&I).

## SYSTEM OBJECTIVES

The main objectives of the system are to design and develop the
Self-Certification System (SCS) to:

1.  certifying the compliance of building safety requirements to the
    licensing authority (LA)/BD. The proposed system for SCS will need
    to support the above workflow and has the following functions:

    1.  handle new applications for EP and CCC registration and issue
        certificates and notice;

    2.  handle alteration applications of registered EP and CCC referred
        from the LA;

    3.  record inspection results of the applications;

    4.  handle the AP/RSE Certification Submissions;

    5.  search and capture the building and structural safety
        requirements imposed and records of certificates and notices
        issued for the applications;

    6.  provide an audit system for verification of full compliance of
        building and structural safety requirements certified under the
        applications and handle the selected audit cases;

    7.  provide a centralised data repository of the application
        supporting documents submitted by the applicants, in which
        information of pre-accepted proprietary temporary structures or
        standard design of temporary structures can be accessible to the
        licensing authority;

    8.  establish and implement system interface and data exchange
        mechanism with Building Condition Information System (BCIS) of
        BD for compiling of management statistics and reports of the
        applications;

2.  to investigate and understand the operation of the existing
    operation;

3.  to enable the e-submission process in fulfilling and undertaking the
    building safety requirements by building professionals (AP/RSE
    Certification Submissions) under the SCS for various licensing
    regimes which includes EP and CCC;

4.  to build-in an auditing tool for the AP/RSE Certification
    Submissions to verify the compliance of building safety requirements
    imposed in the applications and monitor the performance of building
    professionals;

5.  to develop a data repository of the pre-acceptance system for
    reusable temporary structures for a TPPEL;

6.  to collect and implement new user requirements and enhancements;

7.  to develop new functions, features, webpages and update system
    interfaces as identified during the User Requirement Collection
    session of SA&D;

8.  to enable “iAM Smart” as an alternative channel to login SCS;

9.  to handover SCS and provide training to the internal users of BD and
    other relevant government departments and AP/RSE;

10. to carry out SA&D and implement the findings and recommendations of
    the SA&D of the system (including, but not limited to, the
    requirements as specified by BD during SA&D and SI&I);

11. to co-ordinate and take the lead to monitor the installation,
    configuration, functional test and reliability test of delivered
    hardware, software, vendor services, Government Cloud Infrastructure
    Services (GCIS) services and Internet Mail Exchange (IMX) service
    provides SMTP Connection Service (SMTPX);

12. to identify the web pages or web elements in SCS that require
    necessary amendments for conformance with Web Content Accessibility
    Guidelines (WCAG) 2.1 Level AA Standard and the relevant guidelines
    for mobile friendly design as listed in Section 6 of this work
    assignment for details;

13. to make necessary amendments on the web pages or web elements
    identified in item n above, according to the guidelines specified in
    WCAG 2.1 Level AA Standard and the relevant guidelines for mobile
    friendly design;

14. to provide support to User acceptance testing (UAT);

15. to carry out the physical system design, develop programs, test and
    install the production system and disaster recovery (DR) system and
    proceed to live implementation;

16. to specify and prepare relevant documents for the procurement of
    software, hardware, hosting services and related facilities /
    services for the implementation of the new system if applicable;

17. to work with an independent auditor to carry out their Security Risk
    Assessment and Audit (SRAA) and follow up the issues and implement
    the recommendations mentioned in the Security Risk Assessment
    Report; and

18. to work with an independent auditor to carry out their Privacy
    Impact Assessment (PIA) and Privacy Compliance Audit (PCA) exercise
    and implement the recommendations from PIA and PCA Reports.

19. At the end of the SA&D and SI&I services, the proposed system
    (including hardware, software, hosting and procedures documentation)
    should be ready for use by BD.

The main objectives of SM&S are:

1.  to support the users, maintain SCS and ensure reliable and
    satisfactory operations to meet the service level requirements and
    fulfil the security compliance;

2.  to carry out minor enhancements;

3.  c\. to initiate meeting to collect user requirements on
    implementation of new enhancements and requests;

4.  to maintain the system to the pre-defined service levels stated in
    the system maintenance plan and carry out performance tuning if
    needed;

5.  to troubleshoot any anomaly observed in the system and provide
    remediation;

6.  to maintain and update the system documentation to reflect the
    latest production system;

7.  to continuously update/upgrade SCS with the latest patches and
    security updates of software (e.g. RDBMS, OS etc.), hardware and
    appliance;

8.  to perform ad-hoc and periodic updates on the contents;

9.  to maintain and update the system documentation to reflect the
    latest production system;

10. to take lead, manage and work with all service providers and other
    vendors to assure the system meeting the service level requirement;

11. to conduct regular user training sessions at BD premises; and

12. to provide all kinds of assistance in relation to the maintenance
    and support of the live running of SCS.

## BACKGROUND

The proposed project aims at developing the system for SCS for various
licensing regimes which includes the registration of non-purpose built
educational premises (EP) and child care centre (CCC), etc., and the
pre-acceptance system of the reusable temporary structures for a
temporary places of public entertainment licence (TPPEL) which have been
included in the Action Plan 2019-20 under the "Be the Smart Regulator"
Programme launched by the Efficiency Office to support Government’s
commitment to enhance Hong Kong’s overall business licensing
environment. Hence this supports the “licence/registration applications
processed” under Head 82 Buildings Department in the Controlling
Officer’s Report.

### CURRENT SYSTEM DESCRIPTION

Being one of the skeleton government departments in different types of
licensing regimes in Hong Kong, Buildings Department (BD) is responsible
to provide expert advice on building and structural safety matters for
issuance of license. In addition to formulate building safety
requirements to the LA for incorporating into the Letter of Requirement
(LoR) for obtaining a license, BD is required to undertake the full
compliance checks which involve both document checks and site checks for
various licensing regimes such as Educational Premises (EP), Child Care
Centre (CCC), Places of Amusement (PA), and amusement game centre (AGC).

**Registration for non-purpose built educational premises and child care
centre**

Regarding the licensing regime for EP, at present, an application for
registration of EP in premises not designed and constructed for the
purposes of a school should be accompanied by three certificates issued
by the Director of Buildings (DB) under section 12(1)(a), (b) and (ca)
of the Education Ordinance (Cap. 279) (EO) and a notice issued by the
Building Authority (BA) under section 12(1)(d) of the same Ordinance.
Similarly, an application for registration of CCC should be accompanied
by certificates issued by the DB under section 7(1)(b) of the Child Care
Services Ordinance (Cap. 243) (CCSO).

> In applying for the requisite certificates and notice for EP
> registration, applicants have to submit the application form together
> with 4 copies of premises layout plans showing the layout of the
> premises directly to BD for processing. Upon receipt of the
> applications, BD will, based on the proposed layout plan, conduct
> desktop study and site inspection to ascertain the suitability of the
> premises for use as EP. If the premises are found suitable from
> building safety perspective, the requisite certificates and notice
> will be issued to the applicant. Otherwise, a LoR listing out all the
> building safety requirements will be issued to the applicant and
> copied to the Education Bureau (EDB) for their rectification. Upon
> receipt of notification from the applicant for the completion of
> building safety requirements, BD will carry out compliance checks.
> When all the imposed building safety requirements are complied with,
> BD will endorse 4 sets of plans and issue the requisite certificates
> and notice, to the applicant.
>
> Regarding applications for CCC registration, BD will process the
> referrals from the Social Welfare Department (SWD) similar to those
> for EP registration, except BD will provide input to SWD direct for
> incorporation into the LoR.

In addition, applicants may carry out alteration work in registered EP
and CCC to cope with their operational needs, 4 sets of the alteration
plans will be submitted to the LA for seeking BD’s comments as
necessary. In general, BD will process the referrals similar to new
registration applications.

> **Temporary Places of Public Entertainment License (TPPEL)**

Also, BD is responsible to offer building safety comments to FEHD in
respect of a TPPEL application. In support of each application, the
applicant is required to submit the proposed layout plans, information
of proprietary temporary structures or standard design of temporary
structures, structural justifications (only required when certain
dimensional requirements have exceeded), etc. for BD's comment
regardless of whether or not such temporary structures have been used in
the same location under different applications. According to the past
experience, same proprietary temporary structures or standard design of
temporary structures often reuse for different events in the same
locations. All supporting documents are also kept in the case paper
files.

## PROPOSED SYSTEM

The proposed Self-Certification System (SCS) allows Buildings Department
(BD) users to receive, process and manage the application for
certificates and notice required under Education Ordinance (Cap.279) and
Child Care Services Ordinance (Cap. 243) for the registration of
non-purpose built Educational Premises (EP) and Child Care Centre (CCC)
and to provide building safety comment to Education Bureau upon
applications for conducting courses of non-local higher and professional
education under NLHPE(R) Rules (Cap.493B) respectively in an effective
and efficient manner.

The system also allows applicant/Authorized Person (AP)/Registered
Structure Engineer (RSE) or users in Social Welfare Department (SWD) and
Education Bureau (EDB\*) to submit application forms and electronic
documents to BD through internet/intranet in order to speed up the
registration process.

Furthermore, the system is a single repository to store all applications
and supporting documents that can facilitate BD users to find documents
easily.

\* Including Joint Office for Kindergartens and Child Care Centres
(JOKCCC) of Education Bureau

### SYSTEM OVERVIEW

The SCS would interact with other systems from BD and external third
parties as illustrated below:

<img src="media/image5.png" style="width:6.625in;height:7.26528in" />

### SYSTEM FUNCTION

The proposed system will cover the following major function areas:

<table>
<colgroup>
<col style="width: 29%" />
<col style="width: 70%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Business Function</td>
<td>Description</td>
</tr>
<tr class="even">
<td><p>Application for Certificates and Notice / Alteration for EP</p>
<p>(e-application)</p></td>
<td>The process is to allow applicant to apply e-certificates/ e-notice
for EP through internet in which application/AP/RSE can submit digital
signed documents to BD and BD to issue digital signed documents to
EDB/Applicant/AP/RSE.</td>
</tr>
<tr class="odd">
<td><p>Application for Certificates and Notice / Alteration for EP</p>
<p>(paper application)</p></td>
<td>The process is to allow applicant to apply certificates/ notice for
EP by post.</td>
</tr>
<tr class="even">
<td><p>Application for Certificates / Alteration for CCC</p>
<p>(e-application)</p></td>
<td>The process is to allow applicant/SWD/EDB(JOKCCC) to apply
–e-certificates for CCC through internet/intranet in which
application/AP/RSE can submit digital signed documents to BD and BD to
issue digital signed document to SWD/EDB(JOKCCC)/Applicant/AP/RSE.</td>
</tr>
<tr class="odd">
<td><p>Application for Certificates / Alteration for CCC</p>
<p>(paper application)</p></td>
<td>The process is to allow applicant/SWD/EDB(JOKCCC) to apply
certificates for CCC by post.</td>
</tr>
<tr class="even">
<td>Random Audit Check</td>
<td>The process is to allow BD users to perform random audit check of
the completed applications.</td>
</tr>
<tr class="odd">
<td><p>Application for Approval /Alteration for use of the premises for
conducting course under the Non-Local-Higher and Professional Education
(Regulation) Ordinance [NLHPE(R)O]</p>
<p>(e-application)</p></td>
<td>The process is to allow applicant/ EDB to seek BD’s comment on
approval for use of the premises for conducting course under the
NLHPE(R)O through internet/intranet in which applicant/AP/RSE can submit
digital signed documents to BD and BD to issue digital signed documents
to EDB/Applicant/AP/RSE.</td>
</tr>
<tr class="even">
<td><p>Application for Approval/ Alteration for use of the premises for
conducting course under the NLHPE(R)O</p>
<p>(paper application)</p></td>
<td>The process is to allow applicant/ EDB to seek BD’s comment on
approval for use of the premises for conducting course under the
NLHPE(R)O by post.</td>
</tr>
<tr class="odd">
<td><p>Application for Structural inspection for CCC</p>
<p>(paper application)</p></td>
<td>The process is to allow applicant to apply periodic inspection for
CCC by post.</td>
</tr>
<tr class="even">
<td>Application for inclusion of Temporary Structures in the
Pre-accepted Temporary Structure (PTS) Register for use under TPPE
license</td>
<td>The process is to allow BD users to store PTS details, generate PTS
register and assign register number for PTS.</td>
</tr>
</tbody>
</table>

The following table describes system users who participate in the SCS.

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 15%" />
<col style="width: 39%" />
<col style="width: 13%" />
<col style="width: 13%" />
<col style="width: 12%" />
</colgroup>
<tbody>
<tr class="odd">
<td>No.</td>
<td>User Role</td>
<td>Responsibilities</td>
<td>Branch/Division/Section/Unit</td>
<td>Staff Post/Rank</td>
<td>Stakeholder Group</td>
</tr>
<tr class="even">
<td>1</td>
<td>Applicant</td>
<td>Submit application form to BD</td>
<td>N/A</td>
<td>N/A</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>2</td>
<td>AP/RSE</td>
<td>Ensure building safety that meets BD’s requirements</td>
<td>N/A</td>
<td>N/A</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>3</td>
<td>EDB User</td>
<td>Submit application form to BD for EP</td>
<td>N/A</td>
<td>N/A</td>
<td>N/A</td>
</tr>
<tr class="odd">
<td>4</td>
<td>SWD/EDB(JOKCCC) User</td>
<td>Submit application form to BD for CCC</td>
<td>N/A</td>
<td>N/A</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>5</td>
<td>Registry</td>
<td>Data input to SCS</td>
<td>LU</td>
<td>Registry</td>
<td>BD</td>
</tr>
<tr class="odd">
<td>6</td>
<td>SE</td>
<td>Provide comment via SSE to BS</td>
<td>LU</td>
<td>SE</td>
<td>BD</td>
</tr>
<tr class="even">
<td>7</td>
<td>SSE</td>
<td>Provide comment</td>
<td>LU</td>
<td>SSE</td>
<td>BD</td>
</tr>
<tr class="odd">
<td>8</td>
<td>SO</td>
<td>Perform site inspection and prepare inspection report</td>
<td>LU</td>
<td>SO</td>
<td>BD</td>
</tr>
<tr class="even">
<td>9</td>
<td>BS</td>
<td>Check Building Safety Requirement (BSR)</td>
<td>LU</td>
<td>BS</td>
<td>BD</td>
</tr>
<tr class="odd">
<td>10</td>
<td>TO</td>
<td>Obtain structural information and report to SE</td>
<td>LU</td>
<td>TO</td>
<td>BD</td>
</tr>
<tr class="even">
<td>11</td>
<td>SBS</td>
<td>Endorse and approve application</td>
<td>LU</td>
<td>SBS</td>
<td>BD</td>
</tr>
<tr class="odd">
<td>12</td>
<td>CBS</td>
<td>Endorse objection cases</td>
<td>LU</td>
<td>CBS</td>
<td>BD</td>
</tr>
<tr class="even">
<td>13</td>
<td>System Admin</td>
<td>Perform system administration of SCS</td>
<td>ITU/MC</td>
<td>System Admin</td>
<td>BD</td>
</tr>
<tr class="odd">
<td>14</td>
<td>User Admin</td>
<td>Perform user administration of SCS</td>
<td><p>LU/ITU/</p>
<p>EBD/SWD</p></td>
<td>User Admin</td>
<td>BD/EBD/SWD</td>
</tr>
</tbody>
</table>

List Of Future Business Process

<table>
<colgroup>
<col style="width: 19%" />
<col style="width: 80%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Process ID</td>
<td>Business Process Title</td>
</tr>
<tr class="even">
<td>BP-001</td>
<td><p>Application for e-Certificates and e-Notice / Alteration for
EP</p>
<p>(e-application)</p></td>
</tr>
<tr class="odd">
<td>BP-002</td>
<td><p>Application for Certificates and Notice / Alteration for EP</p>
<p>(paper application)</p></td>
</tr>
<tr class="even">
<td>BP-003</td>
<td><p>Application for e-Certificates / Alteration for CCC</p>
<p>(e-application)</p></td>
</tr>
<tr class="odd">
<td>BP-004</td>
<td><p>Application for Certificates / Alteration for CCC</p>
<p>(paper application)</p></td>
</tr>
<tr class="even">
<td>BP-005</td>
<td>Random Audit Check</td>
</tr>
<tr class="odd">
<td>BP-006</td>
<td><p>Application for approval/ Alteration for use of the premises for
conducting course under the NLHPE(R)O</p>
<p>(e-application)</p></td>
</tr>
<tr class="even">
<td>BP-007</td>
<td><p>Application for approval/ Alteration for use of the premises for
conducting course under the NLHPE(R)O</p>
<p>(paper application)</p></td>
</tr>
<tr class="odd">
<td>BP-008</td>
<td>Application for periodic inspection for CCC</td>
</tr>
<tr class="even">
<td>BP-009</td>
<td>Application for inclusion of Temporary Structures in the
Pre-accepted Temporary Structure (PTS) Register for use under TPPE
license</td>
</tr>
</tbody>
</table>

List Of Functional Requirements

|                             |                                                                      |                                                   |              |
|---------------|----------------------------|--------------------|----------|
| **Req. ID**                 | **Requirement Name**                                                 | **Target Users**                                  | **Priority** |
| General Requirement         |                                                                      |                                                   |              |
| REQ-GR-01                   | User Registration                                                    | Applicant/AP/RSE                                  | NA           |
| REQ-GR-02                   | Login with Username & Password                                       | Applicant/AP/RSE                                  | NA           |
| REQ-GR-03                   | Registration and Login through iAM Smart                             | Applicant/AP/RSE                                  | NA           |
| REG-GR-04                   | Change Password                                                      | Applicant/AP/RSE                                  | NA           |
| REG-GR-05                   | Forget Password                                                      | Applicant/AP/RSE                                  | NA           |
| REG-GR-06                   | Logout                                                               | Applicant/AP/RSE                                  | NA           |
| REQ-GR-07                   | Single Sign On                                                       | BD Users/EDB User/ SWD User                       | H            |
| REQ-GR-08                   | Preview Document                                                     | All Users                                         | H            |
| REQ-GR-09                   | Print Document                                                       | BD Users                                          | H            |
| REQ-GR-10                   | Upload Document                                                      | BD Users/EDB User/SWD User/Applicant/AP/RSE       | H            |
| REQ-GR-11                   | Management Statistics and Reports                                    | BD Users                                          | H            |
| REQ-GR-12                   | e-submission                                                         | Applicant/AP/RSE                                  | H            |
| REQ-GR-13                   | e-processing                                                         | BD Users/EDB User/SWD User                        | H            |
| REQ-GR-14                   | e-tracking                                                           | All Users                                         | H            |
| REQ-GR-15                   | Centralised data repository of the application supporting documents  | BD Users/EDB User/SWD User/                       | H            |
| REQ-GR-16                   | Search and Capture                                                   | BD Users/EDB User/SWD User/                       | H            |
| REQ-GR-17                   | Handle new applications                                              | BD Users/EDB User/SWD User/                       | H            |
| REQ-GR-18                   | Handle alteration applications                                       | BD Users/EDB User/SWD User/                       | H            |
| REQ-GR-19                   | Handle Self Certification Submissions                                | BD Users                                          | H            |
| REQ-GR-20                   | Handle Periodic Inspection for CCC                                   | BD Users                                          | H            |
| REQ-GR-21                   | Handle PTS for TPPE                                                  | BD Users                                          | H            |
| REQ-GR-22                   | Data repository                                                      | BD Users                                          | H            |
| REQ-GR-23                   | Easy retrieval of the records                                        | BD Users                                          | H            |
| REQ-GR-24                   | User and Delegation Administration                                   | User Administrators of BD Users/EDB User/SWD User | H            |
| REQ-GR-25                   | Generate Application Number                                          | Applicant                                         | H            |
| REQ-GR-26                   | Withdraw Application                                                 | Applicant                                         | H            |
| Workflow Requirement        |                                                                      |                                                   |              |
| REQ-WR-01                   | Input Application Data                                               | Registry                                          | H            |
| REQ-WR-02                   | Create Structural Information Report                                 | TO                                                | H            |
| REQ-WR-03                   | Provide Comment via SSE                                              | SE                                                | H            |
| REQ-WR-04                   | Perform Site Inspection                                              | SO                                                | H            |
| REQ-WR-05                   | Building Safety Requirements Check                                   | BS                                                | H            |
| REQ-WR-06                   | Generate Reply Letter, e-Certificates and e-Notice                   | BS/SBS                                            | H            |
| REQ-WR-07                   | Generate Letter of Requirement                                       | BS/SBS                                            | H            |
| REQ-WR-08                   | Endorse Application                                                  | SBS                                               | H            |
| REQ-WR-09                   | Endorse Objection                                                    | CBS                                               | H            |
| REQ-WR-10                   | AP/RSE Verification                                                  | Registry                                          | H            |
| REQ-WR-11                   | Check Essential Documents                                            | SO/BS                                             | H            |
| REQ-WR-12                   | Digital Signing of Document                                          | Applicant/AP/RSE/ BD Users                        | H            |
| REQ-WR-13                   | Random Audit Check                                                   | BD Users                                          | H            |
| REQ-WR-14                   | Outstanding Application Alert                                        | SO/TO/BS/SE/SSE/SBS                               | H            |
| REQ-WR-15                   | Input Application Form                                               | Applicant                                         | H            |
| REQ-WR-16                   | Input memo data                                                      | EDB/SWD                                           | H            |
| REQ-WR-17                   | Search Case Information                                              | BD Users                                          | H            |
| Form Requirement            |                                                                      |                                                   |              |
| REQ-FRM-1                   | Verify certificate against the copy from Hong Kong post and DigiSign | System                                            | H            |
| REQ-FRM-2                   | Route form to corresponding user                                     | System                                            | H            |
| REQ-FRM-3                   | Encrypt restricted data in the form                                  | System                                            | H            |
| REQ-FRM-4                   | Submit public form via online                                        | System                                            | H            |
| REQ-FRM-5                   | Extract data from form                                               | System                                            | H            |
| REQ-FRM-6                   | Store the extracted data in the database                             | System                                            | H            |
| REQ-FRM-7                   | Search function for all record                                       | System                                            | H            |
| REQ-FRM-8                   | Auto-reply to acknowledge receiving the form                         | System                                            | H            |
| REQ-FRM-9                   | Maintenance function of the form                                     | System                                            | H            |
| REQ-FRM-10                  | Resubmit the form data                                               | System                                            | H            |
| REQ-FRM-11                  | Update of the disclaimer of the forms                                | System                                            | H            |
| REQ-FRM-12                  | Handle eform and Hardcopy form                                       | System                                            | H            |
| From Processing Requirement |                                                                      |                                                   |              |
| REQ-PRO-1                   | Verify CRM certification record                                      | BD Users/EDB User/SWD User                        | H            |
| REQ-PRO-2                   | Reassign Case to other officer                                       | BD Users/EDB User/SWD User                        | H            |
| REQ-PRO-3                   | Form status query                                                    | BD Users/EDB User/SWD User                        | H            |
| REQ-PRO-4                   | Automatically Bring up Outstanding Cases                             | BD Users/EDB User/SWD User                        | H            |
| REQ-PRO-5                   | To Do List                                                           | BD Users/EDB User/SWD User                        | H            |
| REQ-PRO-6                   | Case History Summary                                                 | BD Users/EDB User/SWD User                        | H            |
| REQ-PRO-7                   | Mark Notes and remark for internal use.                              | BD Users/EDB User/SWD User                        | H            |
| REQ-PRO-8                   | Re-direct to BCIS for case checking                                  | BD Users                                          | H            |
| REQ-PRO-9                   | Handle upload soft-copy                                              | BD Users/EDB User/SWD User                        | H            |
| REQ-PRO-10                  | Export outstanding case                                              | BD Users/EDB User/SWD User                        | H            |
| REQ-PRO-11                  | Handle referral Case                                                 | BD Users/EDB User/SWD User                        | H            |

### TECHNICAL SYSTEM ARCHITECTURE

SCS is a web-based application system that allows public user i.e.,
applicant / Authorized Person (AP) / Registered Structure Engineer (RSE)
to submit and digitally sign application form, layout plans or other
documents in order to apply license of non-purpose-built Educational
Premises (EP) or Child Care Centre (CCC).

Also, the system allows back-end Buildings Department (BD) / Education
Bureau (EDB) / Social Welfare Department (SWD) officers to process the
licensing application through workflow.

The system is made up of 4 main components – SCS-WEB, SCS-ADMIN,
SCS-WEB-BACKEND and SCS-ADMIN-BACKEND. The SCS-WEB is a web application
to handle public users to submit and digitally sign documents. The
SCS-ADMIN is a web application to handle BD officers to process the
licensing application and issue certificates or other documents to
public users and EDB/SWD users. The SCS-WEB-BACKEND is a set of
standalone applications that maintains system data synchronisation with
backend. The SCS-ADMIN-BACKEND is a set of standalone applications that
maintains system data synchronisation with database and other systems
such as BCIS.

To maintain data integrity, the system is interfaced with other BD
systems including:

1.  BCIS

> Data for licensing case management

1.  MWMS 2.0

> Data for AP/RSE information

1.  ESH

> Data for licensing case for AP/RSE

1.  ERKS

> Data for released documents such as certificate/notice

1.  BRAVO

> Hyperlink to check building records

1.  BDGIS

> Data for area code and team mapping

1.  BD Website

> Data for Pre-accepted Temporary Structure (PTS)

Moreover, the system utilizes digital signature to provide
authentication, integrity and non-repudiation of documents that are
submitted to the system. The document signing can use certificates from
Hong Kong Post/DigiSign or mobile app i.e. iAM Smart.

The SCS employs a hybrid deployment solution for servicing public users
and internal users.

The SCS-WEB and SCS-WEB-BACKEND will be deployed in Government Cloud
Platform, namely GCIS, which is managed by OGCIO. By leveraging modern
cloud technologies, the system is deployed in Virtual Machines of
Infrastructure-as-a-Service (IaaS) in both Production Sites
(active-standby) i.e., Production Site 1 and Production Site 2, that can
provide high availability. For UAT and development, the system is
deployed in Testing environment in GCIS.

The SCS-ADMIN and SCS-ADMIN-BACKEND will be deployed in BD premises. The
system will be also deployed in Virtual Machines that can easily scale
up in order to provide high availability and scalability. To avoid
single point of failure, the system will be deployed in at least two
Virtual Machines for Web (API) Server, SCS-ADMIN, SCS-ADMIN-BACKEND and
Database Server in different physical hardware.

It is digital alternatives to reduce paper consumption. The SCS is
enabled user to online submission and signing process. It provides a
healthy, sustainable, environmentally friendly alternative.

The following diagram shows a high-level system architecture and
deployments of SCS.

<img src="media/image6.png" style="width:6.69063in;height:3.625in" />

The networking of the system consists of three locations:

1.  GCIS

2.  West Kowloon Government Office (WKGO)

3.  AIA Office (AIAO)

In GCIS, there are two external networks, one is Internet connection for
public users and the other is GNET connection for data synchronisation
with servers in WKGO. For internet connection, the network shared 10Gbps
bandwidth for all tenants in GCIS. For GNET connection, it is 150Mbps in
WKGO for shared applications.

For connection between WKGO and AIAO, it is connecting with Multi-point
Metro-Ethernet. There are two service providers and two separate sets of
network equipment to maintain high availability. The network bandwidth
in WKGO is 2Gbps and the network bandwidth in AIAO is 500Mbps.

A logical network diagram for is shown below.

<img src="media/image6.png" style="width:6.69063in;height:3.625in" />

## RESOURCE IMPLICATIONS

**The staff resources of MCL for this project is summarised as below:**

<table style="width:100%;">
<colgroup>
<col style="width: 32%" />
<col style="width: 11%" />
<col style="width: 13%" />
<col style="width: 13%" />
<col style="width: 13%" />
<col style="width: 15%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Stage</td>
<td>PM</td>
<td>SA</td>
<td>AP1</td>
<td>NS</td>
<td>Total</td>
</tr>
<tr class="even">
<td>Stage 0 – Project initiation</td>
<td>36</td>
<td>80</td>
<td>60</td>
<td>20</td>
<td>196</td>
</tr>
<tr class="odd">
<td>Stage 1 – System Analysis &amp; Design</td>
<td>56</td>
<td>120</td>
<td>240</td>
<td>30</td>
<td>446</td>
</tr>
<tr class="even">
<td><p>Stage 2 – System Implementation &amp; Integration</p>
<p>And</p>
<p>Stage 3 – Documentation &amp; Nursing</p></td>
<td>20</td>
<td>40</td>
<td>60</td>
<td>18</td>
<td>128</td>
</tr>
<tr class="odd">
<td>Total</td>
<td>112</td>
<td>240</td>
<td>360</td>
<td>68</td>
<td>780</td>
</tr>
</tbody>
</table>

|                    |                                                         |
|--------------------|----------------------------------------------------|
|                    | From Project Initiation to completion of System nursing |
| System Analyst     | At least 2 working days per week resident in BD office  |
| Analyst Programmer | At least 2 working days per week resident in BD office  |

Remarks:

PM - Project Manager

SA - Systems Analyst

AP - Analyst Programmer

NS - Senior Network System Engineer or Network Specialist

## COSTS AND BENEFITS

### COSTS

This section provides the cost estimation for SCS implementation based
on the proposed system architecture.

The estimated hardware/software cost is as attached below.

Hardware Cost

<table style="width:100%;">
<colgroup>
<col style="width: 15%" />
<col style="width: 49%" />
<col style="width: 7%" />
<col style="width: 10%" />
<col style="width: 16%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Item</td>
<td>Description - One-off Cost</td>
<td>Qty</td>
<td>Unit Price</td>
<td>(HK$)</td>
</tr>
<tr class="even">
<td>H1</td>
<td>Tier-1 Firewall for Production Site</td>
<td>2</td>
<td>43,457</td>
<td>86,914</td>
</tr>
<tr class="odd">
<td>H2</td>
<td>Tier-1 Firewall for DR Site</td>
<td>1</td>
<td>43,457</td>
<td>43,457</td>
</tr>
<tr class="even">
<td>H3</td>
<td>Tier-2 Firewall for Production Site</td>
<td>2</td>
<td>69,264</td>
<td>138,528</td>
</tr>
<tr class="odd">
<td>H4</td>
<td>Tier-2 Firewall for DR Site</td>
<td>1</td>
<td>33,000</td>
<td>33,000</td>
</tr>
<tr class="even">
<td>H5</td>
<td>Network Switch for Production Site (DMZ)</td>
<td>2</td>
<td>20,000</td>
<td>40,000</td>
</tr>
<tr class="odd">
<td>H6</td>
<td>Network Switch for DR Site (DMZ)</td>
<td>1</td>
<td>18,000</td>
<td>18,000</td>
</tr>
<tr class="even">
<td>H7</td>
<td>Network Switch for Production Site (Internal)</td>
<td>2</td>
<td>36,000</td>
<td>72,000</td>
</tr>
<tr class="odd">
<td>H8</td>
<td>Network Switch for DR Site (Internal)</td>
<td>1</td>
<td>33,000</td>
<td>33,000</td>
</tr>
<tr class="even">
<td>H9</td>
<td>VM Host Server for Production Site (DMZ)</td>
<td>2</td>
<td>57,550</td>
<td>115,100</td>
</tr>
<tr class="odd">
<td>H10</td>
<td>VM Host Server for DR Site (DMZ)</td>
<td>1</td>
<td>57,550</td>
<td>57,550</td>
</tr>
<tr class="even">
<td>H11</td>
<td>VM Host Server for Production Site (Internal)</td>
<td>2</td>
<td>61,000</td>
<td>122,000</td>
</tr>
<tr class="odd">
<td>H12</td>
<td>VM Host Server for DR Site (Internal)</td>
<td>1</td>
<td>91,000</td>
<td>91,000</td>
</tr>
<tr class="even">
<td>H13</td>
<td>Tap Library for DR Site (offline)</td>
<td>1</td>
<td>104,000</td>
<td>104,000</td>
</tr>
<tr class="odd">
<td>H14</td>
<td>Backup server for Production Site</td>
<td>1</td>
<td>88,000</td>
<td>88,000</td>
</tr>
<tr class="even">
<td>H15</td>
<td>Backup server for DR Site</td>
<td>1</td>
<td>81,600</td>
<td>81,600</td>
</tr>
<tr class="odd">
<td>H16</td>
<td><p>SAN Storage for Production Site</p>
<p>(16TB usable capacity)</p></td>
<td>1</td>
<td>333,000</td>
<td>333,000</td>
</tr>
<tr class="even">
<td>H17</td>
<td><p>SAN Storage for DR Site</p>
<p>(16TB usable capacity)</p></td>
<td>1</td>
<td>333,000</td>
<td>333,000</td>
</tr>
<tr class="odd">
<td>H18</td>
<td>KVM for Production Site</td>
<td>1</td>
<td>13,990</td>
<td>13,990</td>
</tr>
<tr class="even">
<td>H19</td>
<td>KVM for DR Site</td>
<td>1</td>
<td>13,990</td>
<td>13,990</td>
</tr>
<tr class="odd">
<td>H20</td>
<td>UPS for Production Site</td>
<td>2</td>
<td>23,780</td>
<td>47,560</td>
</tr>
<tr class="even">
<td>H21</td>
<td>UPS for DR Site</td>
<td>1</td>
<td>23,780</td>
<td>23,780</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>Sub-Total</td>
<td>1,889,469</td>
</tr>
</tbody>
</table>

The above one-off hardware cost includes the cost for 3-year warranty.

Software Cost

|      |                                      |     |            |         |
|------|--------------------------------------|-----|------------|---------|
| Item | Description - One-off Cost           | Qty | Unit Price | (HK$)   |
| S1   | MS Windows Server                    | 15  | 7,280      | 109,200 |
| S2   | MS SQL Server                        | 6   | 24,410     | 146,460 |
| S3   | Symantec SEP License                 | 24  | 352        | 8,448   |
| S4   | Kiwi Log Servers                     | 2   | 3,730      | 7,460   |
| S5   | VMware vSphere 7                     | 8   | 14,900     | 119,200 |
| S6   | VMware vCenter Server 7              | 1   | 76,000     | 76,000  |
| S7   | VMware vSphere 7 Essentials Plus Kit | 1   | 56,000     | 56,000  |
| S8   | Veeam                                | 3   | 46,365     | 139,095 |
|      |                                      |     | Sub-Total  | 661,863 |

The above one-off software cost includes the cost for 3-year
maintenance/subscription.

Total Cost

<table>
<colgroup>
<col style="width: 8%" />
<col style="width: 63%" />
<col style="width: 27%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Item</strong></td>
<td><strong>Description</strong></td>
<td><strong>One-off Cost<br />
(HK$)</strong></td>
</tr>
<tr class="even">
<td>1</td>
<td>Hardware Cost</td>
<td>1,889,469</td>
</tr>
<tr class="odd">
<td>2</td>
<td>Software Cost</td>
<td>661,863</td>
</tr>
<tr class="even">
<td>3</td>
<td>Installation Cost for the hardware and software</td>
<td>460,000</td>
</tr>
<tr class="odd">
<td></td>
<td><strong>Total</strong></td>
<td><strong>3,011,332</strong></td>
</tr>
</tbody>
</table>

### BENEFITS

TANGIBLE BENEFITS

There is no tangible benefits resulted by the development of the SCS
since it is a digital transformation of existing site-inspection
practice.

INTANGIBLE BENEFITS

|                                            |                                                                                                                                                                                                                                                                     |
|---------------------|---------------------------------------------------|
| Benefits                                   | Description                                                                                                                                                                                                                                                         |
| Streamline business operation              | The current operation relies on paper processing that leads to longer processing time for public users to apply EP/CCC licensing application. The system can help public users and BD users to process the licensing application in an effective and efficient way. |
| Environment friendly                       | The current operation requires a large amount of paper including application form, layout plan, inspection reports…etc. The system can help to reduce paper consumption.                                                                                            |
| Enhance communication between BD and users | The system helps to enhance the communication between BD and users as the system provides better communication such as SMS or Email notifications.                                                                                                                  |

.

## IMPLEMENTATION PLAN

The detailed implementation project plan is attached below.

<table style="width:100%;">
<colgroup>
<col style="width: 40%" />
<col style="width: 11%" />
<col style="width: 11%" />
<col style="width: 36%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Milestone</p>
</blockquote></td>
<td><blockquote>
<p>Start Date</p>
</blockquote></td>
<td><blockquote>
<p>End Date</p>
</blockquote></td>
<td><blockquote>
<p>Deliverables</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>1. Project initiation</p>
</blockquote></td>
<td>16/2/2022</td>
<td>31/12/2022</td>
<td><blockquote>
<p>(1) Project initiation document;</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2. Definition of problems</p>
</blockquote></td>
<td>28/3/2022</td>
<td>6/9/2022</td>
<td><blockquote>
<p>(2) Current environment description;</p>
<p>(3) Requirement specifications;</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>3. Selection of feasible options</p>
</blockquote></td>
<td>10/9/2022</td>
<td>15/10/2022</td>
<td><blockquote>
<p>(4) System specifications;</p>
<p>(5) Selected technical system option including technical system
architecture, cloud hosting solutions, hardware, software and system
design of SCS;</p>
<p>(6) Presentation on the proposed system:</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>4. System analysis &amp; design</p>
</blockquote></td>
<td>16/10/2022</td>
<td>31/12/2022</td>
<td><blockquote>
<p>(7) SA&amp;D report;</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5. Physical design</p>
</blockquote></td>
<td><strong>25/10/2022</strong></td>
<td>16/1/2023</td>
<td><blockquote>
<p>(8) Physical data design;</p>
<p>(9) Process data interface;</p>
<p>(10) Data catalogue;</p>
<p>(11) Program specification;</p>
<p>(12) Performance optimization report;</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6. Site preparation and cabling</p>
</blockquote></td>
<td>25/7/2022</td>
<td>31/8/2022</td>
<td><blockquote>
<p>(13) Site specification;</p>
<p>(14) Accepted site;</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>7. Procurement &amp; installation of hardware and software</p>
</blockquote></td>
<td>1/12/2022</td>
<td>19/4/2023</td>
<td><blockquote>
<p>(15) Procurement plan;</p>
<p>(16) Procurement specification and/or procurement list;</p>
<p>(17) Hardware and software installed and checked;</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>8. Program development</p>
</blockquote></td>
<td>1/9/2022</td>
<td>29/3/2023</td>
<td><blockquote>
<p>(18) Program codes, software modules;</p>
<p>(19) Job control procedures;</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>9. Unit test</p>
</blockquote></td>
<td>1/9/2022</td>
<td>19/5/2023</td>
<td><blockquote>
<p>(20) Unit test cases and results;</p>
<p>(21) Plan for testing by Persons With Disabilities (PWD) groups;</p>
<p>(22) W3C WCAG 2.1 AA conformance checking and rectification
report;</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>10. System integration and test</p>
</blockquote></td>
<td>1/9/2022</td>
<td>19/5/2023</td>
<td><blockquote>
<p>(23) System installation plan;</p>
<p>(24) System installation report;</p>
<p>(25) System test plan, specifications and results;</p>
<p>(26) Software modules in integration;</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>11. User acceptance</p>
</blockquote></td>
<td>22/5/2023</td>
<td>3/8/2023</td>
<td><blockquote>
<p>(27) Acceptance test plan, specifications and results;</p>
<p>(28) “Passing tests” S/W modules;</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>12. Disaster recovery drill and Load Test</p>
</blockquote></td>
<td>4/8/2023</td>
<td>23/8/2023</td>
<td><blockquote>
<p>(29) Disaster recovery drill test report;</p>
<p>(30) Load Test report;</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>13. Prepare system documentation</p>
</blockquote></td>
<td>17/7/2023</td>
<td><strong>23/8/2023</strong></td>
<td><blockquote>
<p>(31) Application operation manual;</p>
<p>(32) Computer operation procedures manual;</p>
<p>(33) Data manual;</p>
<p>(34) Program manual;</p>
<p>(35) System maintenance plan;</p>
<p>(36) System manual;</p>
<p>(37) User procedures manual;</p>
<p>(38) Security incident handling procedure;</p>
<p>(39) a DR plan;</p>
<p>(40) Data Conversion Plan &amp; Result, and Rollout plan;</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>14. Training</p>
</blockquote></td>
<td>17/7/2023</td>
<td><strong>23/8/2023</strong></td>
<td><blockquote>
<p>(41) Training plan;</p>
<p>(42) Training manual;</p>
<p>(43) Training courses;</p>
<p>(44) Trained users;</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>15. System production</p>
</blockquote></td>
<td>17/7/2023</td>
<td>24/8/2023</td>
<td><blockquote>
<p>(45) Computer systems in production use;</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>16. Nursing</p>
</blockquote></td>
<td>25/8/2023</td>
<td>24/11/2023</td>
<td><blockquote>
<p>(46) System nursing &amp; maintenance;</p>
<p>(47) Hand-over plan;</p>
<p>(48) System Maintenance Report; and</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>17. Project closure</p>
</blockquote></td>
<td>24/11/2023</td>
<td>24/11/2023</td>
<td><blockquote>
<p>(49) Project evaluation report.</p>
</blockquote></td>
</tr>
</tbody>
</table>

SM&S

<table style="width:100%;">
<colgroup>
<col style="width: 40%" />
<col style="width: 11%" />
<col style="width: 11%" />
<col style="width: 36%" />
</colgroup>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Milestone</p>
</blockquote></td>
<td><blockquote>
<p>Start Date</p>
</blockquote></td>
<td><blockquote>
<p>End Date</p>
</blockquote></td>
<td><blockquote>
<p>Deliverables</p>
</blockquote></td>
</tr>
<tr class="even">
<td><ol type="1">
<li><p>System Maintenance &amp; Support (SM&amp;S)</p></li>
</ol></td>
<td>25/11/2023</td>
<td>24/11/2024</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="2" type="1">
<li><p>Production Rollout (2) - System interface with the electronic
record-keeping system (ERKS)</p></li>
</ol></td>
<td>1/6/2024</td>
<td>1/9/2024</td>
<td></td>
</tr>
</tbody>
</table>

\<End-of-Document\>
