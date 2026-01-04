# DICOM Roles and Responsibilities

Understanding DICOM roles is essential to using DICOM Commander correctly.

## DICOM Commander

- Verification SCU (C-ECHO)
- Query SCU (C-FIND)
- Move SCU (C-MOVE)

## Source System (PACS)

- Query/Retrieve SCP
- Responsible for:
  - Evaluating queries
  - Performing authorization
  - Sending images

## Destination System

- Storage SCP
- Must accept incoming C-STORE requests from the source

## Common Misconception

DICOM Commander is **not** a Storage SCP.

If a C-MOVE succeeds but no images arrive, the issue is always between:
- Source PACS
- Destination PACS
