# syntax: proto2
using Compat
using ProtoBuf
import ProtoBuf.meta
import Base: hash, isequal, ==
using ..common

struct __enum_Status <: ProtoEnum
    SUCCESS::Int32
    ERROR::Int32
    ERROR_CHECKSUM::Int32
    ERROR_INVALID::Int32
    ERROR_EXISTS::Int32
    ERROR_ACCESS_TOKEN::Int32
    CHECKSUM_OK::Int32
    ERROR_UNSUPPORTED::Int32
    OOB_RESTART::Int32
    OOB_RESERVED1::Int32
    OOB_RESERVED2::Int32
    OOB_RESERVED3::Int32
    IN_PROGRESS::Int32
    __enum_Status() = new(0,1,2,3,4,5,6,7,8,9,10,11,12)
end #struct __enum_Status
const Status = __enum_Status()

struct __enum_ShortCircuitFdResponse <: ProtoEnum
    DO_NOT_USE_RECEIPT_VERIFICATION::Int32
    USE_RECEIPT_VERIFICATION::Int32
    __enum_ShortCircuitFdResponse() = new(0,1)
end #struct __enum_ShortCircuitFdResponse
const ShortCircuitFdResponse = __enum_ShortCircuitFdResponse()

struct __enum_DataTransferEncryptorMessageProto_DataTransferEncryptorStatus <: ProtoEnum
    SUCCESS::Int32
    ERROR_UNKNOWN_KEY::Int32
    ERROR::Int32
    __enum_DataTransferEncryptorMessageProto_DataTransferEncryptorStatus() = new(0,1,2)
end #struct __enum_DataTransferEncryptorMessageProto_DataTransferEncryptorStatus
const DataTransferEncryptorMessageProto_DataTransferEncryptorStatus = __enum_DataTransferEncryptorMessageProto_DataTransferEncryptorStatus()

mutable struct DataTransferEncryptorMessageProto <: ProtoType
    status::Int32
    payload::Array{UInt8,1}
    message::AbstractString
    cipherOption::Vector{CipherOptionProto}
    DataTransferEncryptorMessageProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct DataTransferEncryptorMessageProto
const __req_DataTransferEncryptorMessageProto = Symbol[:status]
meta(t::Type{DataTransferEncryptorMessageProto}) = meta(t, __req_DataTransferEncryptorMessageProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::DataTransferEncryptorMessageProto) = ProtoBuf.protohash(v)
isequal(v1::DataTransferEncryptorMessageProto, v2::DataTransferEncryptorMessageProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::DataTransferEncryptorMessageProto, v2::DataTransferEncryptorMessageProto) = ProtoBuf.protoeq(v1, v2)

mutable struct DataTransferTraceInfoProto <: ProtoType
    traceId::UInt64
    parentId::UInt64
    DataTransferTraceInfoProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct DataTransferTraceInfoProto
const __req_DataTransferTraceInfoProto = Symbol[:traceId,:parentId]
meta(t::Type{DataTransferTraceInfoProto}) = meta(t, __req_DataTransferTraceInfoProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::DataTransferTraceInfoProto) = ProtoBuf.protohash(v)
isequal(v1::DataTransferTraceInfoProto, v2::DataTransferTraceInfoProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::DataTransferTraceInfoProto, v2::DataTransferTraceInfoProto) = ProtoBuf.protoeq(v1, v2)

mutable struct BaseHeaderProto <: ProtoType
    block::ExtendedBlockProto
    token::TokenProto
    traceInfo::DataTransferTraceInfoProto
    BaseHeaderProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct BaseHeaderProto
const __req_BaseHeaderProto = Symbol[:block]
meta(t::Type{BaseHeaderProto}) = meta(t, __req_BaseHeaderProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::BaseHeaderProto) = ProtoBuf.protohash(v)
isequal(v1::BaseHeaderProto, v2::BaseHeaderProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::BaseHeaderProto, v2::BaseHeaderProto) = ProtoBuf.protoeq(v1, v2)

mutable struct ClientOperationHeaderProto <: ProtoType
    baseHeader::BaseHeaderProto
    clientName::AbstractString
    ClientOperationHeaderProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ClientOperationHeaderProto
const __req_ClientOperationHeaderProto = Symbol[:baseHeader,:clientName]
meta(t::Type{ClientOperationHeaderProto}) = meta(t, __req_ClientOperationHeaderProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::ClientOperationHeaderProto) = ProtoBuf.protohash(v)
isequal(v1::ClientOperationHeaderProto, v2::ClientOperationHeaderProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::ClientOperationHeaderProto, v2::ClientOperationHeaderProto) = ProtoBuf.protoeq(v1, v2)

mutable struct CachingStrategyProto <: ProtoType
    dropBehind::Bool
    readahead::Int64
    CachingStrategyProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct CachingStrategyProto
hash(v::CachingStrategyProto) = ProtoBuf.protohash(v)
isequal(v1::CachingStrategyProto, v2::CachingStrategyProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::CachingStrategyProto, v2::CachingStrategyProto) = ProtoBuf.protoeq(v1, v2)

mutable struct OpReadBlockProto <: ProtoType
    header::ClientOperationHeaderProto
    offset::UInt64
    len::UInt64
    sendChecksums::Bool
    cachingStrategy::CachingStrategyProto
    OpReadBlockProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct OpReadBlockProto
const __req_OpReadBlockProto = Symbol[:header,:offset,:len]
const __val_OpReadBlockProto = Dict(:sendChecksums => true)
meta(t::Type{OpReadBlockProto}) = meta(t, __req_OpReadBlockProto, ProtoBuf.DEF_FNUM, __val_OpReadBlockProto, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::OpReadBlockProto) = ProtoBuf.protohash(v)
isequal(v1::OpReadBlockProto, v2::OpReadBlockProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::OpReadBlockProto, v2::OpReadBlockProto) = ProtoBuf.protoeq(v1, v2)

mutable struct ChecksumProto <: ProtoType
    _type::Int32
    bytesPerChecksum::UInt32
    ChecksumProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ChecksumProto
const __req_ChecksumProto = Symbol[:_type,:bytesPerChecksum]
meta(t::Type{ChecksumProto}) = meta(t, __req_ChecksumProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::ChecksumProto) = ProtoBuf.protohash(v)
isequal(v1::ChecksumProto, v2::ChecksumProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::ChecksumProto, v2::ChecksumProto) = ProtoBuf.protoeq(v1, v2)

struct __enum_OpWriteBlockProto_BlockConstructionStage <: ProtoEnum
    PIPELINE_SETUP_APPEND::Int32
    PIPELINE_SETUP_APPEND_RECOVERY::Int32
    DATA_STREAMING::Int32
    PIPELINE_SETUP_STREAMING_RECOVERY::Int32
    PIPELINE_CLOSE::Int32
    PIPELINE_CLOSE_RECOVERY::Int32
    PIPELINE_SETUP_CREATE::Int32
    TRANSFER_RBW::Int32
    TRANSFER_FINALIZED::Int32
    __enum_OpWriteBlockProto_BlockConstructionStage() = new(0,1,2,3,4,5,6,7,8)
end #struct __enum_OpWriteBlockProto_BlockConstructionStage
const OpWriteBlockProto_BlockConstructionStage = __enum_OpWriteBlockProto_BlockConstructionStage()

mutable struct OpWriteBlockProto <: ProtoType
    header::ClientOperationHeaderProto
    targets::Vector{DatanodeInfoProto}
    source::DatanodeInfoProto
    stage::Int32
    pipelineSize::UInt32
    minBytesRcvd::UInt64
    maxBytesRcvd::UInt64
    latestGenerationStamp::UInt64
    requestedChecksum::ChecksumProto
    cachingStrategy::CachingStrategyProto
    storageType::Int32
    targetStorageTypes::Vector{Int32}
    allowLazyPersist::Bool
    pinning::Bool
    targetPinnings::Vector{Bool}
    OpWriteBlockProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct OpWriteBlockProto
const __req_OpWriteBlockProto = Symbol[:header,:stage,:pipelineSize,:minBytesRcvd,:maxBytesRcvd,:latestGenerationStamp,:requestedChecksum]
const __val_OpWriteBlockProto = Dict(:storageType => StorageTypeProto.DISK, :allowLazyPersist => false, :pinning => false)
meta(t::Type{OpWriteBlockProto}) = meta(t, __req_OpWriteBlockProto, ProtoBuf.DEF_FNUM, __val_OpWriteBlockProto, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::OpWriteBlockProto) = ProtoBuf.protohash(v)
isequal(v1::OpWriteBlockProto, v2::OpWriteBlockProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::OpWriteBlockProto, v2::OpWriteBlockProto) = ProtoBuf.protoeq(v1, v2)

mutable struct OpTransferBlockProto <: ProtoType
    header::ClientOperationHeaderProto
    targets::Vector{DatanodeInfoProto}
    targetStorageTypes::Vector{Int32}
    OpTransferBlockProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct OpTransferBlockProto
const __req_OpTransferBlockProto = Symbol[:header]
meta(t::Type{OpTransferBlockProto}) = meta(t, __req_OpTransferBlockProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::OpTransferBlockProto) = ProtoBuf.protohash(v)
isequal(v1::OpTransferBlockProto, v2::OpTransferBlockProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::OpTransferBlockProto, v2::OpTransferBlockProto) = ProtoBuf.protoeq(v1, v2)

mutable struct OpReplaceBlockProto <: ProtoType
    header::BaseHeaderProto
    delHint::AbstractString
    source::DatanodeInfoProto
    storageType::Int32
    OpReplaceBlockProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct OpReplaceBlockProto
const __req_OpReplaceBlockProto = Symbol[:header,:delHint,:source]
const __val_OpReplaceBlockProto = Dict(:storageType => StorageTypeProto.DISK)
meta(t::Type{OpReplaceBlockProto}) = meta(t, __req_OpReplaceBlockProto, ProtoBuf.DEF_FNUM, __val_OpReplaceBlockProto, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::OpReplaceBlockProto) = ProtoBuf.protohash(v)
isequal(v1::OpReplaceBlockProto, v2::OpReplaceBlockProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::OpReplaceBlockProto, v2::OpReplaceBlockProto) = ProtoBuf.protoeq(v1, v2)

mutable struct OpCopyBlockProto <: ProtoType
    header::BaseHeaderProto
    OpCopyBlockProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct OpCopyBlockProto
const __req_OpCopyBlockProto = Symbol[:header]
meta(t::Type{OpCopyBlockProto}) = meta(t, __req_OpCopyBlockProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::OpCopyBlockProto) = ProtoBuf.protohash(v)
isequal(v1::OpCopyBlockProto, v2::OpCopyBlockProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::OpCopyBlockProto, v2::OpCopyBlockProto) = ProtoBuf.protoeq(v1, v2)

mutable struct OpBlockChecksumProto <: ProtoType
    header::BaseHeaderProto
    OpBlockChecksumProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct OpBlockChecksumProto
const __req_OpBlockChecksumProto = Symbol[:header]
meta(t::Type{OpBlockChecksumProto}) = meta(t, __req_OpBlockChecksumProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::OpBlockChecksumProto) = ProtoBuf.protohash(v)
isequal(v1::OpBlockChecksumProto, v2::OpBlockChecksumProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::OpBlockChecksumProto, v2::OpBlockChecksumProto) = ProtoBuf.protoeq(v1, v2)

mutable struct ShortCircuitShmIdProto <: ProtoType
    hi::Int64
    lo::Int64
    ShortCircuitShmIdProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ShortCircuitShmIdProto
const __req_ShortCircuitShmIdProto = Symbol[:hi,:lo]
meta(t::Type{ShortCircuitShmIdProto}) = meta(t, __req_ShortCircuitShmIdProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::ShortCircuitShmIdProto) = ProtoBuf.protohash(v)
isequal(v1::ShortCircuitShmIdProto, v2::ShortCircuitShmIdProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::ShortCircuitShmIdProto, v2::ShortCircuitShmIdProto) = ProtoBuf.protoeq(v1, v2)

mutable struct ShortCircuitShmSlotProto <: ProtoType
    shmId::ShortCircuitShmIdProto
    slotIdx::Int32
    ShortCircuitShmSlotProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ShortCircuitShmSlotProto
const __req_ShortCircuitShmSlotProto = Symbol[:shmId,:slotIdx]
meta(t::Type{ShortCircuitShmSlotProto}) = meta(t, __req_ShortCircuitShmSlotProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::ShortCircuitShmSlotProto) = ProtoBuf.protohash(v)
isequal(v1::ShortCircuitShmSlotProto, v2::ShortCircuitShmSlotProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::ShortCircuitShmSlotProto, v2::ShortCircuitShmSlotProto) = ProtoBuf.protoeq(v1, v2)

mutable struct OpRequestShortCircuitAccessProto <: ProtoType
    header::BaseHeaderProto
    maxVersion::UInt32
    slotId::ShortCircuitShmSlotProto
    supportsReceiptVerification::Bool
    OpRequestShortCircuitAccessProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct OpRequestShortCircuitAccessProto
const __req_OpRequestShortCircuitAccessProto = Symbol[:header,:maxVersion]
const __val_OpRequestShortCircuitAccessProto = Dict(:supportsReceiptVerification => false)
meta(t::Type{OpRequestShortCircuitAccessProto}) = meta(t, __req_OpRequestShortCircuitAccessProto, ProtoBuf.DEF_FNUM, __val_OpRequestShortCircuitAccessProto, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::OpRequestShortCircuitAccessProto) = ProtoBuf.protohash(v)
isequal(v1::OpRequestShortCircuitAccessProto, v2::OpRequestShortCircuitAccessProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::OpRequestShortCircuitAccessProto, v2::OpRequestShortCircuitAccessProto) = ProtoBuf.protoeq(v1, v2)

mutable struct ReleaseShortCircuitAccessRequestProto <: ProtoType
    slotId::ShortCircuitShmSlotProto
    traceInfo::DataTransferTraceInfoProto
    ReleaseShortCircuitAccessRequestProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ReleaseShortCircuitAccessRequestProto
const __req_ReleaseShortCircuitAccessRequestProto = Symbol[:slotId]
meta(t::Type{ReleaseShortCircuitAccessRequestProto}) = meta(t, __req_ReleaseShortCircuitAccessRequestProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::ReleaseShortCircuitAccessRequestProto) = ProtoBuf.protohash(v)
isequal(v1::ReleaseShortCircuitAccessRequestProto, v2::ReleaseShortCircuitAccessRequestProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::ReleaseShortCircuitAccessRequestProto, v2::ReleaseShortCircuitAccessRequestProto) = ProtoBuf.protoeq(v1, v2)

mutable struct ReleaseShortCircuitAccessResponseProto <: ProtoType
    status::Int32
    error::AbstractString
    ReleaseShortCircuitAccessResponseProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ReleaseShortCircuitAccessResponseProto
const __req_ReleaseShortCircuitAccessResponseProto = Symbol[:status]
meta(t::Type{ReleaseShortCircuitAccessResponseProto}) = meta(t, __req_ReleaseShortCircuitAccessResponseProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::ReleaseShortCircuitAccessResponseProto) = ProtoBuf.protohash(v)
isequal(v1::ReleaseShortCircuitAccessResponseProto, v2::ReleaseShortCircuitAccessResponseProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::ReleaseShortCircuitAccessResponseProto, v2::ReleaseShortCircuitAccessResponseProto) = ProtoBuf.protoeq(v1, v2)

mutable struct ShortCircuitShmRequestProto <: ProtoType
    clientName::AbstractString
    traceInfo::DataTransferTraceInfoProto
    ShortCircuitShmRequestProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ShortCircuitShmRequestProto
const __req_ShortCircuitShmRequestProto = Symbol[:clientName]
meta(t::Type{ShortCircuitShmRequestProto}) = meta(t, __req_ShortCircuitShmRequestProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::ShortCircuitShmRequestProto) = ProtoBuf.protohash(v)
isequal(v1::ShortCircuitShmRequestProto, v2::ShortCircuitShmRequestProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::ShortCircuitShmRequestProto, v2::ShortCircuitShmRequestProto) = ProtoBuf.protoeq(v1, v2)

mutable struct ShortCircuitShmResponseProto <: ProtoType
    status::Int32
    error::AbstractString
    id::ShortCircuitShmIdProto
    ShortCircuitShmResponseProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ShortCircuitShmResponseProto
const __req_ShortCircuitShmResponseProto = Symbol[:status]
meta(t::Type{ShortCircuitShmResponseProto}) = meta(t, __req_ShortCircuitShmResponseProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::ShortCircuitShmResponseProto) = ProtoBuf.protohash(v)
isequal(v1::ShortCircuitShmResponseProto, v2::ShortCircuitShmResponseProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::ShortCircuitShmResponseProto, v2::ShortCircuitShmResponseProto) = ProtoBuf.protoeq(v1, v2)

mutable struct PacketHeaderProto <: ProtoType
    offsetInBlock::Int64
    seqno::Int64
    lastPacketInBlock::Bool
    dataLen::Int32
    syncBlock::Bool
    PacketHeaderProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct PacketHeaderProto
const __req_PacketHeaderProto = Symbol[:offsetInBlock,:seqno,:lastPacketInBlock,:dataLen]
const __val_PacketHeaderProto = Dict(:syncBlock => false)
const __wtype_PacketHeaderProto = Dict(:offsetInBlock => :sfixed64, :seqno => :sfixed64, :dataLen => :sfixed32)
meta(t::Type{PacketHeaderProto}) = meta(t, __req_PacketHeaderProto, ProtoBuf.DEF_FNUM, __val_PacketHeaderProto, true, ProtoBuf.DEF_PACK, __wtype_PacketHeaderProto, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::PacketHeaderProto) = ProtoBuf.protohash(v)
isequal(v1::PacketHeaderProto, v2::PacketHeaderProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::PacketHeaderProto, v2::PacketHeaderProto) = ProtoBuf.protoeq(v1, v2)

mutable struct PipelineAckProto <: ProtoType
    seqno::Int64
    reply::Vector{Int32}
    downstreamAckTimeNanos::UInt64
    flag::Vector{UInt32}
    PipelineAckProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct PipelineAckProto
const __req_PipelineAckProto = Symbol[:seqno]
const __val_PipelineAckProto = Dict(:downstreamAckTimeNanos => 0)
const __pack_PipelineAckProto = Symbol[:flag]
const __wtype_PipelineAckProto = Dict(:seqno => :sint64)
meta(t::Type{PipelineAckProto}) = meta(t, __req_PipelineAckProto, ProtoBuf.DEF_FNUM, __val_PipelineAckProto, true, __pack_PipelineAckProto, __wtype_PipelineAckProto, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::PipelineAckProto) = ProtoBuf.protohash(v)
isequal(v1::PipelineAckProto, v2::PipelineAckProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::PipelineAckProto, v2::PipelineAckProto) = ProtoBuf.protoeq(v1, v2)

mutable struct ReadOpChecksumInfoProto <: ProtoType
    checksum::ChecksumProto
    chunkOffset::UInt64
    ReadOpChecksumInfoProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ReadOpChecksumInfoProto
const __req_ReadOpChecksumInfoProto = Symbol[:checksum,:chunkOffset]
meta(t::Type{ReadOpChecksumInfoProto}) = meta(t, __req_ReadOpChecksumInfoProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::ReadOpChecksumInfoProto) = ProtoBuf.protohash(v)
isequal(v1::ReadOpChecksumInfoProto, v2::ReadOpChecksumInfoProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::ReadOpChecksumInfoProto, v2::ReadOpChecksumInfoProto) = ProtoBuf.protoeq(v1, v2)

mutable struct ClientReadStatusProto <: ProtoType
    status::Int32
    ClientReadStatusProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ClientReadStatusProto
const __req_ClientReadStatusProto = Symbol[:status]
meta(t::Type{ClientReadStatusProto}) = meta(t, __req_ClientReadStatusProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::ClientReadStatusProto) = ProtoBuf.protohash(v)
isequal(v1::ClientReadStatusProto, v2::ClientReadStatusProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::ClientReadStatusProto, v2::ClientReadStatusProto) = ProtoBuf.protoeq(v1, v2)

mutable struct DNTransferAckProto <: ProtoType
    status::Int32
    DNTransferAckProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct DNTransferAckProto
const __req_DNTransferAckProto = Symbol[:status]
meta(t::Type{DNTransferAckProto}) = meta(t, __req_DNTransferAckProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::DNTransferAckProto) = ProtoBuf.protohash(v)
isequal(v1::DNTransferAckProto, v2::DNTransferAckProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::DNTransferAckProto, v2::DNTransferAckProto) = ProtoBuf.protoeq(v1, v2)

mutable struct OpBlockChecksumResponseProto <: ProtoType
    bytesPerCrc::UInt32
    crcPerBlock::UInt64
    md5::Array{UInt8,1}
    crcType::Int32
    OpBlockChecksumResponseProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct OpBlockChecksumResponseProto
const __req_OpBlockChecksumResponseProto = Symbol[:bytesPerCrc,:crcPerBlock,:md5]
meta(t::Type{OpBlockChecksumResponseProto}) = meta(t, __req_OpBlockChecksumResponseProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::OpBlockChecksumResponseProto) = ProtoBuf.protohash(v)
isequal(v1::OpBlockChecksumResponseProto, v2::OpBlockChecksumResponseProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::OpBlockChecksumResponseProto, v2::OpBlockChecksumResponseProto) = ProtoBuf.protoeq(v1, v2)

mutable struct BlockOpResponseProto <: ProtoType
    status::Int32
    firstBadLink::AbstractString
    checksumResponse::OpBlockChecksumResponseProto
    readOpChecksumInfo::ReadOpChecksumInfoProto
    message::AbstractString
    shortCircuitAccessVersion::UInt32
    BlockOpResponseProto(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct BlockOpResponseProto
const __req_BlockOpResponseProto = Symbol[:status]
meta(t::Type{BlockOpResponseProto}) = meta(t, __req_BlockOpResponseProto, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)
hash(v::BlockOpResponseProto) = ProtoBuf.protohash(v)
isequal(v1::BlockOpResponseProto, v2::BlockOpResponseProto) = ProtoBuf.protoisequal(v1, v2)
==(v1::BlockOpResponseProto, v2::BlockOpResponseProto) = ProtoBuf.protoeq(v1, v2)

export Status, ShortCircuitFdResponse, DataTransferEncryptorMessageProto_DataTransferEncryptorStatus, DataTransferEncryptorMessageProto, BaseHeaderProto, DataTransferTraceInfoProto, ClientOperationHeaderProto, CachingStrategyProto, OpReadBlockProto, ChecksumProto, OpWriteBlockProto_BlockConstructionStage, OpWriteBlockProto, OpTransferBlockProto, OpReplaceBlockProto, OpCopyBlockProto, OpBlockChecksumProto, ShortCircuitShmIdProto, ShortCircuitShmSlotProto, OpRequestShortCircuitAccessProto, ReleaseShortCircuitAccessRequestProto, ReleaseShortCircuitAccessResponseProto, ShortCircuitShmRequestProto, ShortCircuitShmResponseProto, PacketHeaderProto, PipelineAckProto, ReadOpChecksumInfoProto, BlockOpResponseProto, ClientReadStatusProto, DNTransferAckProto, OpBlockChecksumResponseProto
