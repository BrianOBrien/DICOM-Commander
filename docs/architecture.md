# Architecture Overview

DICOM Commander operates purely as a **network control client**.

It never stores pixel data and never acts as a Storage SCP.

## High-Level Flow

1. Verify connectivity using C-ECHO
2. Discover studies or series using C-FIND
3. Synchronize selected objects using C-MOVE

## Key Architectural Constraint

All pixel data flows directly:

Source PACS → Destination PACS

DICOM Commander remains outside the data path.

## Why This Matters

- No disk management
- No storage lifecycle
- No partial transfers
- Clear responsibility boundaries

Failures are always attributable to:
- Association negotiation
- Query semantics
- Move authorization
- Destination availability
