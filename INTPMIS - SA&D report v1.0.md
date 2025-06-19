**SYSTEM ANALYSIS & DESIGN REPORT**

**FOR**

**Development of I&T Project**

**Management Information System (INTPMIS)**

**OF**

**Electrical and Mechanical Services Department**

Version: 1.0

**September 2020**

© The Government of the Hong Kong Special Administrative Region

The contents of this document remain the property of and may not be
reproduced in whole or in part without the express permission of the
Government of the HKSAR

<table>
<colgroup>
<col style="width: 29%" />
<col style="width: 70%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="2"><strong>Distribution</strong></th>
</tr>
<tr class="odd">
<th>Copy No.</th>
<th>Holder</th>
</tr>
<tr class="header">
<th>1</th>
<th></th>
</tr>
<tr class="odd">
<th>2</th>
<th><blockquote>
<p>Master Concept (Hong Kong) Limited</p>
</blockquote></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Prepared By:</p>
<p>Derek Chan</p>
<p>[Programme Manager, MCHK]</p></th>
<th><p>Endorsed By:</p>
<p>[ ]</p></th>
</tr>
<tr class="odd">
<th>Date: <u>21/09/2020</u></th>
<th>Date:</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

| **Amendment History** |                      |                                      |                           |      |                    |
|----------|-------------------------|---------|---------|---------|-----------|
| Change Number         | Revision Description | Pages Affected on Respective Version | Revision / Version Number | Date | Approval Reference |
|                       |                      |                                      |                           |      |                    |
|                       |                      |                                      |                           |      |                    |
|                       |                      |                                      |                           |      |                    |

*Table of Contents*

[***Management Summary 4***](#_heading=h.30j0zll)

> [**Approval Sought 4**](#_heading=h.1fob9te)
>
> [**System Objectives 4**](#_heading=h.3znysh7)
>
> [**Background 4**](#_heading=h.2et92p0)
>
> [**Proposed System 5**](#_heading=h.tyjcwt)

[***Resource Implications 5***](#_heading=h.3dy6vkm)

[***Implementation Plan 7***](#_heading=h.1t3h5sf)

[***Current Environment Description 8***](#_heading=h.wgymtp68tx8h)

> [**Current System Description 8**](#_heading=h.4d34og8)
>
> [**Current System Overview 8**](#_heading=h.2s8eyo1)
>
> [**Business Process Model 9**](#_heading=h.17dp8vu)
>
> [**Current Problems and Issues 12**](#_heading=h.3rdcrjn)

[***Requirements Specification 12***](#_heading=h.26in1rg)

> [**User Requirements 12**](#_heading=h.lnxbz9)
>
> [Proposed System Overview 12](#_heading=h.35nkun2)
>
> [**Future Business Process 14**](#_heading=h.1ksv4uv)
>
> [**UI & UX Design 15**](#_heading=h.44sinio)
>
> [Login page 15](#_heading=h.2jxsxqh)
>
> [Project Management- Create 15](#_heading=h.z337ya)
>
> [Project Management- Edit 19](#_heading=h.3j2qqm3)
>
> [Project Management- View 22](#_heading=h.1y810tw)
>
> [Wish Management- Edit 22](#_heading=h.4i7ojhp)
>
> [Wish Management- View 25](#_heading=h.2xcytpi)
>
> [Solution Management- Edit 25](#_heading=h.1ci93xb)
>
> [Solution Management- View 27](#_heading=h.3whwml4)
>
> [Report Management- View 27](#_heading=h.2bn6wsx)
>
> [Log Management- View 32](#_heading=h.qsh70q)
>
> [**Functional Requirements 32**](#_heading=h.3as4poj)
>
> [List of Functional Requirements: 32](#_heading=h.1pxezwc)
>
> [REQ-SYS-001 - Login 33](#_heading=h.49x2ik5)
>
> [REQ-SYS-002 - Project List 33](#_heading=h.2p2csry)
>
> [REQ-SYS-003 - Create a Project 34](#_heading=h.147n2zr)
>
> [REQ-SYS-004 - View and Edit a Project 34](#_heading=h.3o7alnk)
>
> [REQ-SYS-005 - Wish List 35](#_heading=h.23ckvvd)
>
> [REQ-SYS-006 - View or Edit a Wish 36](#_heading=h.ihv636)
>
> [REQ-SYS-007 - Solution List 36](#_heading=h.32hioqz)
>
> [REQ-SYS-008 - View and Edit a Solution 37](#_heading=h.1hmsyys)
>
> [REQ-SYS-009 - Report List 37](#_heading=h.41mghml)
>
> [REQ-SYS-010 - View Report 38](#_heading=h.2grqrue)
>
> [REQ-SYS-011 - Log List 38](#_heading=h.vx1227)
>
> [REQ-SYS-012 - View Log List 39](#_heading=h.3fwokq0)
>
> [REQ-SYS-013 - Upload Files 39](#_heading=h.1v1yuxt)
>
> [**Non-functional Requirements 40**](#_heading=h.4f1mdlm)
>
> [List of Functional Requirements 40](#_heading=h.2u6wntf)
>
> [REQ-SR-001 Response Time 41](#_heading=h.19c6y18)
>
> [REQ-SR-002 Service Time 41](#_heading=h.3tbugp1)
>
> [REQ-SR-003 Export 41](#_heading=h.28h4qwu)
>
> [REQ-SR-004 Scalability 42](#_heading=h.nmf14n)
>
> [REQ-SR-005 System Performance 42](#_heading=h.37m2jsg)
>
> [REQ-UR-001 User Interface Requirement 42](#_heading=h.1mrcu09)
>
> [REQ-SCR-001 Function Access Rights 43](#_heading=h.46r0co2)
>
> [REQ-SCR-002 Access to Data 43](#_heading=h.2lwamvv)
>
> [REQ-SCR-003 System Backup 44](#_heading=h.111kx3o)
>
> [**Technical Requirements 44**](#_heading=h.3l18frh)
>
> [List of Technical Requirements: 44](#_heading=h.206ipza)
>
> [TR-SBR-001 Server House Keeping 44](#_heading=h.4k668n3)
>
> [TR-SBR-002 Backup, Recovery and System Archive
> 45](#_heading=h.2zbgiuw)
>
> [TR-DRR-001 System Disaster Recovery 45](#_heading=h.1egqt2p)

[***System Specification 46***](#_heading=h.3ygebqi)

[***Architecture Design 47***](#_heading=h.2dlolyb)

[***Selected Technical System Option 47***](#_heading=h.sqyw64)

[***Hardware & Software Procurement 48***](#_heading=h.3cqmetx)

> [**Hardware Procurement 48**](#_heading=h.1rvwp1q)
>
> [**Software Procurement 48**](#_heading=h.4bvk7pj)

[***Programme Flow with Pseud-code Based, Software Module and Wireframe
Mock-up 49***](#_heading=h.2r0uhxc)

<span id="_heading=h.30j0zll" class="anchor"></span>***Management
Summary***

<span id="_heading=h.1fob9te" class="anchor"></span>*<u>Approval
Sought</u>*

Approval is sought to endorse the System Analysis and Design (SA&D)
report and to proceed to the Stage of System Implementation and
Integration of the project. This report is compiled as a result of the
SA&D study of the I&T Project Management Information System (INTPMIS)
for the Electrical and Mechanical Services Department (“EMSD”) of the
Government of the Hong Kong Special Administrative Region (“HKSARG” or
“the Government).

<span id="_heading=h.3znysh7" class="anchor"></span>*<u>System
Objectives</u>*

The main objectives of future system are:

-   to improve project management & control

-   to make more effective use of experienced and inexperienced
    > development staff

-   to develop better quality systems

-   to make projects resilient to the loss of staff

-   to enable projects to be supported by computer-based tools such as
    > computer-aided software engineering systems

-   to establish a framework for good communications between
    > participants in a project

<span id="_heading=h.2et92p0" class="anchor"></span>*<u>Background</u>*

The INTPMIS is a relational database to store information of all I&T
projects and provide analysis in the form of reports, tables and charts
for decision making. The system aims to provide a reliable and accurate
database to store relevant information in order keep track on the latest
I&T development of the department.

The INTPMIS (relational database) consists of multiple flat tables and
each flat table contains at least 40 numbers of data fields.

The INTPMIS shall also import part of the data from the existing central
management system of E&M InnoPortal.

<span id="_heading=h.tyjcwt" class="anchor"></span>*<u>Proposed
System</u>*

<img src="media/image37.jpg" style="width:3.78125in;height:4.44792in" />

The proposed INTPMIS is a web-based application which is built using
Node.js, Vue.js, and MySQL. INTPMIS is designed for bridging the
information and collaboration between different users. It interfaces
with the online platform E&M InnoPortal to obtain relevant project

data, such as the wish table, project table, and solution table, stored
in INTPMIS MySQL database. Users are allowed to fill information and
match records via the web user interface which is built by Vue.js. The
key features of the system are record searching, record filtering, and
report generation.

<span id="_heading=h.3dy6vkm" class="anchor"></span>***Resource
Implications***

<table style="width:100%;">
<colgroup>
<col style="width: 24%" />
<col style="width: 10%" />
<col style="width: 29%" />
<col style="width: 15%" />
<col style="width: 19%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Milestone</strong></th>
<th><strong>End of Date</strong></th>
<th><strong>Deliverables</strong></th>
<th><strong>Role</strong></th>
<th><strong>Estimated man-effort<br />
(in days) (B)</strong></th>
</tr>
<tr class="odd">
<th rowspan="6">1. Project initiation</th>
<th rowspan="6">2nd week</th>
<th rowspan="6">(1) Project initiation document</th>
<th>Project manager</th>
<th>4</th>
</tr>
<tr class="header">
<th>Business Analyst</th>
<th>4</th>
</tr>
<tr class="odd">
<th>System Analyst I</th>
<th>4</th>
</tr>
<tr class="header">
<th>System Analyst II</th>
<th>0</th>
</tr>
<tr class="odd">
<th>System Analyst III</th>
<th>0</th>
</tr>
<tr class="header">
<th>Technical Writer</th>
<th>4</th>
</tr>
<tr class="odd">
<th rowspan="6">2. Definition of problems</th>
<th rowspan="6">7th week</th>
<th rowspan="6">(2) Current environment description<br />
(3) Requirements specifications</th>
<th>Project manager</th>
<th>5</th>
</tr>
<tr class="header">
<th>Business Analyst</th>
<th>40</th>
</tr>
<tr class="odd">
<th>System Analyst I</th>
<th>10</th>
</tr>
<tr class="header">
<th>System Analyst II</th>
<th>10</th>
</tr>
<tr class="odd">
<th>System Analyst III</th>
<th>7</th>
</tr>
<tr class="header">
<th>Technical Writer</th>
<th>7</th>
</tr>
<tr class="odd">
<th rowspan="6">3. Selection of feasible options</th>
<th rowspan="6">12th week</th>
<th rowspan="6">(4) System specifications<br />
(5) Selected technical system option</th>
<th>Project manager</th>
<th>5</th>
</tr>
<tr class="header">
<th>Business Analyst</th>
<th>15</th>
</tr>
<tr class="odd">
<th>System Analyst I</th>
<th>20</th>
</tr>
<tr class="header">
<th>System Analyst II</th>
<th>20</th>
</tr>
<tr class="odd">
<th>System Analyst III</th>
<th>15</th>
</tr>
<tr class="header">
<th>Technical Writer</th>
<th>15</th>
</tr>
<tr class="odd">
<th rowspan="6">4. System analysis &amp; design</th>
<th rowspan="6">14th week</th>
<th rowspan="6">(6) SA&amp;D report</th>
<th>Project manager</th>
<th>5</th>
</tr>
<tr class="header">
<th>Business Analyst</th>
<th>5</th>
</tr>
<tr class="odd">
<th>System Analyst I</th>
<th>40</th>
</tr>
<tr class="header">
<th>System Analyst II</th>
<th>40</th>
</tr>
<tr class="odd">
<th>System Analyst III</th>
<th>35</th>
</tr>
<tr class="header">
<th>Technical Writer</th>
<th>35</th>
</tr>
<tr class="odd">
<th rowspan="6">5. Project closure</th>
<th rowspan="6">16th week</th>
<th rowspan="6">(7) Project evaluation report</th>
<th>Project manager</th>
<th>5</th>
</tr>
<tr class="header">
<th>Business Analyst</th>
<th>5</th>
</tr>
<tr class="odd">
<th>System Analyst I</th>
<th>10</th>
</tr>
<tr class="header">
<th>System Analyst II</th>
<th>10</th>
</tr>
<tr class="odd">
<th>System Analyst III</th>
<th>0</th>
</tr>
<tr class="header">
<th>Technical Writer</th>
<th>8</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.1t3h5sf" class="anchor"></span>***Implementation
Plan***

<table>
<colgroup>
<col style="width: 54%" />
<col style="width: 18%" />
<col style="width: 26%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Milestone</strong></th>
<th><strong>End of Date</strong></th>
<th><strong>Deliverables</strong></th>
</tr>
<tr class="odd">
<th><ol type="1">
<li><blockquote>
<p><strong>Project Initiation</strong></p>
</blockquote></li>
</ol></th>
<th>1st month (23 Jan 2020)</th>
<th><ol type="1">
<li><blockquote>
<p>Project Initiation Document</p>
</blockquote></li>
</ol></th>
</tr>
<tr class="header">
<th><ol type="1">
<li><p><strong>System Analysis &amp; Design</strong></p></li>
</ol></th>
<th>1st month (14 Feb 2020)</th>
<th><ol type="1">
<li><p>SA&amp;D Report</p></li>
</ol></th>
</tr>
<tr class="odd">
<th><ol type="1">
<li><p><strong>System Implementation (“SI”) (Phase 1 - Simple Data
Entry) and UAT</strong></p></li>
</ol></th>
<th>2nd month (27 Mar, 2020)</th>
<th>3. Highlight Report</th>
</tr>
<tr class="header">
<th><ol type="1">
<li><p><strong>System Implementation (“SI”) (Phase 2 - Full
System) </strong></p></li>
</ol></th>
<th>3rd month (8 May, 2020)</th>
<th>3. Highlight Report</th>
</tr>
<tr class="odd">
<th><ol type="1">
<li><p><strong>SIT &amp; UAT (Phase2 - Full System)</strong></p></li>
</ol></th>
<th>4th month (22 May, 2020)</th>
<th></th>
</tr>
<tr class="header">
<th><ol type="1">
<li><p><strong>System Maintenance and Support
(“SM&amp;S”)</strong></p></li>
</ol></th>
<th>6th month (10 Jul, 2020)</th>
<th></th>
</tr>
<tr class="odd">
<th><ol type="1">
<li><p><strong>Project Closure</strong></p></li>
</ol></th>
<th>6th month (17 Jul, 2020)</th>
<th><blockquote>
<p>4. Project Evaluation Report</p>
</blockquote></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.wgymtp68tx8h" class="anchor"></span>***Current
Environment Description***

<span id="_heading=h.4d34og8" class="anchor"></span>*<u>Current System
Description</u>*

Users upload wishes and solutions to the E&M InnoPortal. The EMSD staff
extracts data from the E&M InnoPortal and exports to Excel files. The
information is filled in the Excel files manually. Then, the Excel files
would be sent to the engineers through email. After reviewing the Excel
files, the engineers match the wishes and solutions. Then, the engineers
would modify the Excel files and send them to the related staff via
email. The existing I&T projects information and record are maintained
in multiple Excel files and E&M InnoPortal Central Management System.
Information, reports and tables are manually imported and generated.

<span id="_heading=h.2s8eyo1" class="anchor"></span>*<u>Current System
Overview</u>*

There are five roles involved in the current system, which are staff
from Inno office, other EMSD division users, IIRC, contractor, and VIP.
Other EMSD division users are responsible to update and report on
INTPMIS when staff from Inno office mainly update on CMS. When
contractors submit solutions, the IIRC will proceed vetting. Then other
EMSD division users and Inno office will create projects according to
the results.

<span id="_heading=h.17dp8vu" class="anchor"></span>*<u>Business Process
Model</u>*

<img src="media/image53.png"
style="width:10.78667in;height:4.56216in" />

<table>
<colgroup>
<col style="width: 12%" />
<col style="width: 20%" />
<col style="width: 25%" />
<col style="width: 21%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th>Task No.</th>
<th>Role</th>
<th>Task Description</th>
<th>Input</th>
<th>Output</th>
</tr>
<tr class="odd">
<th>FUN-01</th>
<th>Other EMSD division user</th>
<th>Create wish in CMS</th>
<th>Fill in wish information</th>
<th>A wish is created with a wish ID (proceed to FUN-02)</th>
</tr>
<tr class="header">
<th>FUN-02</th>
<th>Inno office</th>
<th>Assign wish in CMS</th>
<th>Assign the wish</th>
<th>The wish is assigned with a wish number (proceed to FUN-03)</th>
</tr>
<tr class="odd">
<th>FUN-03</th>
<th>Inno office</th>
<th>Publish wish to web</th>
<th>Input information and publish to web</th>
<th>The wish is published to web (proceed to FUN-04 and FUN-12)</th>
</tr>
<tr class="header">
<th>FUN-04</th>
<th>VIP</th>
<th>Submit solution without a targeted wish</th>
<th>Submit solution information without a targeted wish</th>
<th>The solution is uploaded (proceed to FUN-07)</th>
</tr>
<tr class="odd">
<th>FUN-05</th>
<th>Inno office</th>
<th>Create solution number and publish on web</th>
<th>Create solution number and publish on web</th>
<th><p>The solution is posted on web</p>
<p>If it is innoproject, proceed to FUN-06.</p>
<p>Otherwise proceed to FUN-07.</p></th>
</tr>
<tr class="header">
<th>FUN-06</th>
<th>Inno office</th>
<th>Create project in CMS manually</th>
<th>Create project in CMS manually</th>
<th>A project is created. (proceed to FUN-07)</th>
</tr>
<tr class="odd">
<th>FUN-07</th>
<th>Other EMSD division user</th>
<th>Upload interim report on INTPMIS</th>
<th>Upload interim report on INTPMIS</th>
<th>The interim report is uploaded (proceed to FUN-08)</th>
</tr>
<tr class="header">
<th>FUN-08</th>
<th>Inno office</th>
<th>Upload interim report on CMS</th>
<th>Upload interim report on CMS</th>
<th>The interim report is uploaded (proceed to FUN-09)</th>
</tr>
<tr class="odd">
<th>FUN-09</th>
<th>Other EMSD division user</th>
<th>Upload final report on INTPMIS</th>
<th>Upload final report on INTPMIS</th>
<th>The final report is uploaded (proceed to FUN-10)</th>
</tr>
<tr class="header">
<th>FUN-10</th>
<th>Inno office</th>
<th>Upload final report on CMS</th>
<th>Upload final report on CMS</th>
<th>The final report is uploaded</th>
</tr>
<tr class="odd">
<th>FUN-11</th>
<th>Contractor</th>
<th>Submit solution with targeted wish ID</th>
<th><p>Select a targeted wish with wish ID and wish number</p>
<p>Submit solution information</p></th>
<th>The solution is uploaded (proceed to FUN-12)</th>
</tr>
<tr class="header">
<th>FUN-12</th>
<th>IIRC</th>
<th>Vetting</th>
<th>Proceed technical feasibility assessment</th>
<th>If it is successful, proceed to FUN-13</th>
</tr>
<tr class="odd">
<th>FUN-13</th>
<th>Inno office</th>
<th>Create solution number and publish on web</th>
<th>Create solution number and publish on web</th>
<th><p>The solution is posted on web</p>
<p>If it is innoproject, proceed to FUN-14</p></th>
</tr>
<tr class="header">
<th>FUN-14</th>
<th>Other EMSD division user</th>
<th>Report tendering result on INTPMIS</th>
<th>Report tendering result on INTPMIS with a solution number and a wish
number</th>
<th>The tendering result is reported (proceed to FUN-07)</th>
</tr>
<tr class="odd">
<th>FUN-15</th>
<th>Other EMSD division user</th>
<th>Report tendering result on INTPMIS</th>
<th>Report tendering result on INTPMIS without a solution number and a
wish number</th>
<th>The tendering result is reported (proceed to FUN-07)</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.3rdcrjn" class="anchor"></span>*<u>Current Problems
and Issues</u>*

Since the current system mostly involves manual operation, it causes
lots of problems and issues, which are described below:

-   Time-consuming

> Sharing by email to update the project information is not efficient.
> As the current workflow, when the file is updated, the staff will send
> the file by email. The colleague has to wait until receiving the email
> so the data cannot be updated concurrently. Also, when the staff
> search for a project, multiple Excel files may be checked. It takes
> time to search for a project.

-   Unstructured data

> The unstructured data is hard to sort, manage and organize. There may
> be duplicate copies of data. It causes inaccurate reporting and less
> informed decisions. Decisions based on poor quality data are not
> reliable and accurate as those made on assumptions.

-   Data loss

> Storing data in Excel files without logging history might cause data
> loss. It costs time and money to restore or recover the data that is
> essential. The hard copies of information may be located but these may
> not be up-to-date.

-   Low accuracy

> The data might not be accurate due to the human error. When a new
> project is created, the wish information and solution information are
> copied to the Excel file by manual entry. Spelling, grammar,
> punctuation, misinterpretation of data, not saving work and mistyping
> in the wrong fields are all common errors seen in the data entry
> field.

<span id="_heading=h.26in1rg" class="anchor"></span>***Requirements
Specification***

<span id="_heading=h.lnxbz9" class="anchor"></span>*<u>User
Requirements</u>*

<span id="_heading=h.35nkun2" class="anchor"></span>*Proposed System
Overview*

The proposed INTPMIS will address the problems of the current system.
Thus, the proposed INTPMIS offers a variety of enhanced aspects as
following:

-   Working environment

> An easy-to-use web portal, UI and forms for admin and users to login
> and modify individual database entries will be developed. Users are
> allowed to co-editing of database entries simultaneously and in
> real-time.

-   Data management

> The I&T project’s information includes E & M InnoPortal and other I&T
> projects that will be stored in the MySQL database of INTPMIS. The
> data includes text ,data ,report and attachment in the form of PDF,
> Microsoft Word and JPEG, PNG etc. Users can access the data in the
> INTPMIS web portal. Moreover, it migrates existing I&T project
> information by interface with other systems and from Excel tables.

-   Data analysis

> The reports and statistics will be generated by the system to show the
> facts and trend of I&T development. Also, users can customize the
> reports. Filtering and Sorting record functions will be added to the
> system. Users can export the data to Excel reports.

-   Workflow

> When creating a new project, users do not need to enter the data
> manually. The system will automatically get the data from different
> tables. It avoids data loss and increases accuracy.

<span id="_heading=h.1ksv4uv" class="anchor"></span>*<u>Future Business
Process</u>*

List of Future Business Process:

| Process ID | Business Process Title |
|------------|------------------------|
| BP-01      | User Login             |
| BP-02      | View Project List      |
| BP-03      | Create Project         |
| BP-04      | View and Edit Project  |
| BP-05      | View Wish List         |
| BP-06      | View and Edit Wish     |
| BP-07      | View Solution List     |
| BP-08      | View and Edit Solution |
| BP-09      | View Report List       |
| BP-10      | View Report            |
| BP-11      | View Log List          |
| BP-12      | Upload File            |

<span id="_heading=h.44sinio" class="anchor"></span>*<u>UI & UX
Design</u>*

<span id="_heading=h.2jxsxqh" class="anchor"></span>*Login page*

<img src="media/image33.png" style="width:4.71354in;height:3.03524in" />

<span id="_heading=h.z337ya" class="anchor"></span>*Project Management-
Create*

<img src="media/image20.jpg" style="width:6.56772in;height:2.98611in" />

<img src="media/image52.png" style="width:6.56772in;height:2.47222in" />

<img src="media/image40.png" style="width:6.56772in;height:6.23611in" />

<img src="media/image39.png" style="width:6.56772in;height:2.08333in" />

<img src="media/image45.png" style="width:6.56772in;height:1.98611in" />

<img src="media/image44.png" style="width:6.56772in;height:6.125in" />

<span id="_heading=h.3j2qqm3" class="anchor"></span>*Project Management-
Edit*

<img src="media/image2.jpg" style="width:6.56772in;height:3.25in" />

<img src="media/image49.png" style="width:6.56772in;height:7.97222in" />

<img src="media/image46.png" style="width:6.31771in;height:9.72186in" />

<img src="media/image43.jpg" style="width:6.56772in;height:3.65278in" />

<span id="_heading=h.1y810tw" class="anchor"></span>*Project Management-
View*

<img src="media/image14.jpg" style="width:6.56772in;height:3.27778in" />

<span id="_heading=h.4i7ojhp" class="anchor"></span>*Wish Management-
Edit*

<img src="media/image15.jpg" style="width:6.56772in;height:3.23611in" />

<img src="media/image42.png" style="width:6.00521in;height:9.72595in" />

<span id="_heading=h.2xcytpi" class="anchor"></span>*Wish Management-
View*

<img src="media/image41.jpg" style="width:6.56772in;height:3.20833in" />

<span id="_heading=h.1ci93xb" class="anchor"></span>*Solution
Management- Edit*

<img src="media/image51.jpg" style="width:6.56772in;height:3.22222in" />

<img src="media/image48.png" style="width:5.21354in;height:9.54724in" />

<span id="_heading=h.3whwml4" class="anchor"></span>*Solution
Management- View*

<img src="media/image28.jpg" style="width:6.56772in;height:3.125in" />

<span id="_heading=h.2bn6wsx" class="anchor"></span>*Report Management-
View*

<img src="media/image16.jpg" style="width:6.57292in;height:2.93056in" />

<img src="media/image32.png" style="width:6.56772in;height:4.55556in" />

<img src="media/image38.png" style="width:6.56772in;height:6.98611in" />

<img src="media/image50.png" style="width:6.56772in;height:3.76389in" />

<img src="media/image29.png" style="width:6.56772in;height:6.26389in" />

<span id="_heading=h.qsh70q" class="anchor"></span>*Log Management-
View*

<img src="media/image31.jpg" style="width:6.56772in;height:3.20833in" />

<span id="_heading=h.3as4poj" class="anchor"></span>*<u>Functional
Requirements</u>*

<span id="_heading=h.1pxezwc" class="anchor"></span>*List of Functional
Requirements:*

| Req. ID     | Requirement Title        | Target Users | Priority |
|-------------|--------------------------|--------------|----------|
| REQ-SYS-001 | Login                    | Users        | MUST     |
| REQ-SYS-002 | Project List             | Users        | MUST     |
| REQ-SYS-003 | Create a Project         | Users        | MUST     |
| REQ-SYS-004 | View or Edit a Project   | Users        | MUST     |
| REQ-SYS-005 | Wish List                | Users        | MUST     |
| REQ-SYS-006 | View or Edit a Wish      | Users        | MUST     |
| REQ-SYS-007 | Solution List            | Users        | MUST     |
| REQ-SYS-008 | View and Edit a Solution | Users        | MUST     |
| REQ-SYS-009 | Report List              | Users        | MUST     |
| REQ-SYS-010 | View Report              | Users        | MUST     |
| REQ-SYS-011 | Log List                 | Users        | MUST     |
| REQ-SYS-012 | View Log List            | Users        | MUST     |
| REQ-SYS-013 | Upload File              | Users        | MUST     |

<span id="_heading=h.49x2ik5" class="anchor"></span>*REQ-SYS-001 -
Login*

<table>
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>REQ-SYS-001</th>
</tr>
<tr class="header">
<th>Requirement Title</th>
<th>Login</th>
</tr>
<tr class="odd">
<th>Priority</th>
<th>MUST</th>
</tr>
<tr class="header">
<th>Functional Requirement Description</th>
<th><ul>
<li><blockquote>
<p>The system should support single sign on through the Windows Active
Directory</p>
</blockquote></li>
<li><blockquote>
<p>Support Existing User Permission Matrix Mapping</p>
</blockquote></li>
<li><blockquote>
<p>If the user is an Acting of another user according to the LDAP login
details, there should be an option for the user to choose whether to
access the INTPMIS as the role of Acting or the original role of the
user</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Frequency of Use</th>
<th>Daily</th>
</tr>
<tr class="header">
<th>Acceptance Criteria</th>
<th><ul>
<li><blockquote>
<p>Correct permission is granted according to the LDAP login
details.</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Related Business Process</th>
<th>BP-01</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.2p2csry" class="anchor"></span>*REQ-SYS-002 -
Project List*

<table>
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>REQ-SYS-002</th>
</tr>
<tr class="header">
<th>Requirement Title</th>
<th>Project List</th>
</tr>
<tr class="odd">
<th>Priority</th>
<th>MUST</th>
</tr>
<tr class="header">
<th>Functional Requirement Description</th>
<th><ul>
<li><blockquote>
<p>A page allows users to search for the projects</p>
</blockquote></li>
<li><blockquote>
<p>Support sorting and filtering</p>
</blockquote></li>
<li><blockquote>
<p>Allow to export the project list result in file type ".csv" in the
Project page</p>
</blockquote></li>
<li><blockquote>
<p>Allow to configure the filtering and sorting criteria</p>
</blockquote></li>
<li><blockquote>
<p>Allow to view / edit project</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Frequency of Use</th>
<th>Daily</th>
</tr>
<tr class="header">
<th>Acceptance Criteria</th>
<th><ul>
<li><blockquote>
<p>Projects are correctly shown according to the filtering and
sorting</p>
</blockquote></li>
<li><blockquote>
<p>The records in the exported project list are shown correctly
according to the project list result</p>
</blockquote></li>
<li><blockquote>
<p>File downloaded in the correctly format and naming</p>
</blockquote></li>
<li><blockquote>
<p>Filtering options are shown correctly according to the
configuration</p>
</blockquote></li>
<li><blockquote>
<p>Project list is sorted by default correctly according to the sorting
configuration</p>
</blockquote></li>
<li><blockquote>
<p>User can view / edit project by clicking the icon</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Related Business Process</th>
<th>BP-02</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.147n2zr" class="anchor"></span>*REQ-SYS-003 -
Create a Project*

<table>
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>REQ-SYS-003</th>
</tr>
<tr class="header">
<th>Requirement Title</th>
<th>Create a Project</th>
</tr>
<tr class="odd">
<th>Priority</th>
<th>MUST</th>
</tr>
<tr class="header">
<th>Functional Requirement Description</th>
<th>Allow users to create a project</th>
</tr>
<tr class="odd">
<th>Frequency of Use</th>
<th>Occasionally</th>
</tr>
<tr class="header">
<th>Acceptance Criteria</th>
<th><ul>
<li><blockquote>
<p>Redirection to the page the project table when the project creation
is successful</p>
</blockquote></li>
<li><blockquote>
<p>Project ID is successfully generated when the necessary information
is filled and saved/submitted</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Related Business Process</th>
<th>BP-03</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.3o7alnk" class="anchor"></span>*REQ-SYS-004 - View
and Edit a Project*

<table>
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>REQ-SYS-004</th>
</tr>
<tr class="header">
<th>Requirement Title</th>
<th>View or Edit a Project</th>
</tr>
<tr class="odd">
<th>Priority</th>
<th>MUST</th>
</tr>
<tr class="header">
<th>Functional Requirement Description</th>
<th><ul>
<li><blockquote>
<p>Support read-only and edit mode the permission of the user</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Frequency of Use</th>
<th>Daily</th>
</tr>
<tr class="header">
<th>Acceptance Criteria</th>
<th><ul>
<li><blockquote>
<p>The interactable objects are shown and enabled correctly according to
the stage of the project</p>
</blockquote></li>
<li><blockquote>
<p>The information is shown correctly according to the stage of the
project and the permission of the user</p>
</blockquote></li>
<li><blockquote>
<p>Fields are editable according to the Field Rule</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Related Business Process</th>
<th>BP-04</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.23ckvvd" class="anchor"></span>*REQ-SYS-005 - Wish
List*

<table>
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>REQ-SYS-005</th>
</tr>
<tr class="header">
<th>Requirement Title</th>
<th>Wish List</th>
</tr>
<tr class="odd">
<th>Priority</th>
<th>MUST</th>
</tr>
<tr class="header">
<th>Functional Requirement Description</th>
<th><ul>
<li><blockquote>
<p>A page allows users to search for the wishes</p>
</blockquote></li>
<li><blockquote>
<p>Support sorting and filtering</p>
</blockquote></li>
<li><blockquote>
<p>Allow to export the wish list result in file type ".csv" in the Wish
page</p>
</blockquote></li>
<li><blockquote>
<p>Allow to configure the filtering and sorting criteria</p>
</blockquote></li>
<li><blockquote>
<p>Allow to view / edit wish</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Frequency of Use</th>
<th>Daily</th>
</tr>
<tr class="header">
<th>Acceptance Criteria</th>
<th><ul>
<li><blockquote>
<p>Wishes are correctly shown according to the filtering and sorting</p>
</blockquote></li>
<li><blockquote>
<p>The records in the exported wish list are shown correctly according
to the wish list result</p>
</blockquote></li>
<li><blockquote>
<p>File downloaded in the correctly format and naming</p>
</blockquote></li>
<li><blockquote>
<p>Filtering options are shown correctly according to the
configuration</p>
</blockquote></li>
<li><blockquote>
<p>Wish list is sorted by default correctly according to the sorting
configuration</p>
</blockquote></li>
<li><blockquote>
<p>User can view / edit wish by clicking the icon</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Related Business Process</th>
<th>BP-05</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.ihv636" class="anchor"></span>*REQ-SYS-006 - View
or Edit a Wish*

<table>
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>REQ-SYS-006</th>
</tr>
<tr class="header">
<th>Requirement Title</th>
<th>MUST</th>
</tr>
<tr class="odd">
<th>Priority</th>
<th><ul>
<li><blockquote>
<p>Support read-only and edit mode the permission of the user</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="header">
<th>Frequency of Use</th>
<th>Daily</th>
</tr>
<tr class="odd">
<th>Functional Requirement Description</th>
<th><ul>
<li><blockquote>
<p>The interactable objects are shown and enabled correctly according to
the stage of the project</p>
</blockquote></li>
<li><blockquote>
<p>The information is shown correctly according to the stage of the
project and the permission of the user</p>
</blockquote></li>
<li><blockquote>
<p>Fields are editable according to the Field Rule</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="header">
<th>Acceptance Criteria</th>
<th>High</th>
</tr>
<tr class="odd">
<th>Related Business Process</th>
<th>BP-06</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.32hioqz" class="anchor"></span>*REQ-SYS-007 -
Solution List*

<table>
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>REQ-SYS-007</th>
</tr>
<tr class="header">
<th>Requirement Title</th>
<th>Solution List</th>
</tr>
<tr class="odd">
<th>Priority</th>
<th>MUST</th>
</tr>
<tr class="header">
<th>Functional Requirement Description</th>
<th><ul>
<li><blockquote>
<p>A page allows users to search for the solutions</p>
</blockquote></li>
<li><blockquote>
<p>Support sorting and filtering</p>
</blockquote></li>
<li><blockquote>
<p>Allow to export the solution list result in file type ".csv" in the
Solution page</p>
</blockquote></li>
<li><blockquote>
<p>Allow to configure the filtering and sorting criteria</p>
</blockquote></li>
<li><blockquote>
<p>Allow to view / edit solution</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Frequency of Use</th>
<th>Daily</th>
</tr>
<tr class="header">
<th>Acceptance Criteria</th>
<th><ul>
<li><blockquote>
<p>Solutions are correctly shown according to the filtering and
sorting</p>
</blockquote></li>
<li><blockquote>
<p>The records in the exported project list are shown correctly
according to the solution list result</p>
</blockquote></li>
<li><blockquote>
<p>File downloaded in the correctly format and naming</p>
</blockquote></li>
<li><blockquote>
<p>Filtering options are shown correctly according to the
configuration</p>
</blockquote></li>
<li><blockquote>
<p>Solution list is sorted by default correctly according to the sorting
configuration</p>
</blockquote></li>
<li><blockquote>
<p>User can view / edit solution by clicking the icon</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Related Business Process</th>
<th>BP-07</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.1hmsyys" class="anchor"></span>*REQ-SYS-008 - View
and Edit a Solution*

<table>
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>REQ-SYS-008</th>
</tr>
<tr class="header">
<th>Requirement Title</th>
<th>View or Edit a Solution</th>
</tr>
<tr class="odd">
<th>Priority</th>
<th>MUST</th>
</tr>
<tr class="header">
<th>Functional Requirement Description</th>
<th><ul>
<li><blockquote>
<p>Support read-only and edit mode the permission of the user</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Frequency of Use</th>
<th>Daily</th>
</tr>
<tr class="header">
<th>Acceptance Criteria</th>
<th><ul>
<li><blockquote>
<p>The interactable objects are shown and enabled correctly according to
the stage of the solution</p>
</blockquote></li>
<li><blockquote>
<p>The information is shown correctly according to the stage of the
solution and the permission of the user</p>
</blockquote></li>
<li><blockquote>
<p>Fields are editable according to the Field Rule</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Related Business Process</th>
<th>BP-08</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.41mghml" class="anchor"></span>*REQ-SYS-009 -
Report List*

<table>
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>REQ-SYS-009</th>
</tr>
<tr class="header">
<th>Requirement Title</th>
<th>Report List</th>
</tr>
<tr class="odd">
<th>Priority</th>
<th>MUST</th>
</tr>
<tr class="header">
<th>Functional Requirement Description</th>
<th><ul>
<li><blockquote>
<p>Support sorting and filtering</p>
</blockquote></li>
<li><blockquote>
<p>Allow to export the report list result in file type ".csv" in the
Report page</p>
</blockquote></li>
<li><blockquote>
<p>Allow to configure the filtering and sorting criteria</p>
</blockquote></li>
<li><blockquote>
<p>Allow to view / edit report</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Frequency of Use</th>
<th>Daily</th>
</tr>
<tr class="header">
<th>Acceptance Criteria</th>
<th><ul>
<li><blockquote>
<p>Reports are correctly shown according to the filtering and
sorting</p>
</blockquote></li>
<li><blockquote>
<p>The records in the exported report list are shown correctly according
to the report list result</p>
</blockquote></li>
<li><blockquote>
<p>File downloaded in the correctly format and naming</p>
</blockquote></li>
<li><blockquote>
<p>Filtering options are shown correctly according to the
configuration</p>
</blockquote></li>
<li><blockquote>
<p>Report list is sorted by default correctly according to the sorting
configuration</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Related Business Process</th>
<th>BP-09</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.2grqrue" class="anchor"></span>*REQ-SYS-010 - View
Report*

<table>
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>REQ-SYS-010</th>
</tr>
<tr class="header">
<th>Requirement Title</th>
<th>View Report</th>
</tr>
<tr class="odd">
<th>Priority</th>
<th>MUST</th>
</tr>
<tr class="header">
<th>Functional Requirement Description</th>
<th><ul>
<li><blockquote>
<p>Support read-only mode the permission of the user</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Frequency of Use</th>
<th>Daily</th>
</tr>
<tr class="header">
<th>Acceptance Criteria</th>
<th><ul>
<li><blockquote>
<p>The interactable objects are shown and enabled correctly according to
the stage of the report</p>
</blockquote></li>
<li><blockquote>
<p>The information is shown correctly according to the stage of the
report</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Related Business Process</th>
<th>BP-10</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.vx1227" class="anchor"></span>*REQ-SYS-011 - Log
List*

<table>
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>REQ-SYS-011</th>
</tr>
<tr class="header">
<th>Requirement Title</th>
<th>Log List</th>
</tr>
<tr class="odd">
<th>Priority</th>
<th>High</th>
</tr>
<tr class="header">
<th>Functional Requirement Description</th>
<th><ul>
<li><blockquote>
<p>Support sorting and filtering</p>
</blockquote></li>
<li><blockquote>
<p>Allow to export the log list result in file type ".csv" in the Report
page</p>
</blockquote></li>
<li><blockquote>
<p>Allow to configure the filtering and sorting criteria</p>
</blockquote></li>
<li><blockquote>
<p>Allow to view / edit log</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Frequency of Use</th>
<th>Daily</th>
</tr>
<tr class="header">
<th>Acceptance Criteria</th>
<th><ul>
<li><blockquote>
<p>Logs are correctly shown according to the filtering and sorting</p>
</blockquote></li>
<li><blockquote>
<p>The records in the exported log list are shown correctly according to
the log list result</p>
</blockquote></li>
<li><blockquote>
<p>File downloaded in the correctly format and naming</p>
</blockquote></li>
<li><blockquote>
<p>Filtering options are shown correctly according to the
configuration</p>
</blockquote></li>
<li><blockquote>
<p>Log list is sorted by default correctly according to the sorting
configuration</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Related Business Process</th>
<th>BP-11</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.3fwokq0" class="anchor"></span>*REQ-SYS-012 - View
Log List*

<table>
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>REQ-SYS-012</th>
</tr>
<tr class="header">
<th>Requirement Title</th>
<th>View Log List</th>
</tr>
<tr class="odd">
<th>Priority</th>
<th>MUST</th>
</tr>
<tr class="header">
<th>Functional Requirement Description</th>
<th><ul>
<li><blockquote>
<p>Support read-only mode the permission of the user</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Frequency of Use</th>
<th>Daily</th>
</tr>
<tr class="header">
<th>Acceptance Criteria</th>
<th><ul>
<li><blockquote>
<p>The interactable objects are shown</p>
</blockquote></li>
<li><blockquote>
<p>The information is shown correctly</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Related Business Process</th>
<th>BP-11</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.1v1yuxt" class="anchor"></span>*REQ-SYS-013 -
Upload Files*

<table>
<colgroup>
<col style="width: 28%" />
<col style="width: 71%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>REQ-SYS-013</th>
</tr>
<tr class="header">
<th>Requirement Title</th>
<th>Upload Files</th>
</tr>
<tr class="odd">
<th>Priority</th>
<th>MUST</th>
</tr>
<tr class="header">
<th>Functional Requirement Description</th>
<th><ul>
<li><blockquote>
<p>Allow users to upload multiple formats of files, such as pdf, jpeg,
docx, xls</p>
</blockquote></li>
<li><blockquote>
<p>Users can replace the files</p>
</blockquote></li>
<li><blockquote>
<p>The files can be deleted</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Frequency of Use</th>
<th>Daily</th>
</tr>
<tr class="header">
<th>Acceptance Criteria</th>
<th><ul>
<li><blockquote>
<p>Files can successfully be uploaded</p>
</blockquote></li>
<li><blockquote>
<p>The documents are successfully uploaded according to the system
limits (e.g. files types and file size)</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th>Related Business Process</th>
<th>BP-12</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.4f1mdlm" class="anchor"></span>*<u>Non-functional
Requirements</u>*

<span id="_heading=h.2u6wntf" class="anchor"></span>*List of Functional
Requirements*

| **Req. ID** | **Category**                 | **Requirement Title**      | **Target Users** | **Priority** |
|------------|---------------|-----------------|---------------|---------------|
| REQ-SR-001  | System Requirements          | Response Time              | User             | M            |
| REQ-SR-002  | System Requirements          | Service Time               | User             | M            |
| REQ-SR-003  | System Requirements          | Export                     | User             | M            |
| REQ-SR-004  | System Requirements          | Scalability                | User             | M            |
| REQ-SR-005  | System Requirements          | System Performance         | User             | M            |
| REQ-UR-001  | User Requirements            | User Interface Requirement | User             | M            |
| REQ-SCR-001 | System Controls Requirements | Function Access Rights     | User             | M            |
| REQ-SCR-002 | System Controls Requirements | Access to Data             | User             | M            |
| REQ-SCR-003 | System Controls Requirements | System Backup              | User             | M            |

<span id="_heading=h.19c6y18" class="anchor"></span>*REQ-SR-001 Response
Time*

Requirements Description:

| Item                                   | Description                                                                                                                        |
|--------------------|----------------------------------------------------|
| Requirement ID                         | REQ-SR-001                                                                                                                         |
| Category                               | System Requirements                                                                                                                |
| Requirement title                      | Response Time                                                                                                                      |
| Priority                               | M                                                                                                                                  |
| Non-functional requirement description | The response time for predefined query should be 95% within 5 seconds, subject to confirmation of the selected technical solution. |

<span id="_heading=h.3tbugp1" class="anchor"></span>*REQ-SR-002 Service
Time*

Requirements Description:

<table>
<colgroup>
<col style="width: 27%" />
<col style="width: 72%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>REQ-SR-002</th>
</tr>
<tr class="header">
<th>Category</th>
<th>System Requirements</th>
</tr>
<tr class="odd">
<th>Requirement title</th>
<th>Service Time</th>
</tr>
<tr class="header">
<th>Priority</th>
<th>M</th>
</tr>
<tr class="odd">
<th>Non-functional requirement description</th>
<th><ol type="1">
<li><p>The access to the new system would be 08:00 to 20:00 daily, and
late night provisionally. 7x24 availability is not required.</p></li>
<li><p>Achieve availability of 99.0% (i.e. unscheduled downtime could
not exceed 7.2 minutes per day or 1.83 days per year on
average).</p></li>
</ol></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.28h4qwu" class="anchor"></span>*REQ-SR-003 Export*

Requirements Description:

| Item                                   | Description                                                                                    |
|--------------------|----------------------------------------------------|
| Requirement ID                         | REQ-SR-003                                                                                     |
| Category                               | System Requirements                                                                            |
| Requirement title                      | Export                                                                                         |
| Priority                               | M                                                                                              |
| Non-functional requirement description | Allow data of tables to be exported in different external easy-readable formats such as Excel. |

<span id="_heading=h.nmf14n" class="anchor"></span>*REQ-SR-004
Scalability*

Requirements Description:

| Item                                   | Description                                                                          |
|--------------------|----------------------------------------------------|
| Requirement ID                         | REQ-SR-004                                                                           |
| Category                               | System Requirements                                                                  |
| Requirement title                      | Scalability                                                                          |
| Priority                               | M                                                                                    |
| Non-functional requirement description | Provide scalability options of hardware, software, etc. for future system expansion. |

<span id="_heading=h.37m2jsg" class="anchor"></span>*REQ-SR-005 System
Performance*

Requirements Description:

| Item                                   | Description                                                                                |
|--------------------|----------------------------------------------------|
| Requirement ID                         | REQ-SR-005                                                                                 |
| Category                               | System Requirements                                                                        |
| Requirement title                      | System Performance                                                                         |
| Priority                               | M                                                                                          |
| Non-functional requirement description | Provide technically sound architecture to meet response time and agreed performance level. |

<span id="_heading=h.1mrcu09" class="anchor"></span>*REQ-UR-001 User
Interface Requirement*

Requirements Description:

<table>
<colgroup>
<col style="width: 26%" />
<col style="width: 73%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>REQ-UR-001</th>
</tr>
<tr class="header">
<th>Category</th>
<th>User Requirements</th>
</tr>
<tr class="odd">
<th>Requirement title</th>
<th>User Interface Requirement</th>
</tr>
<tr class="header">
<th>Priority</th>
<th>M</th>
</tr>
<tr class="odd">
<th>Non-functional requirement description</th>
<th><ol type="1">
<li><p>The user-interfaces and graphical user interface (GUI) must be
user-friendly. Based on the user profile, personalised views can be
provided. The interface of the solution should be consistent with
web-based applications.</p></li>
<li><p>Adopt responsive web design to adjust layout according to
different screen sizes in order to facilitate users’ browsing experience
in devices including but not limited to desktops, tablets and mobile
phones.</p></li>
<li><p>Function and display properly in multiple browsers including
Internet Explorer and Chrome with Apollo support version.</p></li>
</ol></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.46r0co2" class="anchor"></span>*REQ-SCR-001
Function Access Rights*

Requirements Description:

| Item                                   | Description                                                                                                                                                        |
|--------------------|----------------------------------------------------|
| Requirement ID                         | REQ-SCR-001                                                                                                                                                        |
| Category                               | System Controls Requirements                                                                                                                                       |
| Requirement title                      | Function Access Rights                                                                                                                                             |
| Priority                               | M                                                                                                                                                                  |
| Non-functional requirement description | Able to define various user access rights of functions according to operations or user levels (access right can be assigned to the user group or individual user). |

<span id="_heading=h.2lwamvv" class="anchor"></span>*REQ-SCR-002 Access
to Data*

Requirements Description:

<table>
<colgroup>
<col style="width: 26%" />
<col style="width: 73%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>REQ-SCR-002</th>
</tr>
<tr class="header">
<th>Category</th>
<th>System Controls Requirements</th>
</tr>
<tr class="odd">
<th>Requirement title</th>
<th>Access to Data</th>
</tr>
<tr class="header">
<th>Priority</th>
<th>M</th>
</tr>
<tr class="odd">
<th>Non-functional requirement description</th>
<th><ol type="1">
<li><p>Able to define access rights for users to access particular data
and also on a conditional basis.</p></li>
<li><p>Able to define access monitoring for the selected data.</p></li>
</ol></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.111kx3o" class="anchor"></span>*REQ-SCR-003 System
Backup*

Requirements Description:

| Item                                   | Description                                                                                            |
|--------------------|----------------------------------------------------|
| Requirement ID                         | REQ-SCR-003                                                                                            |
| Category                               | System Controls Requirements                                                                           |
| Requirement title                      | System Backup                                                                                          |
| Priority                               | M                                                                                                      |
| Non-functional requirement description | Able to meet general backup requirements including data and system; and all audit logging information. |

<span id="_heading=h.3l18frh" class="anchor"></span>*<u>Technical
Requirements</u>*

<span id="_heading=h.206ipza" class="anchor"></span>*List of Technical
Requirements:*

| Req. ID    | Requirement Title                   | Priority | Category                                |
|-------------|--------------------|--------|---------------------------------|
| TR-SBR-001 | Server House Keeping                | M        | System Backup and Recovery Requirements |
| TR-SBR-002 | Backup, Recovery and System Archive | M        | System Backup and Recovery Requirements |
| TR-DRR-001 | System disaster recovery            | M        | Disaster Recovery Requirements          |

<span id="_heading=h.4k668n3" class="anchor"></span>*TR-SBR-001 Server
House Keeping*

Technical requirements description:

| Item                              | Description                                        |
|--------------------|----------------------------------------------------|
| Requirement ID                    | TR-SBR-001                                         |
| Requirement title                 | Server House Keeping                               |
| Priority                          | M                                                  |
| Category                          | System Backup and Recovery Requirements            |
| Technical requirement description | System logs must be archived to backup tape weekly |

<span id="_heading=h.2zbgiuw" class="anchor"></span>*TR-SBR-002 Backup,
Recovery and System Archive*

Technical requirements description:

<table>
<colgroup>
<col style="width: 27%" />
<col style="width: 72%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>TR-SBR-002</th>
</tr>
<tr class="header">
<th>Requirement title</th>
<th>Backup, Recovery and System Archive</th>
</tr>
<tr class="odd">
<th>Priority</th>
<th>M</th>
</tr>
<tr class="header">
<th>Category</th>
<th>System Backup and Recovery Requirements</th>
</tr>
<tr class="odd">
<th>Technical requirement description</th>
<th><ol type="1">
<li><p>Provide daily backup</p></li>
<li><p>Provide weekly system backup</p></li>
<li><p>Provide 2 generations of system backup stored off-site</p></li>
<li><p>Provide system activity logs and reports</p></li>
</ol></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.1egqt2p" class="anchor"></span>*TR-DRR-001 System
Disaster Recovery*

Technical requirements description:

<table>
<colgroup>
<col style="width: 26%" />
<col style="width: 73%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
<tr class="odd">
<th>Requirement ID</th>
<th>TR-DRR-001</th>
</tr>
<tr class="header">
<th>Requirement title</th>
<th>System Disaster Recovery</th>
</tr>
<tr class="odd">
<th>Priority</th>
<th>M</th>
</tr>
<tr class="header">
<th>Category</th>
<th>System Backup and Recovery Requirements</th>
</tr>
<tr class="odd">
<th>Technical requirement description</th>
<th><ol type="1">
<li><p>Participate in the disaster recovery activities and complete all
activities assigned following the procedures in the disaster recovery
plan.</p></li>
<li><p>Co-ordinate with new system user to participate in the disaster
recovery activities.</p></li>
<li><p>Resume the whole system from disaster recovery site to normal
production environment.</p></li>
</ol></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<span id="_heading=h.3ygebqi" class="anchor"></span>***System
Specification***

| Item | Category             | System Functions              |
|------|----------------------|-------------------------------|
| 1    | Information Viewing  | View Project List and Detail  |
| 2    | Content Management   | Create a Project              |
| 3    | Content Management   | Edit a Project                |
| 4    | Information Viewing  | Search Projects               |
| 5    | Information Viewing  | Filter Projects               |
| 6    | Workflow Application | Export Projects               |
| 7    | Information Viewing  | View Wish List and Detail     |
| 8    | Content Management   | Edit a Wish                   |
| 9    | Information Viewing  | Search Wishes                 |
| 10   | Information Viewing  | Filter Wishes                 |
| 11   | Workflow Application | Export Wishes                 |
| 12   | Information Viewing  | View Solution List and Detail |
| 13   | Content Management   | Edit a Solution               |
| 14   | Information Viewing  | Search Solutions              |
| 15   | Information Viewing  | Filter Solutions              |
| 16   | Workflow Application | Export Solutions              |
| 17   | Information Viewing  | View Report List and Detail   |
| 18   | Workflow Application | Export Report                 |
| 19   | Information Viewing  | View Log List and Detail      |
| 20   | Content Management   | Cancel Reminder for Log       |

<span id="_heading=h.2dlolyb" class="anchor"></span>***Architecture
Design***

<img src="media/image37.jpg" style="width:3.78125in;height:4.44792in" />

The proposed INTPMIS is a web-based application which is built using
Node.js, Vue.js, and MySQL. INTPMIS is designed for bridging the
information and collaboration between different users. It interfaces
with the online platform E&M InnoPortal to obtain relevant project

data, such as the wish table, project table, and solution table, stored
in INTPMIS MySQL database. Users are allowed to fill information and
match records via the web user interface which is built by Vue.js. The
key features of the system are record searching, record filtering, and
report generation.

<span id="_heading=h.sqyw64" class="anchor"></span>***Selected Technical
System Option***

Node.js and MySQL are applied for the backend of the system when the
Vue.js is the frontend of the system.

Node.js is an open source, cross-platform runtime environment for
developing server-side and networking applications. Node.js applications
are written in JavaScript, and can be run within the Node.js runtime on
OS X, Microsoft Windows, and Linux.

Node.js also provides a rich library of various JavaScript modules which
simplifies the development of web applications using Node.js to a great
extent.

MySQL is an open source relational database management system. It is
based on the structure query language (SQL), which is used for adding,
removing, and modifying information in the database.

Vue.js is a library for building interactive web interfaces. The goal of
Vue.js is to provide the benefits of reactive data binding and
composable view components with an API that is as simple as possible.

<span id="_heading=h.3cqmetx" class="anchor"></span>***Hardware &
Software Procurement***

<span id="_heading=h.1rvwp1q" class="anchor"></span>*<u>Hardware
Procurement</u>*

UAT stage:

<u>App Server</u>

OS Windows Server 2019

CPU 2.8 quad-core GHz

RAM 8 GB

Disk 100 GB

<u>Database Server</u>

OS Windows Server 2019

CPU 2.8 quad-core GHz

RAM 8 GB

Disk 150 GB

Production stage:

<u>App Server</u>

OS Windows Server 2019

CPU 2.8 quad-core GHz

RAM 8 GB

Disk 100 GB

<u>Database Server</u>

OS Windows Server 2019

CPU 2.8 quad-core GHz

RAM 8 GB

Disk 150 GB

<span id="_heading=h.4bvk7pj" class="anchor"></span>*<u>Software
Procurement</u>*

N/A

<span id="_heading=h.2r0uhxc" class="anchor"></span>***Programme Flow
with Pseud-code Based, Software Module and Wireframe Mock-up***

<table>
<colgroup>
<col style="width: 65%" />
<col style="width: 34%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Mock-up</strong></th>
<th><strong>Pseud-code</strong></th>
</tr>
<tr class="odd">
<th colspan="2">SSO Login</th>
</tr>
<tr class="header">
<th colspan="2"><p>User gets an authentication ID from EMSD Active
Directory. Then the system will call LDAP API to get users
authentication code and information by the staff ID.</p>
<p>If login is successful, the landing page will be shown.</p>
<p>Otherwise, the user name login page will be shown.</p></th>
</tr>
<tr class="odd">
<th colspan="2">User name Login</th>
</tr>
<tr class="header">
<th><img src="media/image33.png"
style="width:4.15625in;height:2.68056in" /></th>
<th><p>1. Open a browser (Internet Explorer/ Chrome)</p>
<p>2. Go to http://intpmis/#/login</p>
<p>3. Input email address and password</p>
<p>4. click "Sign In" button</p></th>
</tr>
<tr class="odd">
<th><img src="media/image30.png"
style="width:4.15625in;height:2.02778in" /></th>
<th><p>Case 1: Login successfully</p>
<p>The page is navigated to the landing page</p></th>
</tr>
<tr class="header">
<th><img src="media/image36.png"
style="width:4.13873in;height:1.80035in" /></th>
<th><p>Case 2: Login fail</p>
<p>The error prompt is shown.</p></th>
</tr>
<tr class="odd">
<th colspan="2">Create Project</th>
</tr>
<tr class="header">
<th><img src="media/image20.jpg"
style="width:4.15625in;height:1.88889in" /></th>
<th>Click “Create” under “Project Management"</th>
</tr>
<tr class="odd">
<th><img src="media/image12.png"
style="width:4.15625in;height:5.98611in" /></th>
<th><p>1. Fill the required fields</p>
<p>2. Click “Submit” button</p></th>
</tr>
<tr class="header">
<th><img src="media/image19.png"
style="width:4.15625in;height:1.23611in" /></th>
<th><p>Case 1: Input field is not filled</p>
<p>The error message is shown under the field</p></th>
</tr>
<tr class="odd">
<th><p><img src="media/image25.png"
style="width:4.15625in;height:2.02778in" /></p>
<p><img src="media/image6.png"
style="width:4.15625in;height:1.98611in" /></p></th>
<th><p>Case 2: Value is not valid</p>
<p>The error message is shown</p></th>
</tr>
<tr class="header">
<th><p><img src="media/image11.png"
style="width:4.15625in;height:1.73611in" /></p>
<p><img src="media/image14.jpg"
style="width:4.15625in;height:2.06944in" /></p></th>
<th><p>Case 3: Project is created successfully</p>
<p>A successful message is shown with the project number</p>
<p>1. Click “X” to redirect to project view page</p></th>
</tr>
<tr class="odd">
<th colspan="2">Edit Project</th>
</tr>
<tr class="header">
<th><img src="media/image2.jpg"
style="width:4.15625in;height:2.05556in" /></th>
<th><p>1. Click “Edit” under “Project Management”</p>
<p>2. Click edit icon to edit the project</p></th>
</tr>
<tr class="odd">
<th><img src="media/image10.png"
style="width:4.15625in;height:6.51389in" /></th>
<th><p>To edit information of the project, users can:</p>
<p>1. select completed</p>
<p>2. input values</p>
<p>3. empty input</p>
<p>Then click “Save All” button</p></th>
</tr>
<tr class="header">
<th><img src="media/image3.png"
style="width:4.09359in;height:1.21701in" /></th>
<th><p>Case 1: Invalid input</p>
<p>The alert message is shown</p></th>
</tr>
<tr class="odd">
<th><img src="media/image5.png"
style="width:4.11589in;height:1.68576in" /></th>
<th><p>Case 2: Save successfully</p>
<p>The successful message is shown</p></th>
</tr>
<tr class="header">
<th colspan="2">View Project</th>
</tr>
<tr class="odd">
<th><img src="media/image14.jpg"
style="width:4.15625in;height:2.06944in" /></th>
<th><p>1. Click “View” under “Project Management”</p>
<p>2. Scoll the bottom bar to the right to show the project
detail</p></th>
</tr>
<tr class="header">
<th colspan="2">Filter Project</th>
</tr>
<tr class="odd">
<th><img src="media/image8.png"
style="width:4.15625in;height:1.93056in" /></th>
<th><p>1. Input filter value</p>
<p>2. Select display number of record per page</p>
<p>3. The results are shown</p></th>
</tr>
<tr class="header">
<th colspan="2">Search Project</th>
</tr>
<tr class="odd">
<th><img src="media/image9.png"
style="width:4.15625in;height:2.43056in" /></th>
<th><p>1. Click search section</p>
<p>2. Select search criteria</p>
<p>3. Select values of criteria</p>
<p>4. Click “Search” button</p>
<p>5. The results are shown</p></th>
</tr>
<tr class="header">
<th colspan="2">Export Project</th>
</tr>
<tr class="odd">
<th><p><img src="media/image4.png"
style="width:4.15625in;height:2.31944in" /></p>
<p><img src="media/image54.png"
style="width:4.15625in;height:0.98611in" /></p></th>
<th><p>There are two options for exporting project</p>
<p>1. Export searched records</p>
<ul>
<li><blockquote>
<p>Click “Export Records” button</p>
</blockquote></li>
</ul>
<p>2. Export all records</p>
<ol type="1">
<li><blockquote>
<p>Click “Export All Records” button</p>
</blockquote></li>
</ol>
<p>The exported results will be stored in a csv file</p></th>
</tr>
<tr class="header">
<th colspan="2">Edit Wish</th>
</tr>
<tr class="odd">
<th><img src="media/image1.png"
style="width:4.15625in;height:4.86111in" /></th>
<th><p>1. Input value to edit</p>
<p>2. Click “Save All” button</p></th>
</tr>
<tr class="header">
<th><img src="media/image3.png"
style="width:4.09359in;height:1.21701in" /></th>
<th><p>Case 1: Invalid input</p>
<p>An alert message is shown</p></th>
</tr>
<tr class="odd">
<th><img src="media/image7.png"
style="width:4.07024in;height:1.16493in" /></th>
<th><p>Case 2: Wish is edited successfully</p>
<p>An alert message is shown</p></th>
</tr>
<tr class="header">
<th colspan="2">View Wish</th>
</tr>
<tr class="odd">
<th><img src="media/image15.jpg"
style="width:4.15625in;height:2.04167in" /></th>
<th><p>1. Click “View” under “Wish Management”</p>
<p>2. Scroll the bottom bar to right to view detail of the wish</p></th>
</tr>
<tr class="header">
<th colspan="2">Search Wish</th>
</tr>
<tr class="odd">
<th><img src="media/image17.png"
style="width:4.15625in;height:2.31944in" /></th>
<th><p>1. Click search section</p>
<p>2. Select search criteria</p>
<p>3. Select values of criteria</p>
<p>4. Click “Search” button</p>
<p>5. The results are shown</p></th>
</tr>
<tr class="header">
<th colspan="2">Filter Wish</th>
</tr>
<tr class="odd">
<th><img src="media/image18.png"
style="width:4.15625in;height:1.81944in" /></th>
<th><p>1. Input filter value</p>
<p>2. Select display number of record per page</p>
<p>3. The results are shown</p></th>
</tr>
<tr class="header">
<th colspan="2">Export Wish</th>
</tr>
<tr class="odd">
<th><p><img src="media/image23.png"
style="width:4.15625in;height:2.31944in" /></p>
<p><img src="media/image22.png"
style="width:4.15625in;height:1.72222in" /></p></th>
<th><p>There are two options for exporting wish</p>
<p>1. Export searched records</p>
<ul>
<li><blockquote>
<p>Click “Export Records” button</p>
</blockquote></li>
</ul>
<p>2. Export all records</p>
<ol start="2" type="1">
<li><blockquote>
<p>Click “Export All Records” button</p>
</blockquote></li>
</ol>
<p>The exported results will be stored in a csv file</p></th>
</tr>
<tr class="header">
<th colspan="2">Edit Solution</th>
</tr>
<tr class="odd">
<th><img src="media/image27.png"
style="width:4.15625in;height:3.91667in" /></th>
<th><p>1. Input value to edit</p>
<p>2. Click “Save All” button</p></th>
</tr>
<tr class="header">
<th><img src="media/image3.png"
style="width:4.09359in;height:1.21701in" /></th>
<th><p>Case 1: Invalid input</p>
<p>An alert message is shown</p></th>
</tr>
<tr class="odd">
<th><img src="media/image47.png"
style="width:4.07731in;height:0.92535in" /></th>
<th><p>Case 2: Solution is edited successfully</p>
<p>An alert message is shown</p></th>
</tr>
<tr class="header">
<th colspan="2">View Solution</th>
</tr>
<tr class="odd">
<th><img src="media/image28.jpg"
style="width:4.15625in;height:1.97222in" /></th>
<th><p>1. Click “View” under “Solution Management”</p>
<p>2. Scroll the bottom bar to right to view detail of the
solution</p></th>
</tr>
<tr class="header">
<th colspan="2">Search Solution</th>
</tr>
<tr class="odd">
<th><img src="media/image35.png"
style="width:4.15625in;height:2.41667in" /></th>
<th><p>1. Click search section</p>
<p>2. Select search criteria</p>
<p>3. Select values of criteria</p>
<p>4. Click “Search” button</p>
<p>5. The results are shown</p></th>
</tr>
<tr class="header">
<th colspan="2">Filter Solution</th>
</tr>
<tr class="odd">
<th><img src="media/image34.png"
style="width:4.15625in;height:1.81944in" /></th>
<th><p>1. Input filter value</p>
<p>2. Select display number of record per page</p>
<p>3. The results are shown</p></th>
</tr>
<tr class="header">
<th colspan="2">Export Solution</th>
</tr>
<tr class="odd">
<th><img src="media/image21.png"
style="width:4.15625in;height:2.41667in" /></th>
<th><p>There are two options for exporting solution</p>
<p>1. Export searched records</p>
<ul>
<li><blockquote>
<p>Click “Export Records” button</p>
</blockquote></li>
</ul>
<p>2. Export all records</p>
<ol start="3" type="1">
<li><blockquote>
<p>Click “Export All Records” button</p>
</blockquote></li>
</ol>
<p>The exported results will be stored in a csv file</p></th>
</tr>
<tr class="header">
<th colspan="2">View Report</th>
</tr>
<tr class="odd">
<th><img src="media/image16.jpg"
style="width:4.15625in;height:1.84722in" /></th>
<th><p>1. Click “View” under “Report Management"</p>
<p>2. Scroll down to view more reports</p></th>
</tr>
<tr class="header">
<th colspan="2">Print Report</th>
</tr>
<tr class="odd">
<th><img src="media/image26.png"
style="width:4.15625in;height:2.86111in" /></th>
<th><p>1. Select the period of the report</p>
<p>2. Select the other day for the report</p>
<p>3. Click “Confirm” button</p>
<p>4. The report is shown</p>
<p>5. Click “Print” to print all report</p></th>
</tr>
<tr class="header">
<th colspan="2">View and Export Log</th>
</tr>
<tr class="odd">
<th><img src="media/image13.png"
style="width:4.15625in;height:1.93056in" /></th>
<th><p>1. Select tag type of log</p>
<p>2. Log records are shown in list</p>
<p>3. Click “+” button to view log detail</p>
<p>4. Click “Export Records” button to export records to a csv
file</p></th>
</tr>
<tr class="header">
<th colspan="2">Cancel Reminder</th>
</tr>
<tr class="odd">
<th><img src="media/image24.png"
style="width:4.15625in;height:1.93056in" /></th>
<th><p>There are two options to cancel reminder(s):</p>
<p>1. Click checked button to cancel the reminder of a record</p>
<p>2. Select multiple records and click batch checked to cancel reminder
of selected records</p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>
