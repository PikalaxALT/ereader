#ifndef GUARD_LIBCEREADER_H
#define GUARD_LIBCEREADER_H

#define EREADER_XFR_STATE_INIT          0
#define EREADER_XFR_STATE_HANDSHAKE     1
#define EREADER_XFR_STATE_START         2
#define EREADER_XFR_STATE_TRANSFER      3
#define EREADER_XFR_STATE_TRANSFER_DONE 4
#define EREADER_XFR_STATE_CHECKSUM      5
#define EREADER_XFR_STATE_DONE          6

#define EREADER_XFER_EXE 1
#define EREADER_XFER_CHK 2
#define EREADER_XFER_SHIFT 0
#define EREADER_XFER_MASK  3

#define EREADER_CANCEL_TIMEOUT 1
#define EREADER_CANCEL_KEY     2
#define EREADER_CANCEL_MASK  0xC
#define EREADER_CANCEL_SHIFT 2

#define EREADER_CHECKSUM_OK  1
#define EREADER_CHECKSUM_ERR 2
#define EREADER_CHECKSUM_MASK  0x30
#define EREADER_CHECKSUM_SHIFT 4

struct SendRecvMgr
{
    u8 master_slave;       // 0: clock slave; 1: clock master
    u8 state;              // EREADER_XFR_STATE_*
    u8 xferState;          // EREADER_XFER_*
    u8 checksumResult;     // EREADER_CHECKSUM_*
    u8 cancellationReason; // EREADER_CANCEL_*
    u32 * dataptr;         // Payload source or destination
    int cursor;            // Index of the next word
    int size;              // Last word index
    u32 checksum;          // Validation checksum
};

static struct SendRecvMgr gUnknown_2033B70;

#endif //GUARD_LIBCEREADER_H
