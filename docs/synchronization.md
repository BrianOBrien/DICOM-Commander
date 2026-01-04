# Synchronization via C-MOVE

In DICOM Commander, **synchronization** means:

> Instructing a source DICOM server to send studies or series directly to a destination DICOM server using C-MOVE.

## What Synchronization Is

- Server-to-server transfer
- Controlled by a MOVE SCU
- Uses standard Query/Retrieve semantics

## What Synchronization Is NOT

- Not a local download
- Not a file copy
- Not C-GET
- Not a storage operation

## Important Implication

DICOM Commander never receives:
- Pixel data
- DICOM instances
- Encapsulated payloads

It only receives:
- Status responses
- Progress notifications
- Final success or failure codes
