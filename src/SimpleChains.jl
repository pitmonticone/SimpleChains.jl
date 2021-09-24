module SimpleChains

# using ChainRules, ChainRulesCore, NNlibCPU
using UnPack, VectorizationBase, ArrayInterface, Polyester, SLEEFPirates, StrideArraysCore, Static
using ArrayInterface: size, axes, StrideIndex, contiguous_axis, stride_rank, static_length, indices
using SIMDTypes: Bit
using VectorizationBase: align, static_sizeof, relu, stridedpointer, AbstractSIMD
using LayoutPointers: bytestrideindex
using IfElse: ifelse
import ChainRulesCore
import ForwardDiff

using LoopVectorization
# macro turbo(ex); esc(ex); end

export SimpleChain, TurboDense, SquaredLoss, Dropout, relu, static, StrideArray, valgrad!, valgrad,
  NoPenalty, L1Penalty, L2Penalty, FrontLastPenalty

include("simple_chain.jl")
include("dense.jl")
include("dropout.jl")
include("loss.jl")
include("penalty.jl")
include("chain_rules.jl")

end
