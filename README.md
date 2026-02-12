# Expert Team on Information Management

## Terms of Reference
1. In close collaboration with SERCOM, lead a critical review of the Manual on High Quality Global Data Management Framework for Climate (WMO-No. 1238), ensuring consistency with the WMO Earth system approach and harmonization of the standard and recommended practices related to climate data and observations across the Technical Regulations.
2. Maintain and develop recommended practices and technical guidance material for information management to meet the needs of Members:
<ol type="a" style="margin-left:2em;">
<li>Develop technical guidance on implementing FAIR Principles and support the development of a FAIR scoreboard for data shared on WIS2;</li>
<li>In close collaboration with SERCOM, review and develop technical resources and best practices related to historical records management and data rescue;</li>
<li>In close collaboration with SERCOM and HMEI, develop the minimum technical specifications of a climate data management system deemed compliant with the WMO Climate Data Management System Specifications (WMO-No. 1131).</li>
</ol>

3. Review and propose updates to incorporate standards and practices for information management in the Manual on WIS (WMO No. 1060) and Guide to the WIS (WMO No. 1061).

## Active Sub-groups

### Sub-group 1: ToR 1
Critical review of the Manual on High Quality Global Data Management Framework for Climate (WMO-No. 1238).

Working area: SharePoint / MS Word
Meeting materials: link:sg1/[sg1/]

### Sub-group 2: ToR 2a
In close collaboration with SERCOM and HMEI, develop the minimum technical specifications of a climate data management system deemed compliant with the WMO Climate Data Management System Specifications (WMO-No. 1131).

Meeting materials: link:sg2/[sg2/]
Related: https://github.com/wmo-im/cdms-functional-requirements

## Repository Structure

```
├── sg1/                    # Sub-group 1 (ToR 1)
│   ├── meetings/           # Meeting agendas and summaries
│   └── README.md
├── sg2/                    # Sub-group 2 (ToR 2a)
│   ├── meetings/           # Meeting agendas and summaries
│   └── README.md
└── clause.md               # Instructions for transcript processing
```

## Compiling Meeting Summaries

Meeting summaries are written in AsciiDoc format. To compile them to Word (docx), PDF, or HTML, use Docker with the provided Dockerfile and Makefile.

### Prerequisites

- [Docker](https://www.docker.com/)

### Build the Docker Image

```bash
docker build -t et-im-docs .
```

### Usage

Run the make commands inside the Docker container:

```bash
# Compile to Word (.docx)
docker run --rm -v $(pwd):/documents et-im-docs make summary-docx FILE=sg2/meetings/2026-01-23/summary.adoc

# Compile to PDF
docker run --rm -v $(pwd):/documents et-im-docs make summary-pdf FILE=sg2/meetings/2026-01-23/summary.adoc

# Compile to HTML
docker run --rm -v $(pwd):/documents et-im-docs make summary-html FILE=sg2/meetings/2026-01-23/summary.adoc
```

Output files are created in the same directory as the source file.