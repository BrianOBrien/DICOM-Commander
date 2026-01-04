# Decision: No Local Retrieval

DICOM Commander does not support C-GET or local image retrieval.

## Rationale

- Avoid storage complexity
- Avoid partial transfers
- Avoid acting as a PACS
- Preserve server-to-server semantics

This decision is intentional and foundational.
