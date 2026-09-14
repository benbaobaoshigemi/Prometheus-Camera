#pragma once
#include <cstddef>
#include <cstdint>

// MiMetadata::find is a Xiaomi entry, not camera_metadata_entry_t.
// Current OS4 metadatautils b63c..b664 writes tag +0, type +8,
// count +16 and data +24. Confirmed by live module=256 return bytes.
struct MetadataEntry {
    uint32_t tag;
    uint32_t reserved_04;
    uint32_t type;
    uint32_t reserved_0c;
    size_t count;
    const void* data;
};
static_assert(sizeof(MetadataEntry) == 32);
static_assert(offsetof(MetadataEntry, type) == 8);
static_assert(offsetof(MetadataEntry, count) == 16);
static_assert(offsetof(MetadataEntry, data) == 24);
class MiMetadata {
public:
    MetadataEntry find(const char*) const;
    MetadataEntry find(unsigned int) const;
};
