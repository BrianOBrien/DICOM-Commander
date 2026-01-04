# Troubleshooting

## C-ECHO Fails

- Verify Called AE Title
- Verify port and host
- Check association logs on the remote system

## C-FIND Returns No Results

- Confirm QueryRetrieveLevel
- Confirm supported root (Study vs Patient)
- Validate requested keys

## C-MOVE Completes but No Images Arrive

This is the most common issue.

Check:
- Destination AE Title correctness
- Destination is reachable from source
- Destination is configured as Storage SCP
- Source PACS permissions

DICOM Commander is not in the image path.
